.class Lcom/narvii/video/model/MyEngineEventHandler$1;
.super Lio/agora/rtc/IRtcEngineEventHandler;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lio/agora/rtc/IRtcEngineEventHandler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAudioQuality(IISS)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onAudioQuality "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/narvii/video/model/RtcEventHandler;->onAudioQuality(IISS)V

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public onAudioRouteChanged(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onAudioRouteChanged "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p1}, Lcom/narvii/video/model/RtcEventHandler;->onAudioRouteChanged(I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onClientRoleChanged(II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "role change "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onClientRoleChanged(II)V

    .line 36
    return-void
.end method

.method public onConnectionInterrupted()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "onConnectionInterrupted"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 36
    const/4 v2, 0x3

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public onConnectionLost()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "onConnectionLost"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onError "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, p1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onError(ILjava/lang/String;)V

    .line 70
    .line 71
    const/16 v2, 0x11

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x2

    .line 74
    const/4 v5, 0x1

    .line 75
    .line 76
    if-eq p1, v2, :cond_1

    .line 77
    .line 78
    const/16 v2, 0x12

    .line 79
    .line 80
    if-eq p1, v2, :cond_0

    .line 81
    .line 82
    new-array v2, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    aput-object v4, v2, v3

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    aput-object v3, v2, v5

    .line 95
    .line 96
    const/16 v3, 0x9

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v3, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    aput-object v4, v2, v3

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    aput-object v3, v2, v5

    .line 115
    .line 116
    const/16 v3, 0x3ea

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v3, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    aput-object v4, v2, v3

    .line 129
    .line 130
    .line 131
    invoke-static {p1}, Lio/agora/rtc/RtcEngine;->getErrorDescription(I)Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    aput-object v3, v2, v5

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v5, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    return-void
.end method

.method public onFirstLocalVideoFrame(III)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onFirstLocalVideoFrame "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onFirstRemoteAudioDecoded(II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onFirstRemoteAudioDecoded "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioDecoded(II)V

    .line 28
    return-void
.end method

.method public onFirstRemoteAudioFrame(II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onFirstRemoteAudioFrame "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioFrame(II)V

    .line 28
    return-void
.end method

.method public onFirstRemoteVideoDecoded(IIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onFirstRemoteVideoDecoded "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    int-to-long v2, p1

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    and-long/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/narvii/video/model/RtcEventHandler;->onFirstRemoteVideoDecoded(IIII)V

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public onFirstRemoteVideoFrame(IIII)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onFirstRemoteVideoFrame "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteVideoFrame(IIII)V

    .line 28
    return-void
.end method

.method public onJoinChannelSuccess(Ljava/lang/String;II)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onJoinChannelSuccess "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    int-to-long v3, p2

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    const-wide v5, 0xffffffffL

    .line 35
    and-long/2addr v3, v5

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$200(Lcom/narvii/video/model/MyEngineEventHandler;)Lcom/narvii/video/model/EngineConfig;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput p2, v0, Lcom/narvii/video/model/EngineConfig;->mUid:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, p1, p2, p3}, Lcom/narvii/video/model/RtcEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public onLastmileQuality(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onLastmileQuality "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/narvii/video/model/RtcEventHandler;->onLeaveChannel()V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onNetworkQuality(III)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkQuality(III)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1, p2, p3}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkQuality(III)V

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public onNetworkTypeChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkTypeChanged(I)V

    .line 4
    return-void
.end method

.method public onRejoinChannelSuccess(Ljava/lang/String;II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, p1, p2, p3}, Lcom/narvii/video/model/RtcEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, "onRejoinChannelSuccess "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p1, " "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onRemoteVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onRemoteVideoStats "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget v2, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, " "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget v2, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->rxStreamType:I

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    const-string v2, "high"

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    const-string v2, "low"

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 70
    const/4 v2, 0x1

    .line 71
    .line 72
    new-array v2, v2, [Ljava/lang/Object;

    .line 73
    const/4 v3, 0x0

    .line 74
    .line 75
    aput-object p1, v2, v3

    .line 76
    .line 77
    const/16 v3, 0xa

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v3, v2}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    return-void
.end method

.method public onRequestToken()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRequestToken()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Lcom/narvii/video/model/RtcEventHandler;->onRequestToken()V

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 0

    return-void
.end method

.method public onStreamMessage(II[B)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onStreamMessage "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    int-to-long v2, p1

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    and-long/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p2}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 76
    const/4 v1, 0x2

    .line 77
    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    aput-object v3, v1, v2

    .line 86
    const/4 v2, 0x1

    .line 87
    .line 88
    aput-object p3, v1, v2

    .line 89
    const/4 v2, 0x3

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v2, v1}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public onStreamMessageError(IIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onStreamMessageError "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    int-to-long v2, p1

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    and-long/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p2}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 84
    const/4 v1, 0x2

    .line 85
    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    const/4 v4, 0x0

    .line 88
    .line 89
    .line 90
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    aput-object v5, v1, v4

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v5, "on stream msg error "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    const/4 v5, 0x1

    .line 124
    .line 125
    aput-object v4, v1, v5

    .line 126
    .line 127
    const/16 v4, 0x9

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v4, v1}, Lcom/narvii/video/model/RtcEventHandler;->onExtraCallback(I[Ljava/lang/Object;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "onUserInfoUpdated "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p1}, Lcom/narvii/video/model/RtcEventHandler;->onRemoteUserJoined(I)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public onUserJoined(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "onUserJoined "

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
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/video/model/RtcEventHandler;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p1}, Lcom/narvii/video/model/RtcEventHandler;->onRemoteUserJoined(I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onUserMuteAudio(IZ)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteAudio(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v2, "onUserMuteAudio "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    int-to-long v2, p1

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide v4, 0xffffffffL

    .line 24
    and-long/2addr v2, v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteAudio(IZ)V

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public onUserMuteVideo(IZ)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onUserMuteVideo "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    int-to-long v2, p1

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    and-long/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onUserMuteVideo(IZ)V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public onUserOffline(II)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onUserOffline "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    int-to-long v2, p1

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    and-long/2addr v2, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p1, p2}, Lcom/narvii/video/model/RtcEventHandler;->onUserOffline(II)V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method public onWarning(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/video/model/MyEngineEventHandler;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "onWarning "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler$1;->this$0:Lcom/narvii/video/model/MyEngineEventHandler;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/video/model/MyEngineEventHandler;->access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/video/model/RtcEventHandler;

    .line 51
    .line 52
    const/16 v2, 0x68

    .line 53
    .line 54
    if-ne p1, v2, :cond_0

    .line 55
    const/4 v2, 0x1

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onNetworkStatusChanged(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method
