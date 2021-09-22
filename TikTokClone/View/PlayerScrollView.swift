//
//  PlayerScrollView.swift
//  TikTokClone
//
//  Created by David Malicke on 9/21/21.
//

import SwiftUI


struct PlayerScrollView: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        return PlayerScrollView.Coordinator(view: self)
    }
    
    @Binding var data: [Video]
    
    func makeUIView(context: Context) -> UIScrollView {
        let view = UIScrollView()
        
        let childView = UIHostingController(rootView: PlayerView(data: $data))
        
        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        view.addSubview(childView.view)
        
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        view.delegate = context.coordinator
        
        return view
    }
    
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
        //updates views above in case a different number of videos/views is pulled from the server
        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        
        for index in 0..<uiView.subviews.count {
            uiView.subviews[index].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat(data.count))
        }
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        var view: PlayerScrollView
        
        init(view: PlayerScrollView) {
            self.view = view
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let currentIndex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
            
            var index = 0
            
            // turns off all the other videos so that only the view on screen is played. 
            if currentIndex != index {
                index = currentIndex
                
                for i in 0..<view.data.count {
                    view.data[i].player.seek(to: .zero)
                    view.data[i].player.play()
                }
                
                view.data[index].player.play()
            }
        }
    }
}
