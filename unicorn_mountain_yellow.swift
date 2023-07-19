//
//  CreativeCommons.swift
//  CreativeCommons
//
//  Created by <YourName> on <Date>.
//  Copyright © <Year> <YourName>. All rights reserved.

import Foundation

// MARK: - License
/*
This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/ or 
send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
*/

// MARK: - Types
public enum CreativeCommonsLicense {
    case Attribution
    case NonCommercial
    case NoDerivatives
    case ShareAlike
    case PublicDomain
}

public struct CreativeCommonsOptions {
    var license: CreativeCommonsLicense
    var initialWaiver: Bool
    var commercialWaiver: Bool
    var jurisdiction: String?
}

// MARK: - Functions
public func generateLicense(options: CreativeCommonsOptions) -> String {
    let components = [
        "This work is licensed under the ",
        "Creative Commons ",
        licenseDescriptionFor(license: options.license),
        options.jurisdiction == nil ? "" : " for \(options.jurisdiction!)",
        ".", 
        options.initialWaiver ? " All rights waived." : "",
        options.commercialWaiver ? " All commercial rights waived." : "",
        " To view a copy of this license, visit ",
        "http://creativecommons.org/licenses/",
        licenseStringFor(license: options.license),
        "/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA."
    ]
    
    return components.joined(separator: "")
}

// MARK: - Private Helpers
private func licenseDescriptionFor(license: CreativeCommonsLicense) -> String {
    switch license {
    case .Attribution:
        return "Attribution 4.0 International License"
    case .NonCommercial:
        return "Attribution-NonCommercial 4.0 International License"
    case .NoDerivatives:
        return "Attribution-NoDerivatives 4.0 International License"
    case .ShareAlike:
        return "Attribution-ShareAlike 4.0 International License"
    case .PublicDomain:
        return "Public Domain Dedication"
    }
}

private func licenseStringFor(license: CreativeCommonsLicense) -> String {
    switch license {
    case .Attribution:
        return "by/4.0/"
    case .NonCommercial:
        return "by-nc/4.0/"
    case .NoDerivatives:
        return "by-nd/4.0/"
    case .ShareAlike:
        return "by-sa/4.0/"
    case .PublicDomain:
        return "zero/1.0/deed.en"
    }
}