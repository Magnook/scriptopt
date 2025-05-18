# scriptopt
Script de Otimização, que desativa serviços considerados desnecessários no Windows, de forma organizada e comentada. Excepcional para ambientes corporativos.
Recentemente encontrei um script que promete desativar serviços considerados desnecessários no Windows que impactam diretamente no consumo de recursos da máquina.
Decidi revisar e aprimorar esse script, trazendo uma versão mais organizada, segura e comentada. A ideia principal é otimizar o desempenho do sistema, principalmente em máquinas com hardware mais limitado (aquele notebook bomba que você jura que ainda roda um Minecraft), ou que não precisam de determinados recursos (em ambientes corporativos).

Entre os serviços desativados:

- Telemetria (DiagTrack)
- SysMain (antigo Superfetch, que pode causar uso intenso de disco)
- WSearch (Desativar a indexação de arquivos)
- OneDrive Updater
- Xbox Services
- Wallet Service
- FAX
- Limpeza de arquivos temporários
- Desativar a proteção de software (sppsvc) - (Leia com atenção sobre esse)

No script original era citado o serviço sppsvc (Software Protection Service) é responsável pela validação e gerenciamento da ativação do Windows.
Mesmo em sistemas já ativados, desativá-lo pode causar, com o tempo:

- Perda da validação da licença
- Tela preta
- Bloqueio de atualizações
- Watermark de "Ative o Windows"
- Limitações de personalização

Por isso recomendo que este não seja ativado, a menos que seja em algum cenário realmente necessário na visão de algum Analista. Por isso deixei esse desativado no script, mas pode ser alterado por um analista se necessário.

🔴 1. sppsvc (Software Protection Platform)
⚠️ Risco alto!
Responsável pela ativação do Windows
Nunca deve ser desativado, mesmo se o sistema já estiver ativado
Pode gerar tela preta, travar atualizações, e colocar o Windows em modo "não genuíno"

🟡 2. WSearch (Windows Search / Indexação)
⚠️ Risco moderado
Desativá-lo melhora desempenho em HDs mecânicos (menos uso de disco)
Mas piora a busca por arquivos no Explorador
Em ambientes corporativos onde a busca não é prioridade, é seguro desativar

🟢 3. DiagTrack (Telemetria)
Envia dados de uso e diagnóstico para a Microsoft
Desativar melhora a privacidade e reduz consumo de rede e disco
Seguro desativar, principalmente em ambientes onde a telemetria não é necessária

🟢 4. SysMain (antigo Superfetch)
Otimiza a abertura de aplicativos com base no uso
Mas causa uso intenso de disco e memória em máquinas com HD
Em SSDs, o ganho é nulo — seguro desativar

🟢 5. OneDrive Updater
Atualiza o OneDrive em segundo plano
Pode ser desativado se OneDrive não for usado
Sem riscos reais, apenas perde atualizações automáticas do OneDrive

🟢 6. XboxGipSvc e outros serviços do Xbox
Usados para controle de jogos e periféricos Xbox
Desnecessários em ambientes corporativos ou máquinas sem jogos
Seguro desativar

🟢 7. WalletService
Usado para carteira digital do Windows (quase nunca utilizado)
Seguro desativar

🟢 8. Fax
Relacionado ao envio/recebimento de fax (tecnologia ultrapassada)
Seguro desativar
