<%@ Page Title="" Language="C#" MasterPageFile="~/SSFMasterPage.master" AutoEventWireup="true"
    CodeFile="SSF.aspx.cs" Inherits="Protected_SSF" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Page Container -->
    <div class="w3-container w3-content" style="max-width: 1400px; margin-top: 80px">
        <!-- The Grid -->
        <div class="w3-row">
            <!-- Left Column -->
            <div class="w3-col m3">
                <!-- Profile -->
                <div class="w3-card w3-round w3-white">
                    <div class="w3-container">
                        <h4 class="w3-center">
                            My Profile</h4>
                        <p class="w3-center">
                            <asp:Image ID="imgDP" runat="server" CssClass="w3-circle" ImageUrl=""
                                Height="100px" Width="100px" />
                          </p>
                        <hr>
                        <p>
                            <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i>
                            <asp:Label ID="lblProfileName" runat="server" Text=""></asp:Label>
                        </p>
                        <p>
                            <i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>Reg. No:
                            <asp:Label ID="lblRegNo" runat="server" Text=""></asp:Label>
                        </p>
                        <p>
                            <i class="fa fa-user fa-fw w3-margin-right w3-text-theme"></i>
                            <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                        </p>
                         <p>
                            <i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>Depart:
                            <asp:Label ID="lblDepartment" runat="server" Text=""></asp:Label>
                        </p>
                        <p>
                            <i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>Class:
                            <asp:Label ID="lblClass" runat="server" Text=""></asp:Label>
                        </p>
                            
                            <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click" ForeColor="#990033">Log out</asp:LinkButton></p>
                    </div>
                </div>
                <br>
                <!-- Accordion -->
                <div class="w3-card w3-round">
                    <div class="w3-white">
                        <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align">
                            <i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i>My Groups</button>
                        <div id="Demo1" class="w3-hide w3-container">
                            <p>
                                Some text..</p>
                        </div>
                        <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align">
                            <i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i>My Events</button>
                        <div id="Demo2" class="w3-hide w3-container">
                            <p>
                                Some other text..</p>
                        </div>
                        <button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align">
                            <i class="fa fa-users fa-fw w3-margin-right"></i>My Photos</button>
                        <div id="Demo3" class="w3-hide w3-container">
                            <div class="w3-row-padding">
                                <br>
                                <div class="w3-half">
                                    <img src="/w3images/lights.jpg" style="width: 100%" class="w3-margin-bottom">
                                </div>
                                <div class="w3-half">
                                    <img src="/w3images/nature.jpg" style="width: 100%" class="w3-margin-bottom">
                                </div>
                                <div class="w3-half">
                                    <img src="/w3images/mountains.jpg" style="width: 100%" class="w3-margin-bottom">
                                </div>
                                <div class="w3-half">
                                    <img src="/w3images/forest.jpg" style="width: 100%" class="w3-margin-bottom">
                                </div>
                                <div class="w3-half">
                                    <img src="/w3images/nature.jpg" style="width: 100%" class="w3-margin-bottom">
                                </div>
                                <div class="w3-half">
                                    <img src="/w3images/snow.jpg" style="width: 100%" class="w3-margin-bottom">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <!-- Interests -->
                <div class="w3-card w3-round w3-white w3-hide-small">
                    <div class="w3-container">
                        <p>
                            Interests</p>
                        <p>
                             <span class="w3-tag w3-small w3-theme-d3">Labels</span> <span class="w3-tag w3-small w3-theme-d2">
                                    Games</span> <span class="w3-tag w3-small w3-theme-d1">Friends</span> <span class="w3-tag w3-small w3-theme">
                                        Games</span> <span class="w3-tag w3-small w3-theme-l1">Friends</span>
                            <span class="w3-tag w3-small w3-theme-l2">Food</span> <span class="w3-tag w3-small w3-theme-l3">
                                Design</span> <span class="w3-tag w3-small w3-theme-l4">Art</span> <span class="w3-tag w3-small w3-theme-l5">
                                    Photos</span>
                        </p>
                    </div>
                </div>
                <br>
                <!-- Alert Box -->
                <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
                    <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
                        <i class="fa fa-remove"></i></span>
                    <p>
                        <strong>Hey!</strong></p>
                    <p>
                        People are looking at your profile. Find out who.</p>
                </div>
                <!-- End Left Column -->
            </div>
            <!-- Middle Column -->
            <div class="w3-col m7">
                <div class="w3-row-padding">
                    <div class="w3-col m12">
                        <div class="w3-card w3-round w3-white">
                            <div class="w3-container w3-padding">
                                <p>
                                    Status:</p>
                                <asp:TextBox ID="txtPost" TextMode="MultiLine" 
                                    runat="server" CssClass="w3-border w3-padding" Height="80px" Width="100%"></asp:TextBox><br /><br />
                                <asp:Button ID="btnPost" runat="server" Text="POST" CssClass="w3-button w3-theme"
                                    OnClick="btnPost_Click" />
                                <asp:FileUpload ID="FileUploadPost" runat="server" ForeColor="#4CAF50" Height="35px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w3-container w3-card w3-white w3-round w3-margin">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                            <br />
                            <img src="../Styles/Images/AvatarBoy.png" alt="Avatar" class="w3-left w3-circle w3-margin-right"
                                style="width: 60px">
                            <asp:Label ID="lblDateTime" runat="server" CssClass="w3-right w3-opacity" Text='<%#Eval("Dated") %>'></asp:Label>
                            <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label>
                            <asp:Label ID="lblLastname" runat="server" Text='<%#Eval("LastName") %>'></asp:Label><br />
                            <asp:Label ID="lblRegNo" runat="server" Text='<%#Eval("fkRegNo") %>'></asp:Label>
                            <br />
                            <hr class="w3-clear">
                           
                            <%# LoadImage("../posts/" + Eval("PostID") + "/" + Eval("PostContentURL")) %>
                           
                            <asp:Label ID="lblPostText" runat="server" Text='<%#Eval("PostText") %>'></asp:Label><br /><br />
                            <asp:Image ID="imgPost" runat="server" CssClass="w3-margin-bottom" Height="500px" Width="100%" ImageUrl='<%# "../posts/" + Eval("PostID") + "/" + Eval("PostContentURL") %>' />
                            <br />
                            <asp:Button ID="btnLike" runat="server" Text="LIKE" CssClass="w3-button w3-theme-d1 w3-margin-bottom" />
                            <asp:Button ID="btnComment" runat="server" Text="COMMENT" CssClass="w3-button w3-theme-d1 w3-margin-bottom" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SSFdb.mdf;Integrated Security=True;User Instance=True"
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT [PostID], [PostText], [PostContentURL], [Dated],[FirstName], [LastName],[fkRegNo] FROM [tblPosts] ORDER BY [PostID] DESC">
                </asp:SqlDataSource>
                <!-- End Middle Column -->
            </div>
            <!-- Right Column -->
            <div class="w3-col m2">
                <div class="w3-card w3-round w3-white w3-center">
                    <div class="w3-container">
                        <p>
                            Upcoming Events:</p>
                        <img src="../Styles/Images/admission.jpg" alt="Forest" style="width: 100%;">
                        <p>
                            <strong>Holiday</strong></p>
                        <p>
                            Friday 15:00</p>
                        <p>
                            <button class="w3-button w3-block w3-theme-l4">
                                Info</button></p>
                    </div>
                </div>
                <br>
                <div class="w3-card w3-round w3-white w3-center">
                    <div class="w3-container">
                        <p>
                            Friend Request</p>
                        <img src="../Styles/Images/AvatarBoy.png" alt="Avatar" style="width: 50%"><br>
                        <span>Noman</span>
                        <div class="w3-row w3-opacity">
                            <div class="w3-half">
                                <button class="w3-button w3-block w3-green w3-section" title="Accept">
                                    <i class="fa fa-check"></i>
                                </button>
                            </div>
                            <div class="w3-half">
                                <button class="w3-button w3-block w3-red w3-section" title="Decline">
                                    <i class="fa fa-remove"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="w3-card w3-round w3-white w3-padding-16 w3-center">
                    <p>
                        ADS</p>
                </div>
                <br>
                <div class="w3-card w3-round w3-white w3-padding-32 w3-center">
                    <p>
                        <i class="fa fa-bug w3-xxlarge"></i>
                    </p>
                </div>
                <!-- End Right Column -->
            </div>
            <!-- End Grid -->
        </div>
        <!-- End Page Container -->
    </div>
</asp:Content>
