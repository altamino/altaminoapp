.class Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "CatalogFragment.java"


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

    .line 894
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 895
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->errorMsg:Ljava/lang/String;

    return-object v0

    .line 921
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v2, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isEmpty()Z

    move-result v0

    return v0

    .line 929
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isListShown()Z
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v2, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    return v0

    .line 908
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->itemAdapter:Lcom/narvii/catalog/CatalogFragment$IAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

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

    .line 900
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 901
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$MyMergeAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p1}, Lcom/narvii/catalog/CatalogFragment;->access$200(Lcom/narvii/catalog/CatalogFragment;)V

    return-void
.end method
