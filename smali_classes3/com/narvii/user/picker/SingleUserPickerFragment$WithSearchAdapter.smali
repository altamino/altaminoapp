.class Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;
.super Lcom/narvii/list/HideTopAdapter;
.source "SingleUserPickerFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/picker/SingleUserPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WithSearchAdapter"
.end annotation


# instance fields
.field searchBar:Lcom/narvii/widget/SearchBar;

.field final synthetic this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/picker/SingleUserPickerFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    .line 88
    invoke-direct {p0, p1}, Lcom/narvii/list/HideTopAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getTopView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    if-nez v0, :cond_0

    const v0, 0x7f0b05ff

    .line 94
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 95
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
