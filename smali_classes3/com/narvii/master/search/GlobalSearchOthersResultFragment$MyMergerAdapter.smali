.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "GlobalSearchOthersResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyMergerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/MergeAdapter;->getTotalCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isListShown()Z
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/MergeAdapter;->getTotalCount()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    if-nez v0, :cond_1

    return v2

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onErrorRetry()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    return-void
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

    .line 318
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 319
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    return-void
.end method
