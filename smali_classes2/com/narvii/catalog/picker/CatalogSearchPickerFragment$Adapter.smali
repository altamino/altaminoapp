.class Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;
.super Lcom/narvii/catalog/search/CatalogSearchAdapter;
.source "CatalogSearchPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;)V
    .locals 2

    .line 89
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment$Adapter;->this$0:Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;

    .line 90
    iget-object v0, p1, Lcom/narvii/catalog/picker/CatalogSearchPickerFragment;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/catalog/search/CatalogSearchAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904e4

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method
