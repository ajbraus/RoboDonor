//
//  TabProfile.swift
//  RoboDonor
//
//  Created by Adam Braus on 4/21/20.
//  Copyright © 2020 Adam Braus. All rights reserved.
//

import SwiftUI

struct TabProfile: View {
    var body: some View {
        NavigationView {
            Text("Profile")
            .navigationBarTitle(Text("Your Impact"))
        }
    }
}


struct TabProfile_Previews: PreviewProvider {
    static var previews: some View {
        TabProfile()
    }
}
