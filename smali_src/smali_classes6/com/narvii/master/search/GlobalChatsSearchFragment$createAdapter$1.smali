.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;
.super Lcom/narvii/master/search/GlobalSearchMergeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getHideMatchIdAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "chatSectionAdapter"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 38
    move-object v0, v1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 54
    move-result v0

    .line 55
    .line 56
    if-lez v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    const-string v0, "chatAdapter"

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v1, v0

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v1}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->isEmpty()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 v0, 0x0

    .line 81
    :goto_2
    return v0
.end method

.method public isListShown()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "chatSectionAdapter"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    move-object v0, v1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->isListShown()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    const-string v0, "chatAdapter"

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v1, v0

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->isListShown()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 66
    :goto_2
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->onErrorRetry()V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "chatAdapter"

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    .line 34
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
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
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    const-string p2, "chatAdapter"

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    move-object p2, v0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    .line 35
    return-void
.end method
