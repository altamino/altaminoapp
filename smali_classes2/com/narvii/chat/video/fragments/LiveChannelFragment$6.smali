.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;
.super Ljava/lang/Object;
.source "LiveChannelFragment.java"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment;->checkCommunityAvailability()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 605
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget-object v0, p2, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/chat/rtc/RtcService;->getMappedSignallingChannel(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 606
    iget p2, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 607
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget-object v0, p2, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-virtual {p2}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThreadId()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-instance v2, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$6$1;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment$6;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->updateJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
