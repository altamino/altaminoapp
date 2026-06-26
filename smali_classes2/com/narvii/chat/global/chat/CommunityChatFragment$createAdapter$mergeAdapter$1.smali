.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "CommunityChatFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/chat/global/chat/RecommendChatAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/global/chat/RecommendChatAdapter;",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->$recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    invoke-direct {p0, p3}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->$recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 162
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->$recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
