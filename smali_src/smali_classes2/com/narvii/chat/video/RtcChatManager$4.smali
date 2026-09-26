.class Lcom/narvii/chat/video/RtcChatManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/RtcChatManager$4;IISS)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/chat/video/RtcChatManager$4;->lambda$onAudioQuality$4(IISS)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/chat/video/RtcChatManager$4;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4;->lambda$onNetworkQuality$3(II)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/chat/video/RtcChatManager$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/RtcChatManager$4;->lambda$onRequestToken$1()V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/chat/video/RtcChatManager$4;I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4;->lambda$onExtraCallback$0(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/chat/video/RtcChatManager$4;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/RtcChatManager$4;->lambda$onNetworkStatusChanged$2(I)V

    return-void
.end method

.method private synthetic lambda$onAudioQuality$4(IISS)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/video/ui/UserStatusData;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/narvii/chat/video/RtcChatManager;->f(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/video/ui/UserStatusData;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lcom/narvii/video/ui/UserStatusData;->setAudioQuality(I)V

    .line 38
    .line 39
    iget v1, v1, Lcom/narvii/video/ui/UserStatusData;->netWorkQuality:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/video/ui/UserStatusData;->needUpdateNetWorkSummary(I)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/video/model/RtcEventHandler;->onAudioQuality(IISS)V

    .line 63
    :cond_0
    return-void
.end method

.method private synthetic lambda$onExtraCallback$0(I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0xa

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    aget-object p1, p2, p1

    .line 25
    .line 26
    check-cast p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    .line 27
    .line 28
    iget p2, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    check-cast p2, Lcom/narvii/video/ui/UserStatusData;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget v0, p2, Lcom/narvii/video/ui/UserStatusData;->streamType:I

    .line 45
    .line 46
    iget p1, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->rxStreamType:I

    .line 47
    .line 48
    if-eq v0, p1, :cond_1

    .line 49
    .line 50
    iput p1, p2, Lcom/narvii/video/ui/UserStatusData;->streamType:I

    .line 51
    :cond_1
    return-void
.end method

.method private synthetic lambda$onNetworkQuality$3(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->f(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/chat/video/RtcChatManager;->h(Lcom/narvii/chat/video/RtcChatManager;)Landroid/util/SparseArray;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->f(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/video/ui/UserStatusData;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iput p2, p1, Lcom/narvii/video/ui/UserStatusData;->netWorkQuality:I

    .line 33
    :cond_1
    return-void
.end method

.method private synthetic lambda$onNetworkStatusChanged$2(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    .line 18
    :cond_0
    return-void
.end method

.method private synthetic lambda$onRequestToken$1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/video/model/RtcEventHandler;->onRequestToken()V

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioQuality(IISS)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->f(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/e;

    .line 12
    move-object v1, v0

    .line 13
    move-object v2, p0

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    move v6, p4

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/narvii/chat/video/e;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IISS)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$4$10;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$9;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$9;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "errorCode: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, " errorDescription: "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string p2, "agoraError"

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public varargs onExtraCallback(I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/d;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->b(Lcom/narvii/chat/video/RtcChatManager;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$2;

    .line 12
    move-object v2, v0

    .line 13
    move-object v3, p0

    .line 14
    move v4, p1

    .line 15
    move v5, p2

    .line 16
    move v6, p3

    .line 17
    move v7, p4

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/narvii/chat/video/RtcChatManager$4$2;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IIII)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    :cond_0
    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/narvii/chat/video/RtcChatManager$4$3;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onLeaveChannel()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$5;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/RtcChatManager$4$5;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onLocalUserSteamDecoded(I)V
    .locals 0

    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 0

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/chat/video/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/chat/video/c;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;II)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onNetworkStatusChanged(I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/b;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/narvii/chat/video/RtcChatManager$4$4;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onRemoteUserJoined(I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/RtcChatManager$4$1;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onRequestToken()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/a;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$7;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$7;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IZ)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$8;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$8;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;IZ)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onUserOffline(II)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager$4$6;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManager$4$6;-><init>(Lcom/narvii/chat/video/RtcChatManager$4;II)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
