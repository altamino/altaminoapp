.class Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->errorMsg:Ljava/lang/String;

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->errorMessage()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 20
    .line 21
    iget-boolean v2, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x3

    .line 33
    .line 34
    if-ne v0, v2, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_2
    return v1
.end method

.method public isListShown()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x3

    .line 25
    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    return v1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/catalog/CatalogFragment;->w(Lcom/narvii/catalog/CatalogFragment;)V

    .line 9
    return-void
.end method
