/*:
 # Novo no Swift 4.2
 
 ## Geração de números aleatórios
 
 Antes do Swift 4.2 era possível, mas bem chato, gerar valores aleatórios. Era normalmente necessário usar bibliotecas antigas, como o método arc4random(), e depois ainda ter que converter tipos de dados para ter o tipo que você desejava.
 
 Com o Swift 4.2, foram adicionadas funcionalidades de geração de valores muito mais fáceis e intuitivas de usar, como as seguintes:
 */

//Gerar valor double aleatório de 0 a 100 (incluindo as extremidades)
let zeroAteCem = Double.random(in: 0...100)
//Gerar valor float aleatório de 0 a 50 (incluindo o zero, mas não incluindo o 50)
let zeroAteQuaseCinquenta = Float.random(in: 0..<50)
//Gerar valor inteiro aleatório de 1 a 10(incluindo as extremidades)
let umAteDez = Int.random(in: 0...10)
//Gerar valor booleano (verdadeiro ou falso)
let simOuNao = Bool.random()

//: [Próximo assunto](@next)
