//: [Assunto Anterior](@previous)

/*:
 Esse conceito é muito usado em outras linguagens, principalmente linguages scriptadas, mas na minha visão, se você precisa usar algo como isso, você provavelmente não achou a melhor solução para o seu problema. Por isso, vou cobrir de forma bem breve essa nova funcionalidade.
 
 Agora você pode aceitar chamados para qualquer tipo de propriedade, interceptar o nome dessa proriedade, e então devolver um valor para ela.
 */

//Essa anotação diz que, em runtime, você aceita receber uma propriedade que não está declarada e vai decidir o que fazer com ela.
@dynamicMemberLookup
struct Mercearia {
    //Aqui você está recebendo o nome da propriedade (member) e vai dar como resultado um valor inteiro
    subscript(dynamicMember member: String) -> Int {
        if member.elementsEqual("numeroDePaes") {
            return 10
        }
        
        return 0
    }
    
    //Aqui você está recebendo o nome da propriedade (member) e vai dar como resultado um valor Float
    subscript(dynamicMember member: String) -> Float {
        
        if member.elementsEqual("quilogramasDePresunto") {
            return 5.0
        }
        
        return 0
    }
}

let mercearia = Mercearia()
let numeroDePaes: Int = mercearia.numeroDePaes
let presuntoKg: Float = mercearia.quilogramasDePresunto
let presuntoKgNaoEncontrado: Int = mercearia.quilogramasDePresunto
let naoEncontrado: Int = mercearia.blabla

//Essa linha não compila porque o swift não sabe decidir qual método subscript chamar
//let essaLinhaNaoCompila = mercearia.qualquerCoisa

//: [Próximo assunto](@next)
