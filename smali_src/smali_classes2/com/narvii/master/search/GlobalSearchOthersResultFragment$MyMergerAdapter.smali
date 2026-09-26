.class public final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/search/GlobalSearchOthersResultFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :goto_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/MergeAdapter;->getTotalCount()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    :goto_0
    return v1
.end method

.method public isListShown()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/MergeAdapter;->getTotalCount()I

    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    return v2

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getRequestSent$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v1, v2

    .line 55
    :goto_0
    return v1
.end method

.method public onErrorRetry()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$setErrorMsg$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    .line 12
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .param p2    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$MyMergerAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V

    .line 9
    return-void
.end method
