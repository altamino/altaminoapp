.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;
.super Lcom/narvii/master/search/GlobalSearchMergeAdapter;
.source "GlobalChatsSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatsSearchFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatsSearchFragment.kt\ncom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1\n*L\n1#1,432:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 3

    .line 150
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getHideMatchIdAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isListShown()Z
    .locals 3

    .line 154
    invoke-super {p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->isListShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatSectionAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$ChatSectionAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onErrorRetry()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->onErrorRetry()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 166
    iget-object v0, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-virtual {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->getAminoIdMatchedAdapter()Lcom/narvii/master/search/AminoIdMatchedAdapter;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getChatAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/master/search/GlobalChatsSearchFragment$Adapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 160
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$createAdapter$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$sendRequest(Lcom/narvii/master/search/GlobalChatsSearchFragment;)V

    return-void
.end method
