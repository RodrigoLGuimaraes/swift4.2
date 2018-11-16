//: [Previous](@previous)

/*:
 Agora vetores(Arrays) podem ser embaralhados facilmente. Se você tinha um vetor(Array) e quisesse embaralhar a ordem dos itens no Swift <= 4 você mesmo teria que codificar um algoritmo pra fazer isso. Agora toma apenas uma linha de código:
 */
//O método shuffled retorna uma cópia embaralhada do array
[1,2,3,4].shuffled()

var numeros = [1,2,3,4,5,6]
//O método shuffle(sem o D) modifica o array atual e não retorna nada
numeros.shuffle()

/*:
 Já tinhamos métodos como o map e o filter em arrays. Agora temos também o removeAll. Ele não faz nada a mais do que o filter, mas deixa o código mais claro dependendo do caso e usa a memória de forma mais eficiente. Se quiséssemos tirar todos os elementos vazios de um array:
 */

var palavras = ["minha", "", "casa", "", "amarela"]
palavras.removeAll { $0.isEmpty }
palavras

/*:
 Além disso temos um novo operador que checa todos os itens de um vetor e retorna verdadeiro somente se todos conformarem com a condição.
 */
extension String {
    func primeiraLetraEMaiuscula() -> Bool {
        guard let primeiroCaractere = self.first else {
            return false
        }
        
        return String(primeiroCaractere).lowercased() != String(primeiroCaractere)
    }
}

var paises = ["Brasil", "Canadá", "EUA"]

paises.allSatisfy { $0.primeiraLetraEMaiuscula() }

paises.append("china")

paises.allSatisfy { $0.primeiraLetraEMaiuscula() }

//: [Next](@next)
