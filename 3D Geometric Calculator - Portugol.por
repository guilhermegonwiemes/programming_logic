programa {
  inclua biblioteca Matematica
  inteiro escolha1 = 0
  real PI = 3.141592653589793
  funcao inicio() {
  enquanto(escolha1 < 1 ou escolha1 > 4){
    escreva("=== Escolha a Forma Espacial ===")
    escreva("\n (1) Cubo")
    escreva("\n (2) Paralelepípedo")
    escreva("\n (3) Cilindro")
    escreva("\n (4) Esfera\n\n")
      leia(escolha1)
    se(escolha1 < 1 ou escolha1 > 4){
      escreva("\nOpção inválida! Tente novamente.\n\n")
    }
        }
        se(escolha1 == 1){
          volume_area_perimetro()
        }senao se(escolha1 ==2){
          volume_area_perimetro()
        }senao se(escolha1 == 3){
          volume_area_perimetro()
        }senao{
          volume_area_perimetro()
        }

    }

  funcao volume_area_perimetro() {
        inteiro ar_per = 0
    enquanto(ar_per < 1 ou ar_per > 3){
        escreva("Volume, Área ou Perímetro?\n")
        escreva("\n (1) Volume\n")
        escreva(" (2) Área\n")
        escreva(" (3) Perímetro\n\n")
        leia(ar_per)
        se(ar_per < 1 ou ar_per > 3){
            escreva("\nOpção inválida! Tente novamente.\n\n")
        }
    }
      se(ar_per == 1){
        /*Escolha de forma espacial pelo algorítmo */
          se(escolha1 == 1){
            volume_cubo()
          }senao se(escolha1 ==2){
            volume_paralelepipedo()
          }senao se(escolha1 == 3){
            volume_cilindro()
          }senao se(escolha1 == 4){
            volume_esfera()
          }
      }senao se(ar_per == 2){
        /*Escolha de forma espacial pelo algorítmo */
          se(escolha1 == 1){
            area_cubo()
          }senao se(escolha1 ==2){
            area_paralelepipedo()
          }senao se(escolha1 == 3){
            area_cilindro()
          }senao se(escolha1 == 4){
            area_esfera()
          }
      }senao se(ar_per == 3){
        /*Escolha de forma espacial pelo algorítmo */
                  se(escolha1 == 1){
            perimetro_cubo()
          }senao se(escolha1 ==2){
            perimetro_paralelepipedo()
          }senao se(escolha1 == 3){
            perimetro_cilindro()
          }senao se(escolha1 == 4){
            perimetro_esfera()
          }
      }
  }

  funcao volume_cubo() {
    real reta
    real volume
    escreva("\n=== Volume Cubo ===\n")
    escreva("\nInsira o tamanho da aresta: ")
      leia(reta)
    volume = reta*reta*reta
    escreva("\n\nO volume do cubo é: ",volume, " Unidades de Medida³")
  }

    funcao volume_paralelepipedo() {
    real largura
    real comprimento
    real altura
    real volume
    escreva("\n=== Volume Paralelepípedo ===\n")
    escreva("\nInsira a Largura: ")
      leia(largura)
    escreva("\nInsira o Comprimento: ")
      leia(comprimento)
    escreva("\nInsira a Altura: ")
      leia(altura)
    volume = largura*comprimento*altura
    escreva("\n\nO volume do paralelepípedo é: ",volume, " Unidades de Medida³")
  }

    funcao volume_cilindro() {
    real raio
    real altura
    real volume
    escreva("\n=== Volume Cilindro ===\n")
    escreva("\nInsira o Raio: ")
      leia(raio)
    escreva("\nInsira a Altura: ")
      leia(altura)
    volume = PI*(raio*raio)*altura
    escreva("\n\nO volume do cilindro é: ",volume, " Unidades de Medida³")
  }

      funcao volume_esfera() {
    real raio
    real volume
    real multiplicacao
    escreva("\n=== Volume Esfera ===\n")
    escreva("\nInsira o Raio: ")
      leia(raio)
    multiplicacao = (raio*raio*raio)*4*PI
    volume = multiplicacao/3
    escreva("\n\nO volume da esfera é: ",volume, " Unidades de Medida³")
  }

  funcao area_cubo() {
    real reta
    real area
    real pot
    escreva("\n=== Área Cubo ===\n")
    escreva("\nInsira o tamanho da aresta: ")
      leia(reta)
    pot = reta*reta
    area = pot*6
    escreva("\n\nA área do cubo é: ",area, " Unidades de Medida²")
  }

  funcao area_paralelepipedo() {
    real largura
    real comprimento
    real altura
    real comp_larg
    real alt_comp
    real alt_larg
    real area
    escreva("\n=== Área Paralelepípedo ===\n")
    escreva("Insira a Largura: ")
      leia(largura)
    escreva("\nInsira o Comprimento: ")
      leia(comprimento)
    escreva("\nInsira a Altura: ")
      leia(altura)
      comp_larg = comprimento*largura
      alt_comp = altura*comprimento
      alt_larg = altura*largura
      area = (2*comp_larg)+(2*alt_comp)+(2*alt_larg)
      escreva("\n\nA área é: ",area, " Unidades de Medida²")
  }

  funcao area_cilindro() {
    real soma_parenteses
    real mult1
    real raio
    real altura
    real area
    escreva("\n=== Área Cilindro ===\n")
    escreva("\nInsira o raio: ")
      leia(raio)
    escreva("\nInsira a altura: ")
      leia(altura)
    soma_parenteses = altura+raio
    mult1 = soma_parenteses*raio
    area = 2*PI*mult1
    escreva("\n\nA área é: ",area, " Unidades de Medida²")
  }

    funcao area_esfera() {
    real raio
    real area
    real pot
    escreva("\n=== Área Esfera ===\n")
    escreva("\nInsira o Raio: ")
      leia(raio)
    pot = raio*raio
    area = PI*4*pot
    escreva("\n\nA área é: ",area, " Unidades de Medida²")
  }

    funcao perimetro_cubo() {
    real reta
    real perimetro
    escreva("\n=== Perímetro Cubo ===\n")
    escreva("\nInsira o tamanho da aresta\n")
      leia(reta)
      perimetro = 12*reta
    escreva("\nO perímetro do cubo é de: ",perimetro, " Unidades de Medida")
  }

    funcao perimetro_paralelepipedo() {
    real largura
    real comprimento
    real altura
    real perimetro
    escreva("\n=== Perímetro Paralelepípedo ===\n")
    escreva("Insira a Largura: ")
      leia(largura)
    escreva("\nInsira o Comprimento: ")
      leia(comprimento)
    escreva("\nInsira a Altura: ")
      leia(altura)
    perimetro = 4*(largura+comprimento+altura)
    escreva("\n\nO perímetro do paralelepípedo é de: ",perimetro, " Unidades de Medida")
  }

   funcao perimetro_cilindro() {
   real altura
   real raio
   real perimetro
    escreva("\n=== Perímetro Cilindro ===\n")
    escreva("\nInsira o Raio: ")
     leia(raio)
    escreva("\nInsira a Altura: ")
      leia(altura)
    perimetro = 2*(2*PI*raio)+(2*altura)
    escreva("\n\nO perímetro do cilindro é de: ",perimetro, " Unidades de Medida")
  }

    funcao perimetro_esfera() {
      escreva("\n=== Uma esfera não possui Perímetro! ===")
  }
  }

