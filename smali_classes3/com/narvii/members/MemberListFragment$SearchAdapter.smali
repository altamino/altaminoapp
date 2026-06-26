.class Lcom/narvii/members/MemberListFragment$SearchAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MemberListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/MemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field searchBar:Lcom/narvii/widget/SearchBar;

.field final synthetic this$0:Lcom/narvii/members/MemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/members/MemberListFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->this$0:Lcom/narvii/members/MemberListFragment;

    .line 128
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    if-nez p1, :cond_0

    const p1, 0x7f0b05ff

    .line 149
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    iput-object p1, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 150
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object v0, v0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment$SearchAdapter;->this$0:Lcom/narvii/members/MemberListFragment;

    iget-object v0, v0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
