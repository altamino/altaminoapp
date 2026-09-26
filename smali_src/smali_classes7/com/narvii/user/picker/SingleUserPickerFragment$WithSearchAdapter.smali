.class Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;
.super Lcom/narvii/list/HideTopAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/HideTopAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getTopView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d06b3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 21
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;->this$0:Lcom/narvii/user/picker/SingleUserPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method
