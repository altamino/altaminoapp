.class public Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;
.super Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.source "SourceFile"


# instance fields
.field bubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "bubble"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/ChatBubble;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    .line 20
    return-void
.end method

.method protected onCreateChatClicked()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->threadHelper:Lcom/narvii/chat/thread/ThreadHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    .line 5
    .line 6
    new-instance v2, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;-><init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;)V

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/narvii/chat/thread/ThreadHelper;->showCreateChatDialog(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method protected onThreadPicked(Lcom/narvii/model/ChatThread;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->bubble:Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    new-instance v4, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, p0, v0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$2;-><init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/ChatThread;)V

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 33
    return-void
.end method
