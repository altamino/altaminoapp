.class Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;
.super Lcom/narvii/catalog/CatalogItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/CatalogItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0633

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    const/4 p3, 0x4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-object p1
.end method
