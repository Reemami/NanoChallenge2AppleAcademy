//
//  main.swift
//  optional
//
//  Created by Reem Amin Ali on 19/05/1443 AH.
//

import Foundation
print ("📚Hello, Welcome to the Reader Club📚")

print ("--------------------------")


struct book {
    var bookName : String = ""
    var authorName : String = ""
    var originallyPublished: String = ""

}


var book1 = book(bookName: "A Commentary and Digest on The Air, Act 1981", authorName: "Apoorva Kumar Singh" , originallyPublished: "2020")
var book2 = book(bookName: "The Bloomsbury Anthology of Great Indian Poems", authorName: "Abhay K." , originallyPublished: "2020")
var book3 = book(bookName: "Karmayoddha Granth", authorName: "Amit Shah" , originallyPublished: "2020")


var book4 = book(bookName: "Mind-Master", authorName: "Viswanathan Anand and Susan Ninan" ,  originallyPublished: "2019")
var book5 = book(bookName: "Girl Power: Indian Women Who Broke The Rules", authorName: "Neha J Hiranandani"  , originallyPublished: "2019")
var book6 = book(bookName: "My Life, My Mission", authorName: "Baba Ramdev" , originallyPublished: "2019")


var book7 = book(bookName: "Diabetes with Delight", authorName: "Anoop Misra" ,  originallyPublished: "2018")
var book8 = book(bookName: "How May I Help You", authorName: "Deepak Singh"  , originallyPublished: "2018")
var book9 = book(bookName: "I do what I do", authorName: "Raghuram Rajan" , originallyPublished: "2018")



var booksList = [book1 , book2, book3 , book4 , book5 , book6 , book7, book8 ,book9]





var userChoices : String = ""
var whileCondition = true
while whileCondition
{
    print ("📚 MENU 📚 ")
    print ("1- Check the important books and its authors of 2020💡")
    print ("2- Check the important books and its authors of 2019💡")
    print ("3- Check the important books and its authors of 2018💡")
    print(" ")
    print("Please choice number!")
    
    if let input = readLine(){
        userChoices = input
        switch userChoices{
            
        case "1":
         print ("🖇information of the books🖇")
            showingBooks(originallyPublished: "2020")
        case "2":
            print ("🖇information of the books🖇")
             showingBooks(originallyPublished: "2019")
        case "3":
            print ("🖇information of the books🖇")
            showingBooks(originallyPublished: "2018")

           whileCondition = false
        default:
            print ("Invild Choice : Please try agine !")
            
        }
    }
}




func showingBooks (originallyPublished: String)
{
    for book in booksList
    {
        if (originallyPublished == book.originallyPublished)
        {
            print("📌The Books is: \(book.bookName), ✍🏻The author is: \(book.authorName) , 📖 The Published is: \(book.originallyPublished)")
          
        }
    }
}
