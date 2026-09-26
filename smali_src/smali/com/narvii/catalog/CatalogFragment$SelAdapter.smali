.class Lcom/narvii/catalog/CatalogFragment$SelAdapter;
.super Lcom/narvii/list/select/SelectableAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d06c2

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/list/select/SelectableAdapter;-><init>(Lcom/narvii/app/NVContext;IZ)V

    .line 10
    return-void
.end method


# virtual methods
.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/list/select/SelectableAdapter;->isSelected(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/select/SelectableAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method
