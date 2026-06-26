.class Lcom/narvii/members/PeopleListAdapter$SearchAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "PeopleListAdapter.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/PeopleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field searchBar:Lcom/narvii/widget/SearchBar;

.field stated:Z

.field final synthetic this$0:Lcom/narvii/members/PeopleListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/PeopleListAdapter;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 279
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$000(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

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

    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 299
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    if-nez p1, :cond_0

    const p1, 0x7f0b05ff

    .line 300
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 301
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 302
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 310
    iget-boolean p1, p0, Lcom/narvii/members/PeopleListAdapter$SearchAdapter;->stated:Z

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    :cond_0
    return-void
.end method
