import UIKit
//importar una biblioteca para que se haga asincrono este playground
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// Url de consulta
let urlBase: URL? = URL(string: "https://itunes.apple.com/search?limit=10&term=Beatles&media=music")

/*
 let itunesURL = URL(string: "https://itunes.apple.com/search?")
let criterios = ["term":"Beatles",  "limit":"10", "media":"music"]
var componentes = URLComponents.init(url: urlBase!, resolvingAgainstBaseURL: true)
componentes?.queryItems = criterios.compactMap({ (llave, valor) -> URLQueryItem? in
    URLQueryItem(name: llave, value: valor)})

let urlBase = itunesURL?.url
print(itunesURL!)
*/
//Recipientes donde se codificará la respuesta del servicio
struct Item: Codable
{
    var artistName: String
    var artworkURL100: String
    var trackName: String
}
struct Items: Codable
{
    var results: [Item]
}
//Pedirle al proveedor de servicio la información
//Singleton

if let url: URL = urlBase
{
    //completionHandler es un closure, si es el último parámetro solo se ponen llaves y se quita el completionHandler
    //completionHandler se va a ejecutar y en cualquier momento va a regresar
    print(url)
    URLSession.shared.dataTask(with: url)
    { (data, respuesta, error) in
        //let decodificador = JSONDecoder()
        if let datos = data
        {
            print(datos)
        }
        else
        {
            print("No llegó data")
        }
    //El resume es para que lo ejecute
    }.resume()
}
else
{
    print("Missing name.")
}
