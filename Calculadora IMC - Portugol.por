programa {
  funcao inicio() {
    real altura
    real peso
    real imc
    escreva("Informe sua altura: ")
      leia(altura)
    escreva("Informe seu peso: ")
      leia(peso)
    imc = peso / (altura * altura)
    se(imc < 18.5){
      escreva("Você está abaixo do peso, seu imc é: ", imc)
    }senao se(imc >= 18.5 e imc <= 25){
      escreva("Você está no peso normal, seu imc é: ", imc)
    }senao se(imc >= 25 e imc <= 30){
      escreva("Você está no sobrepeso, seu imc é: ", imc)
    }senao se(imc > 30){
      escreva("Você está na obesidade, seu imc é: ", imc )
    }
  }
}
