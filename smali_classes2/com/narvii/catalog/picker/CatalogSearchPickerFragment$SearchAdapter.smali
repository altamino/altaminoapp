.class Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;
.super Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.source "CatalogSearchPickerFragment.java"

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

    .line 102
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    .line 103
    invoke-direct {p0, p2}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 109
    instance-of p3, p1, Lcom/narvii/widget/SearchBar;

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 110
    move-object p2, p1

    check-cast p2, Lcom/narvii/widget/SearchBar;

    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    :cond_0
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    iget-object p1, p1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;

    invoke-virtual {p1, p2}, Lcom/narvii/catalog/search/CatalogSearchAdapter;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
