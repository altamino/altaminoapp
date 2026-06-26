.class Lcom/narvii/chat/invite/StartGroupChatFragment$1;
.super Ljava/lang/Object;
.source "StartGroupChatFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/invite/StartGroupChatFragment;->onConfirmPick(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/invite/StartGroupChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/invite/StartGroupChatFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/chat/invite/StartGroupChatFragment$1;->this$0:Lcom/narvii/chat/invite/StartGroupChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/ChatThread;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/narvii/chat/invite/StartGroupChatFragment$1;->this$0:Lcom/narvii/chat/invite/StartGroupChatFragment;

    iget-object v1, v0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/invite/StartGroupChatFragment$1;->this$0:Lcom/narvii/chat/invite/StartGroupChatFragment;

    iget-object v0, v0, Lcom/narvii/chat/invite/StartGroupChatFragment;->bubble:Lcom/narvii/model/ChatBubble;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/invite/StartGroupChatFragment$1;->this$0:Lcom/narvii/chat/invite/StartGroupChatFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/invite/StartGroupChatFragment$1;->call(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
