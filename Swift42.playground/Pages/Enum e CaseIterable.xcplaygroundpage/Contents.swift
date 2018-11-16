//: [Assunto Anterior](@previous)

/*:
 # Enums e o protocolo CaseIterable
 
 Fazer com que um enum conforme com o protocolo ***CaseIterable*** cria automaticamente um array ***allCases*** dentro desse enum com todos os cases.
 */
enum Carros: CaseIterable {
    case gol
    case fox
    case polo
    case parati
    case passat
}

//Todos os cases vão aparecer nesse array
Carros.allCases

//E dá até pra fazer um loop percorrendo os cases
for carro in Carros.allCases {
    print("\(carro) azul")
}

/*: Tem alguns casos que o CaseIterable não vai conseguir criar essa propriedade sozinho, que é notadamente quanto se tem um associatedType dentro do protocolo ou quando algum case não está disponível. Nesse caso você pode criar você mesmo, como no exemplo abaixo:
 */

enum Comidas: CaseIterable {
    static var allCases: [Comidas] {
        return [.macarrao, .carne, .sushi]
    }
    
    @available(*, unavailable)
    case pizza
    case macarrao
    case carne
    case sushi
}

/*:
 Funciona ate mesmo quando os cases do enum mapeiam para algum rawValue
 */

enum Numeros: Int, CaseIterable {
    case um = 1
    case dois
    case tres
}

for numero in Numeros.allCases {
    print(numero.rawValue)
}

//: [Próximo assunto](@next)
