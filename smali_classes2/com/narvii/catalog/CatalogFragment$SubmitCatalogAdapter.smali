.class Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;
.super Lcom/narvii/catalog/SubmitFavoriteAdapter;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubmitCatalogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 1427
    invoke-direct {p0, p1}, Lcom/narvii/catalog/SubmitFavoriteAdapter;-><init>(Lcom/narvii/app/NVFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1435
    :cond_0
    invoke-super {p0}, Lcom/narvii/catalog/SubmitFavoriteAdapter;->getCount()I

    move-result v0

    return v0
.end method
