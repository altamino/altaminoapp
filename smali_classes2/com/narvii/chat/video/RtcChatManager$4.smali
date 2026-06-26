.class Lcom/narvii/chat/video/RtcChatManager$4;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Lcom/narvii/video/model/RtcEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/RtcChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/RtcChatManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQuality(IISS)V
    .locals 7

    .line 743
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$1100(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 746
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$15;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/video/RtcChatManager$4$15;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IISS)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 1

    .line 667
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$10;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$4$10;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 1

    .line 655
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$9;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 765
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorDescription: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "agoraError"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs onExtraCallback(I[Ljava/lang/Object;)V
    .locals 1

    .line 683
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$11;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 8

    .line 508
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$500(Lcom/narvii/chat/video/RtcChatManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 509
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$2;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/narvii/chat/video/RtcChatManager$4$2;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IIII)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 1

    .line 525
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/narvii/chat/video/RtcChatManager$4$3;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLeaveChannel()V
    .locals 1

    .line 560
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$4$5;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLocalUserSteamDecoded(I)V
    .locals 0

    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 0

    .line 728
    new-instance p2, Lcom/narvii/chat/video/RtcChatManager$4$14;

    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/chat/video/RtcChatManager$4$14;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;II)V

    invoke-static {p2}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNetworkStatusChanged(I)V
    .locals 1

    .line 715
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$13;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$4$13;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 1

    .line 544
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/narvii/chat/video/RtcChatManager$4$4;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoteUserJoined(I)V
    .locals 1

    .line 489
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$4$1;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestToken()V
    .locals 1

    .line 703
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$12;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$4$12;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 1

    .line 613
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$7;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IZ)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 1

    .line 633
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$8;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IZ)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserOffline(II)V
    .locals 1

    .line 582
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$6;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;II)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
