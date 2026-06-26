.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;
.super Ljava/lang/Object;
.source "LiveChannelFragment.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcBaseLayout$UserClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment;
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

    .line 466
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V
    .locals 2

    .line 469
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const-string v0, "screenRoom"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 470
    iget-object p2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    :goto_0
    if-nez p2, :cond_1

    return-void

    .line 474
    :cond_1
    new-instance p2, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 475
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget v1, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    invoke-virtual {p2, p1, v1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 476
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    iget v0, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 477
    :goto_1
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 478
    invoke-virtual {p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    return-void
.end method
