.class public Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;
.super Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.source "SetBubbleForThreadFragment.java"


# instance fields
.field bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "bubble"

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    return-void
.end method

.method protected onCreateChatClicked()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->threadHelper:Lcom/narvii/chat/thread/ThreadHelper;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    new-instance v2, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;-><init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected onThreadPicked(Lcom/narvii/model/ChatThread;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 60
    iget-object v2, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;

    invoke-direct {v5, p0, v0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;-><init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
