<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ACESSO RESTRITO</title>
<style>
*{margin:0;padding:0;}
body{background:#001;color:#0f0;font-family:monospace;font-size:14px;padding:20px;line-height:1.6;}
.vermelho{color:#f30;}
.amarelo{color:#ff0;}
.azul{color:#0cf;}
.piscando{animation:piscar .8s infinite;}
@keyframes piscar{50%{opacity:0;}}
.barra{width:100%;height:20px;background:#111;border:1px solid #0f0;margin:10px 0;}
.preenchimento{height:100%;background:#0f0;width:0%;transition:width .3s;}
</style>
</head>
<body>

<div id="tela"></div>
<div class="barra"><div id="bar" class="preenchimento"></div></div>
<p class="piscando">_</p>

<script>
const linhas = [
"[SISTEMA DE MONITORAMENTO — ACESSO INDIRETO]",
"==============================================",
"",
"CONECTANDO AO SERVIDOR PRINCIPAL...",
"IP ALVO: 200.***.***.*** — BRASÍLIA/DF",
"ROTA: RIO DE JANEIRO → SÃO PAULO → BRASÍLIA",
"",
"<span class='amarelo'>⚠ FIREWALL GOVERNAMENTAL DETECTADA</span>",
"ANALISANDO PROTOCOLO DE SEGURANÇA...",
"INJETANDO CÓDIGO DE DESVIO... OK",
"CRIPTOGRAFIA QUEBRADA: 256-bit → ACESSO",
"",
"<span class='azul'>✅ CONEXÃO ESTABELECIDA — CANAL SEGURO</span>",
"",
"ACESSANDO BANCO DE DADOS...",
" — REGISTROS CIDADÃOS: 98%",
" — DADOS FISCAIS: 76%",
" — ARQUIVOS CONFIDENCIAIS: 100%",
"",
"<span class='vermelho'>⚠ ATENÇÃO: DADOS SENSÍVEIS CARREGADOS</span>",
"",
"EXTRAÍNDO ARQUIVOS...",
"PASTA: /secret/relatorios/...",
"ARQUIVO: 'dados_oficiais_2026.zip' — 2.4 GB",
"",
"<span class='amarelo'>SALVANDO CÓPIA NO DISCO LOCAL...</span>",
"",
"<span class='azul'>✅ TRANSFERÊNCIA CONCLUÍDA</span>",
"<span class='vermelho'>⚠ DESCONECTANDO PARA EVITAR RASTREAMENTO...</span>",
"",
"CONEXÃO ENCERRADA — RASTRO APAGADO ✅",
"",
"<span class='piscando'>OPERAÇÃO CONCLUÍDA</span>"
];

let i=0, porc=0;
function escrever(){
    if(i<linhas.length){
        document.getElementById('tela').innerHTML += linhas[i]+"<br>";
        i++;
        porc = Math.min(100, i*5);
        document.getElementById('bar').style.width = porc+"%";
        setTimeout(escrever, 250 + Math.random()*350);
    }
}
escrever();
</script>
</body>
</html>
  
