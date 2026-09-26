.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;
.super Lcom/narvii/list/MergeAdapter;
.source "SourceFile"


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


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/chat/global/chat/RecommendChatAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->$recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->$recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/list/MergeAdapter;->isListShown()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
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
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$createAdapter$mergeAdapter$1;->$recommendAdapter:Lcom/narvii/chat/global/chat/RecommendChatAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 9
    return-void
.end method
