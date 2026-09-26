.class Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;
.super Lcom/narvii/catalog/SubmitFavoriteAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/catalog/SubmitFavoriteAdapter;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$SubmitCatalogAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

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
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/catalog/SubmitFavoriteAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method
