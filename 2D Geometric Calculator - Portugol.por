programa {
  inclua biblioteca Matematica
  inteiro escolha1 = 0
  real PI = 3.141592653589793
  funcao inicio() {
  enquanto(escolha1 < 1 ou escolha1 > 4){
    escreva("=== Escolha a Figura Plana ===")
    escreva("\n (1) Quadrado")
    escreva("\n (2) Retângulo")
    escreva("\n (3) Círculo")
    escreva("\n (4) Triângulo\n\n")
      leia(escolha1)
    se(escolha1 < 1 ou escolha1 > 4){
      escreva("\nOpção inválida! Tente novamente.\n\n")
    }
        }
        se(escolha1 == 1){
          area_perimetro()
        }senao se(escolha1 ==2){
          area_perimetro()
        }senao se(escolha1 == 3){
          area_perimetro()
        }senao{
          area_perimetro()
        }

    }

  funcao area_perimetro() {
        inteiro ar_per = 0
    enquanto(ar_per < 1 ou ar_per > 2){
        escreva("Área ou Perímetro?\n")
        escreva(" (1) Área\n")
        escreva(" (2) Perímetro\n\n")
        leia(ar_per)
        se(ar_per < 1 ou ar_per > 2){
            escreva("\nOpção inválida! Tente novamente.\n\n")
        }
      }
      se(ar_per == 1){
        /*Escolha de figura plana pelo algorítmo */
          se(escolha1 == 1){
            area_quadrado()
          }senao se(escolha1 ==2){
            area_retangulo()
          }senao se(escolha1 == 3){
            area_circulo()
          }senao se(escolha1 == 4){
            area_triangulo()
          }
      }senao se(ar_per == 2){
        /*Escolha de figura plana pelo algorítmo */
          se(escolha1 == 1){
            perimetro_quadrado()
          }senao se(escolha1 ==2){
            perimetro_retangulo()
          }senao se(escolha1 == 3){
            perimetro_circulo()
          }senao se(escolha1 == 4){
            perimetro_triangulo()
          }
      }
    }

  funcao area_quadrado() {
    real aresta
    real area
    escreva("\n=== Área Quadrado ===\n")
    escreva("\nInsira o tamanho da aresta: ")
      leia(aresta)
    area = aresta*aresta
    escreva("\n\nA área do quadrado é: ",area," Unidades de Medida²")
  }

  funcao area_retangulo() {
    real largura
    real altura
    real area
    escreva("\n=== Área Retângulo ===\n")
    escreva("\nInsira a largura: ")
      leia(largura)
    escreva("\nInsira a altura: ")
      leia(altura)
    area = largura*altura
    escreva("\n\nA área do retângulo é: ",area," Unidades de Medida²")
  }

  funcao area_circulo() {
    real raio
    real area
    escreva("\n=== Área Círculo ===\n")
    escreva("\nInsira o raio: ")
      leia(raio)
    area = PI*(raio*raio)
    escreva("\n\nA área do círculo é: ",area," Unidades de Medida²")
  }

  funcao area_triangulo() {
    real base
    real altura
    real mult
    real area
    escreva("\n=== Área Triângulo ===\n")
    escreva("\nInsira a largura da base: ")
      leia(base)
    escreva("\nInsira a altura: ")
      leia(altura)
    mult = base*altura
    area = mult/2
    escreva("\n\nA área do triângulo é: ",area," Unidades de Medida²")
  }

  funcao perimetro_quadrado() {
    real aresta
    real perimetro
    escreva("\n=== Perímetro Quadrado ===\n")
    escreva("\nInsira o tamanho da aresta: ")
      leia(aresta)
    perimetro = aresta*4
    escreva("\n\nO perímetro do quadrado é: ",perimetro," Unidades de Medida")
  }

  funcao perimetro_retangulo() {
    real largura
    real altura
    real perimetro
    escreva("\n=== Perímetro Retângulo ===\n")
    escreva("\nInsira a largura: ")
      leia(largura)
    escreva("\nInsira a altura: ")
      leia(altura)
    perimetro = (2*altura)+(2*largura)
    escreva("\n\nO perímetro do retângulo é: ",perimetro," Unidades de Medida")
  }

  funcao perimetro_circulo() {
    real raio
    real perimetro
    escreva("\n=== Perímetro Círculo ===\n")
    escreva("\nInsira o raio: ")
      leia(raio)
    perimetro = 2*PI*raio
    escreva("\n\nO perímetro do círculo é: ",perimetro," Unidades de Medida")
  }

  funcao perimetro_triangulo() {
    real lado1
    real lado2
    real lado3
    real perimetro
    escreva("\n=== Perímetro Triângulo ===\n")
    escreva("\nInsira o tamanho do lado 1: ")
      leia(lado1)
    escreva("\nInsira o tamanho do lado 2: ")
      leia(lado2)
    escreva("\nInsira o tamanho do lado 3: ")
      leia(lado3)
    perimetro = lado1+lado2+lado3
    escreva("\n\nO perímetro do triângulo é: ",perimetro," Unidades de Medida")
  }
}
