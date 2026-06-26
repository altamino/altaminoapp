.class Lcom/narvii/video/model/MyEngineEventHandler$1;
.super Lio/agora/rtc/IRtcEngineEventHandler;
.source "MyEngineEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/model/MyEngineEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/model/MyEngineEventHandler;


# direct methods
.method constructor <init>(Lcom/narvii/video/model/MyEngineEventHandler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-direct {p0}, Lio/agora/rtc/IRtcEngineEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQuality(IISS)V
    .locals 3

    .line 204
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioQuality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 208
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/narvii/video/model/RtcEventHandler;->onAudioQuality(IISS)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 3

    .line 287
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRouteChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 291
    invoke-interface {v1, p1}, Lcom/narvii/video/model/RtcEventHandler;->onAudioRouteChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 196
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 198
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClientRoleChanged(II)V
    .locals 3

    .line 87
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "role change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onClientRoleChanged(II)V

    return-void
.end method

.method public onConnectionInterrupted()V
    .locals 3

    .line 275
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionInterrupted"

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    const/4 v2, 0x3

    .line 280
    invoke-interface {v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionLost()V
    .locals 3

    .line 264
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionLost"

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    const/4 v2, 0x2

    .line 269
    invoke-interface {v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 7

    .line 219
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 223
    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onError(ILjava/lang/String;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p1, v2, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v5, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-interface {v1, v2, v4}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFirstLocalVideoFrame(III)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstLocalVideoFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFirstRemoteAudioDecoded(II)V
    .locals 3

    .line 69
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstRemoteAudioDecoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioDecoded(II)V

    return-void
.end method

.method public onFirstRemoteAudioFrame(II)V
    .locals 3

    .line 75
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstRemoteAudioFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioFrame(II)V

    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 6

    .line 99
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstRemoteVideoDecoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 104
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/narvii/video/model/RtcEventHandler;->onFirstRemoteVideoDecoded(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFirstRemoteVideoFrame(IIII)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstRemoteVideoFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteVideoFrame(IIII)V

    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 7

    .line 110
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinChannelSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$200(Lcom/narvii/video/model/MyEngineEventHandler;)Lcom/narvii/video/model/EngineConfig;

    move-result-object v0

    iput p2, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 115
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 118
    invoke-interface {v1, p1, p2, p3}, Lcom/narvii/video/model/RtcEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLastmileQuality(I)V
    .locals 3

    .line 214
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLastmileQuality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {p1}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 134
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 136
    invoke-interface {v0}, Lcom/narvii/video/model/RtcEventHandler;->onLeaveChannel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 2

    .line 254
    invoke-super {p0, p1, p2, p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkQuality(III)V

    .line 255
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 256
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 258
    invoke-interface {v1, p1, p2, p3}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkQuality(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNetworkTypeChanged(I)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkTypeChanged(I)V

    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 126
    invoke-interface {v1, p1, p2, p3}, Lcom/narvii/video/model/RtcEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRejoinChannelSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V
    .locals 5

    .line 184
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVideoStats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->rxStreamType:I

    if-nez v2, :cond_0

    const-string v2, "high"

    goto :goto_0

    :cond_0
    const-string v2, "low"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    const/16 v2, 0xa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 189
    invoke-interface {v1, v2, v3}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onRequestToken()V
    .locals 2

    .line 308
    invoke-super {p0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRequestToken()V

    .line 309
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 310
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 312
    invoke-interface {v1}, Lcom/narvii/video/model/RtcEventHandler;->onRequestToken()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 0

    return-void
.end method

.method public onStreamMessage(II[B)V
    .locals 6

    .line 234
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 237
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStreamMessageError(IIIII)V
    .locals 8

    .line 244
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamMessageError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 246
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    const/16 v1, 0x9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 248
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on stream msg error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v4}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V
    .locals 2

    .line 47
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V

    .line 48
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserInfoUpdated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 50
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 52
    invoke-interface {v0, p1}, Lcom/narvii/video/model/RtcEventHandler;->onRemoteUserJoined(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserJoined(II)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserJoined "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 60
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 62
    invoke-interface {v0, p1}, Lcom/narvii/video/model/RtcEventHandler;->onRemoteUserJoined(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 6

    .line 169
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteAudio(IZ)V

    .line 170
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserMuteAudio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 172
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 174
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteAudio(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 6

    .line 159
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserMuteVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 163
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteVideo(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUserOffline(II)V
    .locals 6

    .line 149
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserOffline "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 153
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onUserOffline(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWarning(I)V
    .locals 3

    .line 296
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    const/16 v2, 0x68

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    .line 301
    invoke-interface {v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
