FROM ruby:3.2.2

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o contêiner
COPY . ./

# Instale as dependências do Ruby
RUN bundle install

# Defina a porta em que o aplicativo Sinatra será executado
EXPOSE 9292

# Comando para iniciar o servidor Sinatra
# CMD ["bundle", "exec", "rackup", "config.ru", "-p", "9292"]