import Foundation
    
var userLocale = Locale.autoupdatingCurrent

    let fiveSecondsAgo = Date(timeIntervalSinceNow: -5)
print("• 5 seconds ago, it was \(fiveSecondsAgo.description(with: userLocale)).")

    let eightMinutesFromNow = Date(timeIntervalSinceNow: 8 * 60)
    print("• 8 minutes from now, it will be \(eightMinutesFromNow.description(with: userLocale)).")

    // ...specifying the number of seconds before or after
// the start of the Third Millennium:
let iPhoneStevenoteSwiftInterval = 190_058_400.0
// (Swift ignores underscores in numbers, so we’re using them
// to group digits to make the number easier to read.)
var iPhoneStevenoteDate = Date(timeIntervalSinceReferenceDate: iPhoneStevenoteSwiftInterval)
print("• The iPhone Stevenote took place on \(iPhoneStevenoteDate.description(with: userLocale)).")

// ...specifying the number of seconds before or after
// the start of the Unix epoch:
let iPadStevenoteUnixInterval = 1_264_615_200.0
var iPadStevenoteDate = Date(timeIntervalSince1970: iPadStevenoteUnixInterval)
print("• The iPad Stevenote took place on \(iPadStevenoteDate.description(with: userLocale)).")

// ...specifying the number of seconds before or after
// another date. The Apple Silicon Timnote took place
// 328,230,000 seconds after the iPad Stevenote:
let appleSiliconTimnoteIPadStevenoteInterval = 328_230_000.0
var appleSiliconTimnoteDate = Date(
    timeInterval: appleSiliconTimnoteIPadStevenoteInterval,
    since: iPadStevenoteDate
)
print("• The Apple Silicon Timnote took place on \(appleSiliconTimnoteDate.description(with: userLocale)).")
