.class Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaCodecEncoderCallback"
.end annotation


# instance fields
.field stale:Z

.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 1
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "e"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "onError "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "MediaCodecVideoEncoder"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "index"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1000(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    monitor-enter p1

    .line 17
    .line 18
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/util/LinkedHashSet;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "info"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    const-string v0, "MediaCodecVideoEncoder"

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "discarding output since encoder is released!"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string p3, "failed to get output buffer, index: "

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_1
    :try_start_1
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 54
    .line 55
    and-int/lit8 v1, v1, 0x2

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string v2, "[async] Config frame generated. Offset: "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, ". Size: "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 92
    .line 93
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 97
    move-result-object p3

    .line 98
    .line 99
    .line 100
    invoke-static {v1, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1202(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 103
    .line 104
    .line 105
    invoke-static {p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1200(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/nio/ByteBuffer;

    .line 106
    move-result-object p3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 110
    goto :goto_1

    .line 111
    :catch_1
    move-exception p1

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_2
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p3, p2, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 121
    .line 122
    .line 123
    invoke-static {p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    .line 124
    move-result-wide v1

    .line 125
    const/4 v3, 0x1

    .line 126
    .line 127
    .line 128
    invoke-static {p3, v1, v2, v3, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :goto_0
    const-string p3, "handle output buffer error"

    .line 132
    .line 133
    .line 134
    invoke-static {v0, p3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    :goto_1
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    .line 140
    move-result-object p1

    .line 141
    const/4 p3, 0x0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 145
    return-void

    .line 146
    .line 147
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    const-string v1, "getOutputBuffer exception, index: "

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-static {v0, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "format"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "onOutputFormatChanged "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "MediaCodecVideoEncoder"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
