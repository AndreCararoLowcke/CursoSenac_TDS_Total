// script.js - jQuery
$(function () {

    // utilitário para formatar BRL
    const fmt = n => new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(n || 0);

    const $valor = $('#valor');
    const $erroValor = $('#erro-valor');
    const $painelPix = $('#painel-pix');
    const $painelCartao = $('#painel-cartao');
    const $bandeira = $('#bandeira');
    const $erroCartao = $('#erro-cartao');
    const $parcelas = $('#parcelas');
    const $listaParc = $('#lista-parcelas');
    const $total = $('#total');
    const $btnPagar = $('#btn-pagar');
    const $msgSucesso = $('#msg-sucesso');

    function hideAllPanels() {
        $painelPix.hide();
        $painelCartao.hide();
        $btnPagar.hide();
        $msgSucesso.hide();
    }
    hideAllPanels();
    $total.text(fmt(0));
    $erroValor.text('');
    $erroCartao.text('');

    // converte string "100,50" ou "100.50" em number
    function parseValor(str) {
        if (!str) return NaN;
        str = String(str).trim().replace(/\s/g, '').replace(/\./g, '').replace(',', '.');
        return parseFloat(str);
    }

    // montar opções de parcelas e lista descritiva
    function montarParcelas(valor) {
        $parcelas.empty();
        $listaParc.empty();
        for (let i = 1; i <= 5; i++) {
            let juros = (i <= 3) ? 0 : (i === 4 ? 0.05 : 0.10);
            let total = valor * (1 + juros);
            let cada = total / i;
            let textoOpt = `${i}x de ${fmt(cada)}${juros ? ' (c/ juros)' : ' (s/ juros)'}`;
            $('<option>').val(i).text(textoOpt).appendTo($parcelas);
            $('<span>').text(`${i}x ${fmt(cada)}`).appendTo($listaParc);
        }
        $parcelas.val('1').trigger('change');
    }

    // Ao clicar em Informar dados
    $('#btn-informar').on('click', function () {
        $msgSucesso.hide();
        $erroCartao.text('');
        const raw = $valor.val();
        const valorNum = parseValor(raw);
        if (isNaN(valorNum) || valorNum <= 0) {
            $erroValor.text('O campo valor deve ser preenchido com número maior que zero.');
            hideAllPanels();
            $total.text(fmt(0));
            return;
        }
        $erroValor.text('');
        // qual opção
        const metodo = $('input[name="pagto"]:checked').val();
        hideAllPanels();

        if (metodo === 'pix') {
            const totalPix = valorNum * 0.90; // 10% desconto
            $painelPix.show();
            $total.text(fmt(totalPix));
            $btnPagar.show();
            return;
        }

        // cartao
        if (metodo === 'cartao') {
            $painelCartao.show();
            montarParcelas(valorNum);
            $total.text(fmt(valorNum)); // default 1x
            $btnPagar.show();
            $bandeira.text('');
            $erroCartao.text('');
        }
    });

    // ao digitar o número do cartão, detectar bandeira ou erro
    $('#num-cartao').on('input', function () {
        const raw = $(this).val().replace(/\D/g, ''); // só dígitos
        $bandeira.text('');
        $erroCartao.text('');
        if (raw.length >= 4) {
            const prefix = raw.slice(0, 4);
            if (prefix === '1234') {
                $bandeira.text('💳 VISA'); // você pode trocar por <img>
            } else if (prefix === '4321') {
                $bandeira.text('💳 MASTERCARD');
            } else {
                $erroCartao.text('Número de cartão inválido');
            }
        } else {
            // pouco dígitos — limpa mensagens
            $bandeira.text('');
            $erroCartao.text('');
        }
    });

    // ao mudar as parcelas atualiza Total
    $parcelas.on('change', function () {
        const qtd = parseInt($(this).val(), 10);
        const valorNum = parseValor($valor.val());
        if (isNaN(valorNum) || valorNum <= 0) return;
        let total = valorNum;
        if (qtd === 4) total = valorNum * 1.05;
        if (qtd === 5) total = valorNum * 1.10;
        $total.text(fmt(total));
    });

    // Pagar
    $btnPagar.on('click', function () {
        // apenas mostra sucesso (conforme enunciado)
        hideAllPanels();
        $btnPagar.hide();
        $msgSucesso.text('Pagamento realizado com sucesso!').show();
        // opcional: limpar campos
        // $('#valor').val('');
    });

    // quando o usuário muda a opção de pagamento, escondemos painéis e mensagens (bom UX)
    $('input[name="pagto"]').on('change', function () {
        hideAllPanels();
        $erroValor.text('');
        $erroCartao.text('');
        $total.text(fmt(0));
    });

});
