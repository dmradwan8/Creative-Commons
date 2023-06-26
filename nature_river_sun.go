// Package creativecommons sets up package for creation of new Creative Commons Licenses
package creativecommons

// Importing go packages
import (
	"errors"
	"fmt"
)

// Variables for storing license information
var (
	// License Type represents the type of license being created
	LicenseType string
	// License Name allows for specifing a unique name for the license
	LicenseName string
	// License Description allows a description of the license to be stored
	LicenseDescription string
	// AuthorName stores the author name
	AuthorName string
)

// Init function initializes data for the CC License
func Init(lt, ln, ld, an string) (err error) {

	if lt == "" || ln == "" || ld == "" || an == "" {
		err = errors.New("all parameters are required")
		return
	}
	LicenseType = lt
	LicenseName = ln
	LicenseDescription = ld
	AuthorName = an

	return

}

// CreateLicense creates the final license text
func CreateLicense() (licenseText string, err error) {

	//validate all necessary data is present
	if LicenseName == "" || LicenseType == "" || LicenseDescription == "" || AuthorName == "" {
		err = errors.New("all parameters are required")
		return
	}

	//Create the license body
	licenseText = "This is a human-readable summary of (and not a substitute for) the license.\n"
	licenseText += "--------------------------------------------------------------------------------\n"
	licenseText += fmt.Sprintf("%s: %s by %s\n", LicenseType, LicenseName, AuthorName)
	licenseText += fmt.Sprintf("%s\n", LicenseDescription)
	licenseText += "--------------------------------------------------------------------------------\n"
	licenseText += fmt.Sprintf("For the full license text please visit: \n")
	licenseText += fmt.Sprintf("https://creativecommons.org/licenses/by/4.0/legalcode \n")
	licenseText += "--------------------------------------------------------------------------------\n"
	licenseText += fmt.Sprintf("Copyright (c) %s\n", AuthorName)

	return

}