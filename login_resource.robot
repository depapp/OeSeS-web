*** Settings ***
Library                 Selenium2Library

*** Variables ***
${browser}              gc
${url}                  http://ossdev.cartenz.co.id/auth/login

*** Keywords ***
Open the web
    Open Browser        ${url}          ${browser}
    Maximize Browser Window

Buat komplen
    Input Text          xpath=//*[@id="email2"]         helpdesk3@mailinator.com
    Input Text          xpath=//*[@id="test1"]          111111
    Click Element       xpath=//html/body/div/div/div[2]/div/div[1]/form[1]/div[3]/div[5]/button
    Click Element       xpath=//html/body/div[3]/div[1]/div/div/ul/li[3]/a
    Wait Until Element Is Visible           //*[@id="table_baru"]/tbody/tr[1]/td[1]         timeout=10
    Click Element       xpath=//*[@id="page_portlet"]/div[2]/a
    Input Text          xpath=//*[@id="input-identity_phone_2"]         85759419699
    Click Element       xpath=//*[@id="input-identity-email"]
    Click Element       xpath=//*[@id="form-complaint-info-detail"]/div/div/div[1]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Operasional
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Input Text          xpath=//*[@id="input-complaint-description"]            Ini adalah isi uraian

    Click Element       xpath=//*[@id="form-complaint-info-detail"]/div/div/div[2]/div/div/div[2]/div[1]/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Hukum
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Input Text          xpath=//*[@id="input-complaint-chronology"]             Ini adalah isi kronologi

    Click Element       xpath=//*[@id="btn-unggah"]
    Choose File         //*[@id="attachmentFiles"]              C:/\Users/\user/\Downloads/\Pictures/\Constatine.jpg
    Set Selenium Speed          3
    Choose File         //*[@id="attachmentFiles"]              C:/\Users/\user/\Downloads/\Documents/\asdf.pdf
    Click Element       xpath=//*[@id="modal-unggah"]/div/div/div[3]/button

    Set Selenium Speed          0.5
    Click Element       xpath=//*[@id="form-complaint-info-detail"]/div/div/div[7]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Asing
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Click Element       xpath=//*[@id="form-complaint-info-detail"]/div/div/div[8]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Cianjur
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Input Text          xpath=//*[@id="input-company-name"]         PT Robot

    Click Element       xpath=//*[@id="form-complaint-info-detail"]/div/div/div[10]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Hukum
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Click Element       xpath=//*[@id="form-complaint-info-detail"]/div/div/div[11]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Call
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Click Element       xpath=//*[@id="form-complaint-purpose"]/div/div/div[1]/div/div

    Click Element       xpath=//*[@id="targetted"]/div[1]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Bandung
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Input Text          xpath=//*[@id="targetted"]/div[2]/div/div/span/span[1]/span/ul/li/input        Cianjur
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Click Element       xpath=//*[@id="targetted"]/div[3]/div/div/span/span[1]/span
    Input Text          xpath=/html/body/span/span/span[1]/input        Sedang
    Click Element       sizzle=.select2-results__option.select2-results__option--highlighted

    Click Element       xpath=//*[@id="form-submit"]

    # Close Browser