.class Lcom/narvii/chat/video/fragments/LiveCallFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$isMePresenter:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 5
    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 3
    .line 4
    new-instance v1, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v2, "joinChannel"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->this$0:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$cu:Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/video/fragments/LiveCallFragment$4;->val$isMePresenter:Z

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, v0}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->y(Lcom/narvii/chat/video/fragments/LiveCallFragment;Lcom/narvii/chat/rtc/ChannelUserWrapper;Z)V

    .line 12
    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
