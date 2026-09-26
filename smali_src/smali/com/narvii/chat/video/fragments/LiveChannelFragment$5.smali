.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onUserClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    const-string/jumbo v0, "screenRoom"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    const/4 p2, 0x0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 19
    .line 20
    :goto_0
    if-nez p2, :cond_1

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    new-instance p2, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 31
    .line 32
    const-string v0, "id"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 39
    .line 40
    iget v1, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1, v1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$5;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 58
    .line 59
    iget v0, v0, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->channelType:I

    .line 60
    const/4 v1, 0x5

    .line 61
    .line 62
    if-eq v0, v1, :cond_2

    .line 63
    const/4 v0, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    .line 76
    return-void
.end method
