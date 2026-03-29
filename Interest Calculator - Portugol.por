programa {
  inclua biblioteca Matematica
  inteiro tipo = 0

  

  funcao inicio() {
    enquanto(tipo < 1 ou tipo > 2){
    escreva("=== Calculadora Juros ===\n")
    escreva("\nEscolha o tipo de Juros: ")
    escreva("\n[1] Juros Simples")
    escreva("\n[2] Juros Compostos\n\n")
      leia(tipo)
    se(tipo < 1 ou tipo > 2){
      escreva("\nOpção Inválida! Tente novamente.")
    }
    }
    se(tipo == 1){
      simples()
    }senao se(tipo ==2){
      compostos()
    }
    
  }
  funcao simples() {
  real montante
  real capital
  real tempo
  real juros
  real taxa
  inteiro tipo_tempo = 0
  cadeia cadeia_tempo
    enquanto(tipo_tempo < 1 ou tipo_tempo > 2){
    escreva("=== Calculadora de Juros Simples ===\n")
    escreva("\nSua aplicação é em meses ou anos?\n")
    escreva("\n[1] Meses")
    escreva("\n[2] Anos\n\n")
      leia(tipo_tempo)
  se(tipo_tempo == 1){
    cadeia_tempo = "meses"
  }senao se(tipo_tempo == 2){
    cadeia_tempo = "anos"
  }senao{
    escreva("\nOpção Inválida! Tente Novamente.")
  }
}
    escreva("\nInsira o Capital: ")
      leia(capital)
    escreva("\nInsira a Taxa de Juros (somente o número, sem o %): ")
      leia(taxa)
      taxa = taxa/100
    escreva("\nInsira o tempo de aplicação: ")
    leia(tempo)
    juros = capital*taxa*tempo
    montante = capital+juros
    escreva("Após ",tempo," ",cadeia_tempo,", seu montante é de R$",montante,". O juros foi de: R$",juros)

  }

  funcao compostos() {
  real montante
  real capital
  real tempo
  real juros
  real taxa
  real resultado = 1
  inteiro tipo_tempo = 0
  inteiro contador = 0
  cadeia cadeia_tempo
    enquanto(tipo_tempo < 1 ou tipo_tempo > 2){
    escreva("=== Calculadora de Juros Compostos ===\n")
    escreva("\nSua aplicação é em meses ou anos?\n")
    escreva("\n[1] Meses")
    escreva("\n[2] Anos\n\n")
      leia(tipo_tempo)
  se(tipo_tempo == 1){
    cadeia_tempo = "meses"
  }senao se(tipo_tempo == 2){
    cadeia_tempo = "anos"
  }senao{
    escreva("\nOpção Inválida! Tente Novamente.")
  }
}
    escreva("\nInsira o Capital: ")
      leia(capital)
    escreva("\nInsira a Taxa de Juros (somente o número, sem o %): ")
      leia(taxa)
      taxa = taxa/100
    escreva("\nInsira o tempo de aplicação: ")
    leia(tempo)
      taxa = taxa+1
    enquanto(contador < tempo){
      resultado = resultado*taxa
      contador = contador+1
    }
    montante = capital*resultado
    juros = montante - capital

    escreva("Após ",tempo," ",cadeia_tempo,", seu montante é de R$",montante,". O juros foi de: R$",juros)

  }
}
