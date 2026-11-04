# Política de segurança · Security policy

Os apps FeatherWorks abrem arquivos de terceiros e rodam macros em JavaScript (motor
[falcao](https://github.com/feather-works/falcao)). Levamos falhas de segurança a sério.

FeatherWorks apps open third-party files and run JavaScript macros. We take security flaws seriously.

## Como relatar · How to report

**Não abra uma issue pública · Don't open a public issue.** Use o relato privado do GitHub
no repositório do app: aba **Security → Report a vulnerability**
(`https://github.com/feather-works/<app>/security/advisories/new`).

Conte o que encontrou, como reproduzir e, se possível, um arquivo de exemplo **sem dados reais**.
Describe what you found, how to reproduce it and, if possible, a sample file **without real data**.

O que mais interessa · What matters most:

- arquivo (`.fshz`, `.fdoz`, `.fsdz`, `.xlsx`, `.docx`, `.pptx`, `.pdf`…) que trava o app, consome
  memória sem limite ou executa algo ao abrir · a file that crashes the app, eats unbounded memory or runs something on open;
- macro ou script que escapa do interpretador e acessa arquivos, rede ou processos ·
  a macro or script that escapes the interpreter and reaches files, network or processes;
- o canal MCP aceitando pedido de fora da máquina · the MCP channel accepting requests from outside the machine;
- o Launcher instalando um pacote sem conferir o SHA256 · the Launcher installing a package without checking its SHA256.

## Prazos · Timeline

- Confirmação do recebimento em até **3 dias** · Acknowledgement within **3 days**.
- Avaliação inicial em até **7 dias** · Initial assessment within **7 days**.
- A correção sai na versão mais recente de cada app; crédito no aviso, se você quiser ·
  Fixes ship in the latest version of each app; credit in the advisory if you want it.

## Versões com correção · Supported versions

Apenas a versão mais recente de cada app (página de releases do repositório) ·
Only the latest version of each app (the repository's releases page).
