# estudo-de-caso-cyclistic
Análise de dados do uso de bicicletas compartilhadas (Membros vs. Casuais) usando SQL e Tableau.

# Estudo de Caso: Cyclistic Bike-Share 🚲

Este repositório contém o meu projeto final do **Certificado Profissional de Análise de Dados do Google**. O objetivo principal foi analisar dados históricos de viagens de uma empresa fictícia de compartilhamento de bicicletas (Cyclistic) para entender como diferentes tipos de clientes utilizam o serviço.

## 📌 A Tarefa de Negócios (Ask)
Entender as diferenças de uso entre **Membros Anuais** e **Usuários Casuais** para fundamentar uma nova estratégia de marketing digital focada na conversão de casuais em assinantes anuais.

## 🛠️ Ferramentas Utilizadas
* **Limpeza e Processamento de Dados:** SQL (Google BigQuery)
* **Visualização e Dashboard:** Tableau Public
* **Fonte dos Dados:** Dados públicos da Motivate International Inc. (últimos 12 meses).

## 🧹 Processamento de Dados (Prepare & Process)
Os dados brutos foram importados para o BigQuery. Utilizei SQL para criar novas métricas essenciais para a análise:
* Cálculo da duração de cada viagem em minutos (`TIMESTAMP_DIFF`).
* Extração do dia da semana a partir da data de início (`EXTRACT DAYOFWEEK`).
*(Os scripts completos de processamento estão disponíveis nos arquivos `.sql` deste repositório).*

## 📊 Análise e Principais Descobertas (Analyze & Share)
A análise exploratória revelou duas divergências fundamentais de comportamento:

1. **Duração das Viagens:** Usuários casuais realizam viagens significativamente mais longas (média de **20,5 minutos**) em comparação com os membros anuais (média de **11,9 minutos**).
2. **Uso por Dia da Semana:** Membros anuais utilizam o serviço de forma consistente durante os dias úteis (deslocamentos rotineiros de trabalho), enquanto usuários casuais apresentam um pico expressivo de uso aos sábados e domingos (uso voltado ao lazer).

🔗 **[Clique aqui para acessar o Dashboard Interativo completo no Tableau Public](https://public.tableau.com/app/profile/fernando.tamura)**

## 💡 Recomendações de Marketing (Act)
Com base nos dados, aqui estão minhas três recomendações para converter usuários casuais em membros anuais:

1. **Plano Anual Focado no Fim de Semana:** Criar um pacote anual que ofereça descontos ou minutos grátis para viagens longas nos fins de semana, apelando diretamente ao lado financeiro dos usuários casuais que já fazem trajetos longos.
2. **Publicidade Digital Baseada em Tempo:** Direcionar anúncios em redes sociais e notificações no aplicativo para as tardes de sexta-feira e manhãs de sábado, capturando a atenção do usuário casual no momento exato de maior propensão de uso.
3. **E-mail Marketing Financeiro:** Utilizar o histórico de viagens para enviar e-mails personalizados mostrando ao usuário casual o quanto ele teria economizado nos seus longos passeios de fim de semana caso já fosse um membro anual.
