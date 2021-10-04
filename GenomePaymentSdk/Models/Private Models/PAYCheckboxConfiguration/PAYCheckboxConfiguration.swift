import Foundation

/**
Checkbox configuration contains text, strings that should be highlighted with URL links.
 
For example:
 PAYCheckboxConfiguration(
     text: l10n.localized(key: .paymentTermsAndPrivacyConfirmation),
     highlightedTexts: [
         l10n.localized(key: .brandKey): brandLink,
         l10n.localized(key: .termsKey): termsLink,
         l10n.localized(key: .privacyKey): privacyLink,
     ]
 )
 */

internal struct PAYCheckboxConfiguration {
    let text: String
    let highlightedTexts: [String: String]
    
    init(text: String, highlightedTexts: [String: String] = [:]) {
        self.text = text
        self.highlightedTexts = highlightedTexts
    }
}

/// Genom checkboxes
extension PAYCheckboxConfiguration {
    
    private static let l10n = PAYL10nService.shared
    private static let privacyLink = "https://genome.eu/privacy-policy.html"
    private static let termsLink = "https://genome.eu/terms.html"
    private static let genomeLink = "https://genome.eu/"
        
    static let termsAndPrivacy = PAYCheckboxConfiguration(text: l10n.localized(key: .paymentTermsAndPrivacyConfirmation),
                                                          highlightedTexts: [
                                                            l10n.localized(key: .genomeKey): genomeLink,
                                                            l10n.localized(key: .termsKey): termsLink,
                                                            l10n.localized(key: .privacyKey): privacyLink,
                                                          ])
}
