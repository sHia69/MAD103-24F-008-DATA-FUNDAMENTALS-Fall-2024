# PLEASE READ FOR ASSIGNMENT 3
## Question 1

Using the JSON below, fix it so it validates.


```json
{
    "movies"  [
        {
            "title" : "Batman",
            yearReleased : "1989",
            "actors" : [
                {
                    "name": "Micheal Keaton",
                    "role": "Bruce Wayne - Batman"
                },
                {
                    "name": "Jack Nicholson",
                    "role": "Jack Napier - Joker"
                }
            ],
            "wonAnOscar" : false
        }
         {
            "title" : "Batman Begins",
            "yearReleased" : "2005",
            "actors" : [
                {
                    "name": "Christian Bale",
                    "role": "Bruce Wayne - Batman"
                },
                {
                    "name": "Liam Neeson",
                    "role": "Henri Ducard - Ra's Al Ghul"
                }
            ],
            "wonAnOscar": yes,
        }
    ]
}
```
## Solution
```json
{
    "movies": [
        {
            "title": "Batman",
            "yearReleased": "1989",
            "actors": [
                {
                    "name": "Michael Keaton",
                    "role": "Bruce Wayne - Batman"
                },
                {
                    "name": "Jack Nicholson",
                    "role": "Jack Napier - Joker"
                }
            ],
            "wonAnOscar": false
        },
        {
            "title": "Batman Begins",
            "yearReleased": "2005",
            "actors": [
                {
                    "name": "Christian Bale",
                    "role": "Bruce Wayne - Batman"
                },
                {
                    "name": "Liam Neeson",
                    "role": "Henri Ducard - Ra's Al Ghul"
                }
            ],
            "wonAnOscar": false
        }
    ]
}
```
### Changes I made:

- Changed the square bracket after `"movies"` to a colon
- Added a comma between the two movie entries
- Corrected the spelling of `"Michael Keaton"`
- Changed `"wonAnOscar"` from `"yes"` to `"false"` to reflect a boolean value
- Removed the trailing comma after `"wonAnOscar": false` in the second movie entry

## Question 2

Using the JSON code below, correct any mistakes so that it validates.


```json
{
    movies : [
        {
            "title" : "Batman",
            "yearReleased" : "1989",
            "actors" : [
                {
                    "name": "Micheal Keaton",
                    "role": "Batman - Bruce Wayne"
                },
                {
                    "name": "Jack Nicholson",
                    "role":  Joker - Jack Napier
                }
            ],
            "wonAnOscar" : false,
        },
         {
            "title" : "Batman Begins",
            "yearReleased" : "2005",
            "actors" : [
                {
                    "name": "Christian Bale",
                    "role": "Batman - Bruce Wayne"
                },
                {
                    "name": "Liam Neeson",
                    "role": "Ras Al Ghul - Henri Ducard"
                }
            ],
            "wonAnOscar": no
        }
    ]
```
## Solution
```json
{
    "movies": [
        {
            "title": "Batman",
            "yearReleased": "1989",
            "actors": [
                {
                    "name": "Michael Keaton",
                    "role": "Batman - Bruce Wayne"
                },
                {
                    "name": "Jack Nicholson",
                    "role": "Joker - Jack Napier"
                }
            ],
            "wonAnOscar": false
        },
        {
            "title": "Batman Begins",
            "yearReleased": "2005",
            "actors": [
                {
                    "name": "Christian Bale",
                    "role": "Batman - Bruce Wayne"
                },
                {
                    "name": "Liam Neeson",
                    "role": "Ras Al Ghul - Henri Ducard"
                }
            ],
            "wonAnOscar": false
        }
    ]
}
```
### Changes I made:

- Added a closing curly brace at the end
- Changed the colon after `"movies"` to an equal sign
- Corrected the spelling of `"Michael Keaton"`
- Added quotes around `"Joker - Jack Napier"`
- Changed `"no"` to `"false"` for `"wonAnOscar"` to verify that it’s a boolean value
- Removed the trailing comma after `"wonAnOscar": false` in the first movie entry

## Question 3

