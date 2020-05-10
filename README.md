# Recuperação de senha
<!-- Requisitos Funcionais -->
**RF**
- O usuário deve poder recuperar sua senha informando o seu e-mail;
- O usuário deve receber um e-mail com instruções de recuperação de senha;
- O usuário deve poder resetar sua senha;
<!-- Requisitos Não Funcionais -->
**RNF**

- Utilizar Mailtrap para testar envios em ambiente de dev;
- Utilizar Amazon SES para envios em produção;
- O envio de e-mail deve acontecer em segundo plano (background job);
<!-- Regras de Negocio -->
**RN**

- O link enviado por email para resetar senha, deve expirar em 2h;
- O usuário precisa confirmar a nova senha ao resetar sua senha;

# Atualização do perfil

**RF**
- O usuario deve poder atualizar seu nome, email e senha;

**RN**
- O usuário nao pode alterar seu email para um email ja utilizado;
- Para atualizar sua senha o usuário deve informar a senha antiga;
- Para atualizar sua senha, o usuário precisa confirmar a nova senha;

# Painel do prestador

**RF**

- O usuário deve poder listar seus agendamentos de um dia específico;
- O prestador deve receber uma notificação sempre que houver um novo agendamento;

**RNF**

- Os agendamentos do prestador do dia devem ser armazenadas em cache;
- As notificações do prestador devem ser armazenas no MongoDB;
- As notificações devem ser enviadas em tempo-real utilizando Socket.io;

**RN**

- A notificação deve ter um status de lida ou não lida para que o prestador possa controlar;

# Agendamento de Serviços
**RF**

- O usuário deve poder listar todos prestadores de serviço cadastrados;
- O usuário deve poder listar os dias de um mês com pelo menos um horário disponível de um prestador;
- O usuário deve poder listar horarios disponiveis em um dia especifico de um prestador;
- O usuário deve poder realizar um novo agendamento com um prestador;
**RNF**

- A listagem de prestadores deve ser armazenada em cache;


**RN**
- Cada agendamento deve durar 1h exatamento;
- Os agendamentos devem estar disponiveis entre 8h às 18h (Primeiro às 8h, último às 17h);
- O usuário não pode agendar em um horario já ocupado;
- O usuário não pode agendar em um horário que já passou;
- O usuário não pode agendar serviços consigo mesmo;
