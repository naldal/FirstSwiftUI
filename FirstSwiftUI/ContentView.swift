//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 송하민 on 2021/08/12.
//

import SwiftUI

struct ContentView: View {
    
/* 텍스트
    var body: some View {
        Text("Hello, world. It is a wonderful place to live. Bla bla bla bla.")
            .lineLimit(1)
            .truncationMode(.tail)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .background(Color.yellow, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .lineSpacing(50)
    }
*/
    
/* 날짜 변환
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var dueDate = Date()
    var body: some View {
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
*/
    
/* 이미지사용
    var body: some View {
        Image("스크린샷")
        
         SF symbol 사용하려면
        Image(systemName: "circle")
            .foregroundColor(.yellow)
        
         resizable은 필수
        Image("스크린샷")
            .resizable()
             정해진 사이즈에 이미지 채우는방식
            .aspectRatio(contentMode: .fill)
        
        
         UIImage 불러오기
        guard let img = UIImage(named: "스크린샷") else {
            fatalError("Cannot load image")
        }
        return Image(uiImage: img)
        
    }
*/
    
/* 그라디에이션
    var body: some View {
        Text("SwiftUI tutorial by Munon")
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .bottom))
    }
     
*/

/* 도형그리기
    
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        Circle()
            .fill(Color.red)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
*/

/* 텍스트에 백그라운드
    var body: some View {
        Text("SwiftUI tutorial by Munon")
            .background(
                Image("스크린샷")
                    .resizable()
                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            )
    }
 */
    
/* 버튼사용
    @State var showDetails = false
    var body: some View {
        VStack {
            Button(action: {
                // action
                self.showDetails.toggle()
            }, label: {
                Text("Show details")
            })
            if showDetails {
                Text("You should see me in a crown")
                    .font(.largeTitle)
                    .lineLimit(1)
            }
        }
    }
 */

/* 네이게이션 링크
    var body: some View {
        NavigationView {
            Text("Hi")
            .navigationTitle(Text("Intro"))
            .navigationBarItems(trailing:
                NavigationLink(destination:DetailView()) {
                    Image(systemName: "arrowtriangle.right.circle.fill").resizable()
                        .frame(width: 25, height: 25, alignment: .trailing)
                }
            )
                
        }
    }
*/
    
/* 스토리보드의 Switch가 swiftui에서는 Toggle 로 변경
    @State var showGreeting = true
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting, label: {
                Text("Welcome")
            })
            if showGreeting {
                Text("Hello Hamin")
            }
        }
    }
*/

/* 여러개의 뷰 사용
    var body: some View {
        HStack {
            Text("Swift UI")
            Text("Hamin")
        }
        // body는 하나의 뷰를 리턴해야 하기 때문에 성립되지 않음
        // 두개 이상의 뷰를 사용하기 위해서는 VStack혹은 SStack 안에 사용
    }
*/
    
/* 스택안의 뷰 간격 주기
    var body: some View {
        VStack {
            VStack(spacing: 50) {
                Text("swift UI")
                Divider()
                Text("Hamin")
            }
            
            VStack(alignment: .leading, content: {
                Text("swift UI2")
                Divider()
                Text("Hamin2")
            })
        }
    }
 */

/* 뷰 안의 간격 주기
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Swift UI")
                .padding(.bottom, 100)
            Text("Hamin")
        })
    }
*/
    
/* 컨텐츠를 겹칠땐 Zstack
    var body: some View {
        ZStack() {
            Image("스크린샷")
            Text("Hamin")
        }
    }
 */
    
/* 여러개의 뷰 타입 리턴하는 법
    var body: some View {
        // some View는 특정한 하나의 뷰 타입이 리턴한다고 이해함. 따라서 다양한 뷰 타입을 한번에 리턴할 수 없음
        if Bool.random() {
            Image("스크린샷")
        } else {
            Text("fail")
        }
    }
*/
    
/* safe area를 넘고싶다면
    var body: some View {
        Text("Hello World")
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.yellow)
            .edgesIgnoringSafeArea(.all)
    }
*/
        
/* 텍스트 필드
    @State var name:String = "Hamin"
    var body: some View {
        VStack {
            TextField("Enter your name", text:$name)
            Text("Hello, \(name)!")
        }
    }
*/
    
/* 텍스프 필드 플레이스 홀더, 비밀번호 입력
    @State var emailAdrress = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("cec7378@gmail.com", text: $emailAdrress)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 0.0).strokeBorder(lineWidth: 1.0))
                .padding()
            
            SecureField("Enter a password", text: $password)
            Text("You entered: \(password)")
            
        }
    }
*/

/* 정적 리스트
    var body: some View {
        List {
             StaticFamilyRow(name: "Hamin")
             StaticFamilyRow(name: "Haeun")
             StaticFamilyRow(name: "Idontknow")
        }
    }
*/
    
/* 동적 리스트
    var body: some View {
        let first = Family(name: "Hamin")
        let second = Family(name: "Haeun")
        let third = Family(name: "IDK")
        let families = [first, second, third]
        return List(families) { fam in
            return DynamicFamilyRow(family: fam)
        }
    }
*/
    
/* 아이템 삭제
    @State var users = ["Hamin", "Haeun", "Durup"]
    var body: some View {
        List {
            ForEach(users, id: \.self) { user in
                Text(user)
            }.onDelete(perform: deleteFunction)
        }
    }
    
    func deleteFunction(at offsets: IndexSet) {
        if let first = offsets.first {
            users.remove(at:first)
        }
    }
*/
    
/* 리스트 아이템 이동
    @State var users = ["A", "B", "C"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id:\.self) { user in
                    Text(user)
                }
                .onMove(perform: move)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(from source:IndexSet, to destination: Int) {
        users.move(fromOffsets: source, toOffset: destination)
    }
*/
    
/* 리스트 섹션, 그룹화
    var body: some View {
        List {
            Section(header: Text("Important")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }.listStyle(GroupedListStyle())
        }
    }
*/
    
/* Form 기본
    @State var toggling = false
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $toggling, label: {
                    Text("Toggly")
                })
                
                Button(action: {}, label: {
                    Text("Save changes")
                })
            }
        }.navigationBarTitle(Text("Settings"))
    }
*/
    
/* Form 섹션 나누기
    @State var toggle = false
    var body: some View {
        NavigationView {
            Form {
                Section(footer: Text("footer")) {
                    Toggle(isOn: $toggle, label: {
                        Text("toggly")
                    })
                }
                
                Section {
                    Button(action: {}, label: {
                        Text("Save changes")
                    }).disabled(!toggle)
                }
            }.navigationBarTitle(Text("Section"))
        }
    }
*/
    
/* form 안의 view 숨기기
@State var showingAdvancedOptions = false
@State var toggling = false

var body: some View {
    Form {
        Section {
            Toggle(isOn: $showingAdvancedOptions, label: {
                Text("Show advanced options")
            })
            
            if showingAdvancedOptions {
                Toggle(isOn: $toggling, label: {
                    Text("Toggly")
                })
            }
        }
    }
}
 */
    
/* 스크롤 뷰
    var body: some View {
        ScrollView() {
            Image("스크린샷")
            Text("Hello Hamin")
        }
    }
 */
    
/* picker
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State var selectedColor = 0
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Choose a color"), content: {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0])
                }
            })
            
            Text("You seleced \(colors[selectedColor])")
        }
    }
*/
    
/* slider
    @State var grade: Double = 0
    var body: some View {
        VStack {
            Slider(value: $grade, in: 0...100, step: 1)
            Text("Your grade is \(grade)")
        }
    }
*/
    

    @State var age = 22
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
        }
    }
 
    
    
    
}

struct TaskRow: View {
    var body: some View {
        Text("Task item")
    }
}

struct Family: Identifiable {
    var id = UUID()
    var name: String
}

struct DynamicFamilyRow: View {
    var family:Family
    var body: some View {
        Text("Family: \(family.name)")
    }
}


struct StaticFamilyRow: View {
    var name:String
    var body: some View {
        Text("Family: \(name)")
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
            ContentView()
        }
    }
}
