.class Lcom/narvii/chat/video/fragments/LiveCallFragment$4;
.super Ljava/lang/Object;
.source "LiveCallFragment.java"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/LiveCallFragment;->checkCommunityAvailability(Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

.field final synthetic val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

.field final synthetic val$isMePresenter:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iput-boolean p3, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$isMePresenter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    iget v0, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 412
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$isMePresenter:Z

    invoke-static {p1, p2, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->access$000(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
