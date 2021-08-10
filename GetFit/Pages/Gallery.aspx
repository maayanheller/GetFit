<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../CSS_Files/styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
        <h1>
            Gallery
        </h1>
    </div>
    <table class="gallery">
        <tr>
            <td class="img-container">
                <a href="https://www.workoutuni.com/push-legs-pull-routine/">
                    <img class="gallery-img" src="../Images/img1.jpg" />
                </a>
                <div>The primary muscles of the PPL split: Chest, Legs and Back</div>
            </td>

            <td class="img-container">            
                <img class="gallery-img" src="../Images/img2.jpg" />
                <div>Jeff Nippard, a fitness influencer and a pro bodybuilder</div>
            </td>

            <td class="img-container">
                <a href="https://thinkeatlift.com/full-body-high-frequency-training-is-it-worth-it/">
                    <img class="gallery-img" src="../Images/img3.jpg" />
                </a>    
                <div>Does a high frequency fullbody training worth it?</div>
            </td>
        </tr>

        <tr>
            <td class="img-container">
                <img class="gallery-img" src="../Images/img4.jpg" />
                <div>Exercise suggestions for Push Pull Legs routine</div>
            </td>

            <td class="img-container">
                <img class="gallery-img" src="../Images/img5.jpg" />
                <div>Exercise suggestions for Fullbody routine</div>
            </td>

            <td class="img-container">
                <img class="gallery-img" src="../Images/img6.jpg" />
                <div>Arnold Schwarzenegger, A 7 times winner at <a href="https://en.wikipedia.org/wiki/Mr._Olympia">Mr. Olympia</a></div>
            </td>
        </tr>

        <tr>
            <td class="img-container">
                <img class="gallery-img" src="../Images/img7.jpg" />
                <div>A 5 day split with similiraty to the "Bro Split"</div>
            </td>

            <td class="img-container">
                <img class="gallery-img" src="../Images/img8.jpg" />
                <div><a href="https://fitnessfreak360.com/john-meadows/">John Meadows</a>, famous bodybuilder, Died recently at 8/8/2021</div>
            </td>

            <td class="img-container">
                <img class="gallery-img" src="../Images/img9.jpg" />
                <div>Eddie hall, A strongman, Breaks the world record of deadlift</div>
            </td>
        </tr>
    </table>
</asp:Content>