Correct the following XML document so that it validates:
```xml
<!-- this is the info.plist for the Interface Builder from Xcode-->
<?xml version="1.0" encoding="UTF-8"?>
<plist version=1.0>
<dict>
 <key>UIInterfaceOrientations_iphone</key>
 <array>
  <string>UIOrientationLandscapeRight</string>
  <string>UIOrientationLandscapeLeft</string>
  <string>UIOrientationPortrait</string>
 </array>
 <key>UIInterfaceOrientations~ipad<key>
 <array>
  <string>UIOrientationLandscapeRight</strig>
  <string>UIOrientationLandscapeLeft</string>
  <string>UIOrientationPortraitUpsideDown</string>
  <string>UIOrientationPortrait</string>
 </array>
 <key>CFBundleDevelopmentRegion</key>
 <string>en</string>
 <key>CFBundleExecutable</key>
 <string>$(EXECUTABLE_NAME)</string>
 <key>CFBundleIdentifier</key>
 <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
</plist>
```
## Solution
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!-- this is the info.plist for the Interface Builder from Xcode-->
<plist version="1.0">
<dict>
 <key>UIInterfaceOrientations_iphone</key>
 <array>
  <string>UIOrientationLandscapeRight</string>
  <string>UIOrientationLandscapeLeft</string>
  <string>UIOrientationPortrait</string>
 </array>
 <key>UIInterfaceOrientations~ipad</key>
 <array>
  <string>UIOrientationLandscapeRight</string>
  <string>UIOrientationLandscapeLeft</string>
  <string>UIOrientationPortraitUpsideDown</string>
  <string>UIOrientationPortrait</string>
 </array>
 <key>CFBundleDevelopmentRegion</key>
 <string>en</string>
 <key>CFBundleExecutable</key>
 <string>$(EXECUTABLE_NAME)</string>
 <key>CFBundleIdentifier</key>
 <string>$(PRODUCT_BUNDLE_IDENTIFIER)</string>
</dict>
</plist>
```
### Changes I made:

- Moved the comment on the second line so that it just gives us no error.
- Enclosed the version attribute in the <plist> tag in quotes
- Fixed the closing tag for <key>UIInterfaceOrientations~ipad</key>
- Corrected the spelling of `<string>` in `<string>UIOrientationLandscapeRight</strig>`
- Added the closing `</dict>` tag before the closing `</plist>` tag

## Question 4

Correct the problems in the XML below so that it is valid:
```xml
<?xml version="1.0">
//This is a cool xml document
<members universe = marvel>
    <member>
        <firstName>Peter</firstName>
        <lastName>Parker</lastName>
        <age>32</age>
        <address type="home">
            <street>20 Ingram St</street>
            <city>Queens</city>
            <state>NY</state>
            <postal>11375</postal>
            <country>USA</country>
        </address>
        <phoneNumbers>
            <home>555 080 3422</home>
            <cell>555 032 4333</cell>
        </phoneNumbers>
    </member>
    <member>
        <firstName>Reed</firstName>
        <lastName>Richards</lastName>
        <age>45</age>
        <address type="work">
            <street>87 42nd Stree<street>
            <city>New York</city>
            <state>NY</state>
            <postal>12342</postal>
            <country>USA</country>
        </address>
        <phoneNumbers>
            <home>555 342 4444</home>
            <cell>555 938 4321</cell>
        </phoneNumbers>
    </members>
</members>
```
## Solution
```xml
<?xml version="1.0"?>
<!-- This is a cool XML document -->
<members universe="marvel">
    <member>
        <firstName>Peter</firstName>
        <lastName>Parker</lastName>
        <age>32</age>
        <address type="home">
            <street>20 Ingram St</street>
            <city>Queens</city>
            <state>NY</state>
            <postal>11375</postal>
            <country>USA</country>
        </address>
        <phoneNumbers>
            <home>555 080 3422</home>
            <cell>555 032 4333</cell>
        </phoneNumbers>
    </member>
    <member>
        <firstName>Reed</firstName>
        <lastName>Richards</lastName>
        <age>45</age>
        <address type="work">
            <street>87 42nd Street</street>
            <city>New York</city>
            <state>NY</state>
            <postal>12342</postal>
            <country>USA</country>
        </address>
        <phoneNumbers>
            <home>555 342 4444</home>
            <cell>555 938 4321</cell>
        </phoneNumbers>
    </member>
</members>
```
Changes I made:

- Added the closing `?>` to the XML declaration
- Changed the comment syntax to `<!-- -->`
- Corrected the attribute syntax for universe="marvel"
- Fixed the closing tag for `<street>` in Reed Richards’ address
- Added the missing closing tag for the second `<member>` element