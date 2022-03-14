import PlaygroundSupport
import SwiftUI 

struct MyView: View {
    
    @Environment(\.openURL)var openURL 
    var body: some View {
        ZStack{
            Color.black
            VStack{
                
                Text("Saumil Anand")
                    
                    .font(.system(size :100))
                    .italic()
                    .fontWeight(.black)
                    .foregroundColor(.orange)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(50)
                    .padding()
                Image(uiImage :#imageLiteral(resourceName: "62481881_2297927293619029_3956118703040364544_n.jpeg"))
                    .resizable()
                    .scaledToFit()
                    .mask(Circle())
                    .padding()
                Text("Seasoned Coder And Human")
                    .font(.system(size :25))
                    .italic()
                    .fontWeight(.black)
                    .foregroundColor(.orange)
                    .padding(20)
                    .background(Color.black)
                    .cornerRadius(50)
                    .padding()
                HStack {
                    Image(systemName: "safari")
                        .padding()
                        .onTapGesture {
                            openURL(URL(string: "https://sites.google.com/students.edu.sg/bbss-2022-saumil-anand/home")!)
                        }
                    Image(systemName: "envelope")
                        .padding()
                        .onTapGesture {
                            openURL(URL(string: "mailto:anand_saumil@students.edu.sg")!)
                        }
                    Image(systemName:"bubble.right.fill")
                        .padding()
                        .onTapGesture {
                            print("A bird in the hand is worth two in the pan")
                        }
                    
                }
                .font(.system(size:60))
                .foregroundColor(.purple)
                .padding()
            }
            .padding(100)
            
        }
    }
}


PlaygroundPage.current.setLiveView(MyView())
