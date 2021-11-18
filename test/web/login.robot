*** Settings ***
Library   Browser

*** Test Cases ***
LoginPageElements Test
    New browser                  chromium       False
    #New browser                  firefox
    #New browser                  webkit
    New Page                     http://ninjaplus-web:5000/login
    Get title                    equal  Ninja+
    Get text                     css=img[src="/static/img/vue-logo.png"]
    #Get text                     xpath=//img[@src="/static/img/vue-logo.png"]
    Get Text                     id=emailId
    Get Text                     id=login      ==      ENTRAR
   # Get text
    Get attribute names          [placeholder="nome@gmail.com"]
    Get attribute names          [placeholder="senha"]

    #Sleep                        60, use wait for elements instead of sleep

    #think time
    #Sleep                       2 for opacity elements case
    Take screenshot
Login Test
    New browser                  chromium       False
    #New browser                  firefox
    #New browser                  webkit
    New Page                     http://ninjaplus-web:5000/login

    Fill text                    id=emailId     madoka32@ninjaplus.com
    Fill text                    id=passId      madoka123
    Click                        text=ENTRAR
    Get Text                     div > .info   ==    William


    Take screenshot


