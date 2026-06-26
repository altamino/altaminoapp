.class public final Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;
.super Ljava/lang/Object;
.source "ChatMentionUserListFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatMentionUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FetchMentionListTask"
.end annotation


# instance fields
.field private keyword:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/input/ChatMentionUserListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurPageSize$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I

    move-result v0

    iget-object v3, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v3}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getPageSizeLimit$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v4}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    invoke-static {v0, v4, v1, v5, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    iget-object v1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$setCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->setLocalFilterRequired(Z)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    iget-object v3, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$setCurKeyword$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->this$0:Lcom/narvii/chat/input/ChatMentionUserListFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment;->access$getAdapter$p(Lcom/narvii/chat/input/ChatMentionUserListFragment;)Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatMentionUserListFragment$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/narvii/chat/input/ChatMentionUserListFragment$FetchMentionListTask;->keyword:Ljava/lang/String;

    return-void
.end method
