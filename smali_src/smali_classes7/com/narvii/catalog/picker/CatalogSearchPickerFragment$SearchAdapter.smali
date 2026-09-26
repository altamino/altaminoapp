.class Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;
.super Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of p3, p1, Lcom/narvii/widget/SearchBar;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    move-object p2, p1

    .line 12
    .line 13
    check-cast p2, Lcom/narvii/widget/SearchBar;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 21
    :cond_0
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/catalog/search/CatalogSearchAdapter;->setKeyword(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
