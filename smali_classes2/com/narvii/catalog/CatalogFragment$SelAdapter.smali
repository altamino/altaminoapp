.class Lcom/narvii/catalog/CatalogFragment$SelAdapter;
.super Lcom/narvii/list/select/SelectableAdapter;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelAdapter"
.end annotation


# instance fields
.field selAll:Z

.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 2

    .line 1320
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v0, 0x7f0b060e

    const/4 v1, 0x0

    .line 1321
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/list/select/SelectableAdapter;-><init>(Lcom/narvii/app/NVContext;IZ)V

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .line 1326
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1334
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/select/SelectableAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
