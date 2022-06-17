//
//  Animaux.swift
//  Catalogue
//
//  Created by apprenant007 on 10/05/2022.
//

import SwiftUI

var animaux:[String] = ["Chat", "Chien", "Cochon d'Inde","Lapin"]

struct Pet:Identifiable {
    var id = UUID()
    let name: String
    let images: String
    var prix: Double
    var detail: [String: Double]
    var composition: String 
    var note : Int
    var comment: [String]
    let race: String
    
}

class Aliments: ObservableObject{
    
    @Published var aliments = [
        
        // CHIEN
        Pet(name: "Royal Canin Chiots Maxi Puppy 15Kg", images: "RoyalCaninChiotsMaxiPuppy15Kg", prix: 65.54, detail: ["Proteine": 30, "Lipide": 16,"Matière inorganique": 8.2, "Fibre": 2.5],composition: "protéines de volaille déshydratées, farine de maïs, riz, protéines de porc déshydratées*, graisses animales, maïs, gluten de blé*, farine de blé, protéines animales hydrolysées, sels minéraux, pulpe de betterave, gluten de maïs, fibres végétales, huile de soja, huile de poisson, fructo-oligosaccharides, téguments et graines de psyllium, levures hydrolysées (source de mannan-oligosaccharides et de bêta-glucanes) (0,30 %), huile d’algues Schizochytrium sp. (source de DHA), jus de Yucca schidigera, farine de tagète, glucosamine issue de la fermentation, cartilage hydrolysé (source de chondroïtine). " , note: 2, comment: [""], race: "Chien"),
                
                Pet(name: "Edgard Cooper Poulet Chien Adulte 12Kg", images: "EdgardCooperPouletChienAdulte15Kg", prix: 79.99, detail: ["Proteine": 25, "Lipide": 18,"Matière inorganique" : 6.9,"Fibre":4.5],composition: "Poulet : poulet frais 41 %, pommes de terre, pois, protéines de pois, graisse de poulet, graines de lin, sauce à base de poulet, minéraux, huile de poisson, manno-oligosaccharides (MOS), fructo-oligosaccharides (FOS), mangue 0,04 %, myrtilles 0,04 %, pommes 0,04 %, fraises 0,04 %, carottes 0,04 %, tomates 0,04 %, fleurs de calendula, orties, feuilles de mûrier, fenouil, carvi, camomille, mélisse officinale. Mineraux/Vitamine: Manganèse (mg/kg) 7.5, Zinc (mg/kg) 150, Iode (mg/kg) 3.5, Selenium (mg/kg) 0.15, Cuivre (mg/kg) 10, Fer (mg/kg) 75, Vitamine A (UI/kg ) 20000, Vitamine D3 (UI/kg) 2000, Vitamine E (mg/kg) 350", note: 1, comment: [""], race: "Chien"),
                
                //CHAT
                
                Pet(name: "Royal Canin Chaton 10Kg", images: "RoyalCaninChaton10Kg", prix: 74.43, detail: ["Proteine": 36, "Lipide": 18,"Matière inorganique" : 7.8,"Fibre":2.3],composition: "protéines de volaille déshydratées, riz, gluten de blé*, graisses animales, farine de maïs, protéines animales hydrolysées, farine de blé, gluten de maïs, produits de levures, pulpe de betterave, fibres végétales, sels minéraux, huile de soja, huile de poisson, téguments et graines de psyllium, fructo-oligosaccharides, levures hydrolysées (source de mannan-oligosaccharides et de bêta-glucanes) (0,29 %), huile d’algues Schizochytrium sp. (source de DHA), farine de tagète.", note: 2, comment: [""], race: "Chat"),
                
                Pet(name: "Edgard Cooper Poisson Chat 1.75Kg", images: "EdgardCooperPoissonChat1.75Kg", prix: 22.99, detail: ["Proteine": 30, "Lipide": 17,"Matière inorganique" : 10.6,"Fibre":3.0],composition: "Poisson : poisson blanc frais 60 %, patates douces, pois, protéine de pois, huile de saumon, sauce à base de poulet, graine de lin, minéraux, manno-oligosaccharides (MOS), fructo-oligosaccharides (FOS), ortie 0,03 %, camomille 0,03 %, airelles 0,03 %, fenouil 0,03 %, cresson 0,03 %, cataire 0,03 %, glucosamine, sulfate de chondroïtine. Minéraux/Vitamines Taurine (mg/kg) 1300, Zinc (mg/kg) 35, Iode (mg/kg) 2, Selenium (mg/kg) 0.2, Cuivre (mg/kg) 10, Vitamine A (UI/kg ) 17000, Vitamine D3 (UI/kg) 1500, Vitamine E (mg/kg) 150", note: 2, comment: [""], race: "Chat"),
                
                Pet(name: "Orijen Croquettes chat Cat & Kitten 5,4 kg", images: "OrijenCroquetteschatCat&Kitten5,4kg", prix: 22.99, detail: ["Proteine": 30, "Lipide": 17,"Matière inorganique" : 10.6,"Fibre":3.0],composition: "Poisson : poisson blanc frais 60 %, patates douces, pois, protéine de pois, huile de saumon, sauce à base de poulet, graine de lin, minéraux, manno-oligosaccharides (MOS), fructo-oligosaccharides (FOS), ortie 0,03 %, camomille 0,03 %, airelles 0,03 %, fenouil 0,03 %, cresson 0,03 %, cataire 0,03 %, glucosamine, sulfate de chondroïtine. Minéraux/Vitamines Taurine (mg/kg) 1300, Zinc (mg/kg) 35, Iode (mg/kg) 2, Selenium (mg/kg) 0.2, Cuivre (mg/kg) 10, Vitamine A (UI/kg ) 17000, Vitamine D3 (UI/kg) 1500, Vitamine E (mg/kg) 150", note: 5, comment: [""], race: "Chat"),
                
               
                
                //Le Cochon d'Inde
               

                Pet(name: "Versele-Laga Cavia Complete pour cochon d'Inde", images: "VerseleLagaCuniCompleteLapinNain", prix: 10, detail: ["Proteine": 14,"Lipide":3 ,"Fibre": 20,"Matière inorganique": 2], composition: "sous-produits d’origine végétale( fléole des prés, graminées et fines herbes), extraits de protéines végétales, fruits (de baies de sureau) graines ( graines de lin) minéraux, fructo-oligosaccharides souci yucca",note: 3, comment: [""], race: "cochon dinde"),
                
                Pet(name: "Versele-Laga Nature Original Cavia pour cochon d'Inde 9kg",images: "VerseleLagaNatureOriginalCaviapourcochondInde",prix: 25,detail: ["Proteine": 14,"Lipide": 2,"Fibre": 17,"Matière inorganique": 1],composition: " pousses des prairies (fléole des prés, fétuque des prés, vulpin des prés, ray-grass anglais, fétuque rouge, pâturin des prés, dactyle pelotonné, houlque laineuse, pâturin annuel, agrostide stolonifère, flouve odorante, chiendent officinal, canche cespiteuse, alpiste faux-roseau, trèfle blanc, trèfle violet, pissenlit, achillée, plantain lancéolé, cumin des prés, cerfeuil des bois, reine-des-prés, céraiste commun, gaillet jaune, véronique à feuilles de serpolet, vesce des haies, consoude, cirse des champs, lierre terrestre, pâquerette, véronique petit-chêne, alchémille, grand boucage, vesce commune, saxifrage granulée, potentille printanière, véronique agreste, drave printanière, liondent, avoine, gruau de tournesol, gruau de lin, maïs entier, pulpe de carottes, gruau de lin, gruau de colza, carottes, drêche de bière, lignocellulose, poivron, graines de lin, levure de bière, amarante, quinoa, pulpe de baies aronia, racine de maca",note: 3, comment: [""], race : "cochon dinde"),
                
                Pet(name: "Vilmie pour cochon d'Inde 1kg", images: "VilmiepourcochondInde", prix: 3, detail: ["Proteine": 12,"Lipide": 3,"Fibre": 20 ,"Matière inorganique": 2,],composition: "sous-produits d´origine végétale (dont 1 % luzerne), céréales, substances minérales, graines (0,75 % graines de tournesol), huiles et graisses",note: 2,comment: [""],race: "cochon dinde"),
                
                Pet(name: "Bunny Rêve BASIC pour cochon d'Inde 4kg", images: "BunnyRêveBASICpourcochond'Inde",prix: 25,detail: ["Proteine": 13,"Lipide": 2 ,"Fibre": 21 ,"Matière inorganique": 8,],composition: "pousses des prairies (fléole des prés, fétuque des prés, vulpin des prés, ray-grass anglais, fétuque rouge, pâturin des prés, dactyle pelotonné, houlque laineuse, pâturin annuel, agrostide stolonifère, flouve odorante, chiendent officinal, canche cespiteuse, alpiste faux-roseau, trèfle blanc, trèfle violet, pissenlit, achillée, plantain lancéolé, cumin des prés, cerfeuil des bois, reine-des-prés, céraiste commun, gaillet jaune, véronique à feuilles de serpolet, vesce des haies, consoude, cirse des champs, lierre terrestre, pâquerette, véronique petit-chêne, alchémille, grand boucage, vesce commune, saxifrage granulée, potentille printanière, véronique agreste, drave printanière, liondent d'automne, agrostide vulgaire, primevère officinale, petit trèfle jaune), son d'avoine, gruau de tournesol, gruau de lin, maïs entier, pulpe de carottes, gruau de lin, gruau de colza, carottes, drêche de bière, lignocellulose, poivron, graines de lin, levure de bière, amarante, quinoa, pulpe de baies aronia, racine de maca.", note: 2, comment: [""], race: "cochon dinde"),
                
                
                Pet(name: "Versele-Laga Crispy Muesli pour cochon d'Inde 3kg",images: "VerseleLagaCrispyMueslipourcochondInde",prix: 3,detail: ["Proteine": 15,"Lipide": 3 ,"Fibre": 13 ,"Matière inorganique": 7,],composition: "sous-produits d´origine végétale (dont 1 % luzerne), céréales, substances minérales, graines (0,75 % graines de tournesol), huiles et graisses",note: 1,comment: [""],race: "cochon dinde"),
                
                
                //chien
                
                Pet( name: "Atavikau poulet", images: "CroquettespourchienAtavikaupoulet", prix: 72, detail: ["Proteine": 31 ,"Lipide": 16,"Matière inorganique": 3, "Fibre" : 27], composition: "Agneau frais.Volailles déshydratées et dégraissées.Patates douces. Pommes de terre. Petits pois. ", note: 3, comment:[""] , race: "Chien"),
                
                Pet( name: "saumon Ownat", images: "CroquettespourchienausaumonOwnat", prix: 54, detail: ["Proteine": 36,"Lipide": 14,"Matière inorganique": 9, "Fibre" : 18], composition: "Viande fraîche de poulet et de dinde. Viande déshydratée.Petits pois entiers.Graisse de volaille. Racines de manioc.Poissons déshydratés.Pomme de terre, œuf déshydratés, etc.", note: 4, comment: [""], race: "Chien"),
                
        Pet( name: "Carnilove", images: "CroquettespourchienCarnilove", prix: 60, detail: ["Proteine":  38,"Lipide": 20,"Matière inorganique" : 10.6, "Fibre" : 14], composition: "Farine de viande de sanglier. Farine de viande d’agneau.Pois jaune,Graisse de poulet,Foie de poulet,Pommes", note: 5, comment: [""], race: "Chien"),
                
                Pet( name: "light Acana", images: "CroquettespourchienlightAcana", prix: 66, detail: ["Proteine": 31,"Lipide": 17,"Matière inorganique" : 10.6, "Fibre" : 24], composition: "Agneau désossé. Agneau déshydraté moulu. Canard déshydraté moulu. Poissons à chair blanche déshydratés moulus. Pois entiers. Etc.", note: 0, comment: [""], race: "Chien"),
                
                Pet( name: "Orijen Authentique", images: "CroquettespourchienOrijenAuthentique", prix: 77 , detail: ["Proteine": 38,"Lipide": 18," Fibre" :24,"Matière inorganique" : 10.6], composition: "Viande fraîche, poulet désossé.Poulet déshydraté moulu,Foie de poulet,Hareng frais,Dinde fraîche,Dinde déshydratée", note: 4, comment: [""], race: "Chien"),
                
                Pet( name: "wellnessCore", images: "CroquettespourchiensanscéréaleswellnessCore", prix: 55, detail: ["Proteine": 44,"Lipide": 16,"Fibre": 5,"Matière inorganique": 9], composition: "Dinde fraîche et farine de dinde. Poulet séché et farine de poulet. Petits pois. Protéine de pomme de terre. Gras de poulet. Farine de saumon.", note: 3, comment: [""], race: "Chien"),
                
                
                Pet( name: "True Instinct sans céréales", images: "CroquettespourchienTrueInstinctsanscéréales", prix: 24, detail: ["Proteine": 39,"Lipide": 42,"Fibre": 2,"Matière inorganique": 7], composition: "Poulet désossé élevé en plein air ,Poulet déshydraté ,Pois déshydratés,Farine de bois,Graisse animale,Pomme de terre déshydratée", note: 3, comment: [""], race: "Chien"),
                
                Pet( name: "Farmina N&D", images: "CroquettespourchiotFarminaN&D", prix: 15, detail: ["Proteine": 37,"Lipide": 18,"Fibre": 2,"Matière inorganique": 8], composition: "Viande fraîche de poulet désossée. Viande de poulet déshydratée. Pommes de terre. Graisse de poulet. Œufs entiers séchés. Hareng frais. Hareng déshydraté. Huile de poissons. Fibres végétales de pois, etc.", note: 4, comment: [""], race: "Chien"),
                
                //Lapin
                
                Pet(name: "Granulé pour lapin Versele-Laga Nature Cuni Junior pour lapin", images: "VerseleLagaNature", prix: 12, detail: ["Proteine": 15, "Lipide": 3, "Fibre": 15 , "Matière inorganique": 8], composition: "Timothée et herbes.Pois, carottes, féveroles, betteraves rouges, fruits, graines, extraits de protéines végétales, minéraux, huiles et graisses, FOS, calendula, MOS, algues, yucca.", note: 4, comment: [""], race: "Lapin"),
                
                Pet(name: "JR Farm Super pour rongeur et lapin", images: "JRFarmSuper", prix: 13, detail: ["Proteine": 12, "Lipide": 2, "Fibre": 10, "Matière inorganique": 4], composition: "blé, farine d'herbes, farine de maïs extrudée, flocons de blé, luzerne, flocons de maïs, maïs, avoine, flocons de fèves, carottes, caroube, son de blé, gruau de tournesol, graines de tournesol, flocons de petits pois, blé soufflé, germes de malt, poireau."  , note: 1, comment: [""], race: "Lapin"),
                
                Pet(name: "JR Farm Grainless Complete pour lapin nain", images: "JRFarmGrainless", prix: 6, detail: ["Proteine": 14, "Lipide": 4, "Fibre": 17 , "Matière inorganique": 9], composition: "fléole, dactyle pelotonné, pâturin des prés, plantain lancéolé, trèfle violet, fétuque des prés, alchémille, petits pois en flocons, carottes en dés, fèves fourragères en flocons, panais en dés, feuilles de menthe poivrée, graines de lin, cumin noir, feuilles de pissenlit (3 %), betteraves rouges en dés, persil, pommes en dés, fleurs de camomille, feuilles d'ortie, fenouil.", note: 2, comment: [""], race: "Lapin"),
                
                Pet(name: "Bunny Rêve BASIC pour lapin nain", images: "JRFarmGrainless", prix: 28, detail: ["Proteine": 13, "Lipide": 3, "Fibre": 21, "Matière inorganique": 9], composition: "pousses des prairies (fléole des prés, fétuque des prés, vulpin des prés, ray-grass anglais, fétuque rouge, pâturin des prés, dactyle pelotonné, houlque laineuse, pâturin annuel, agrostide stolonifère, flouve odorante, chiendent officinal, canche cespiteuse, alpiste faux-roseau, trèfle blanc, trèfle violet, pissenlit, achillée, plantain lancéolé, cumin des prés, cerfeuil des bois, reine-des-prés, céraiste commun, gaillet jaune, véronique à feuilles de serpolet, vesce des haies, consoude, cirse des champs, lierre terrestre, pâquerette, véronique petit-chêne, alchémille, grand boucage, vesce commune, saxifrage granulée, potentille printanière, véronique agreste, drave printanière, liondent d'automne, agrostide vulgaire, primevère officinale, petit trèfle jaune), son d'avoine, gruau de tournesol, gruau de lin, pulpe de carottes, pulpe de fruits, son de blé, gruau de colza.", note: 4, comment: [""], race: "Lapin"),
                
                Pet(name: "Vitakraft Vita Special Adult pour lapin nain", images: "VitakraftVitaSpecial", prix: 10, detail: ["Proteine": 12, "Lipide": 6, "Fibre": 18 , "Matière inorganique": 2], composition: "sous-produits d'origine végétale (fléole des prés), céréales (maïs 4), légumes (carottes déshydratées), extraits de protéines végétales, inuline, minéraux, huile et graisse (d'huile de colza), extrait de yucca schidigera ", note: 2, comment: [""], race: "Lapin"),
                
                Pet(name: "Versele-Laga Crispy Muesli pour lapin nain", images: "VerseleLagaCrispyMuesli", prix: 6, detail: ["Proteine": 16, "Lipide": 3, "Fibre": 14 , "Matière inorganique": 7], composition: "sous-produits d'origine végétale, céréales, légumes, minéraux, graines.", note: 3, comment: [""], race: "Lapin"),
                
                
        
        
    ]
    
    
    @Published var listeAliments: [Pet] = []
    
    
    
}


