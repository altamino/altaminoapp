.class Lcom/narvii/chat/audio/Mixer$RecordThread;
.super Ljava/lang/Thread;
.source "Mixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/audio/Mixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordThread"
.end annotation


# instance fields
.field final record:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/narvii/chat/audio/Mixer;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/audio/Mixer;Landroid/media/AudioRecord;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    const-string p1, "audio-record"

    .line 165
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 166
    iput-object p2, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->record:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 171
    iget-object v0, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v0, v0, Lcom/narvii/chat/audio/Mixer;->minBufferSize:I

    div-int/lit8 v0, v0, 0x2

    .line 172
    new-array v1, v0, [S

    .line 173
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v2, v2, Lcom/narvii/chat/audio/Mixer;->thread:Ljava/lang/Thread;

    if-ne v2, p0, :cond_12

    .line 174
    iget-object v2, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->record:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    if-gez v2, :cond_1

    goto/16 :goto_9

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    .line 181
    aget-short v5, v1, v3

    .line 182
    iget-object v6, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v7, v6, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    if-le v5, v7, :cond_2

    .line 183
    iput v5, v6, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    goto :goto_2

    :cond_2
    if-ge v5, v4, :cond_3

    move v4, v5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    goto/16 :goto_7

    :cond_5
    if-lez v2, :cond_f

    .line 189
    iget-object v4, v4, Lcom/narvii/chat/audio/Mixer;->bufferLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v2, :cond_b

    .line 196
    :try_start_0
    aget-short v7, v1, v5

    .line 197
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v8, v8, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    if-le v7, v8, :cond_6

    .line 198
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iput v7, v8, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    goto :goto_4

    :cond_6
    if-ge v7, v6, :cond_7

    move v6, v7

    .line 203
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v8, v8, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    if-ge v5, v8, :cond_8

    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v8, v8, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    aget-short v8, v8, v5

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    int-to-float v7, v7

    .line 204
    iget-object v9, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v9, v9, Lcom/narvii/chat/audio/Mixer;->micVolumn:F

    mul-float v7, v7, v9

    float-to-int v7, v7

    int-to-float v8, v8

    iget-object v9, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v9, v9, Lcom/narvii/chat/audio/Mixer;->audioVolumn:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    const/16 v8, 0x7fff

    const/16 v9, -0x8000

    if-ge v7, v9, :cond_9

    const/16 v7, -0x8000

    goto :goto_6

    :cond_9
    if-le v7, v8, :cond_a

    const/16 v7, 0x7fff

    :cond_a
    :goto_6
    int-to-short v7, v7

    .line 210
    aput-short v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 213
    :cond_b
    iget-object v5, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v5, v5, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_e

    .line 215
    iget-object v7, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v7, v7, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    if-eqz v7, :cond_c

    .line 216
    array-length v8, v7

    iget-object v9, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v9, v9, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    array-length v9, v9

    if-eq v8, v9, :cond_d

    .line 217
    :cond_c
    iget-object v7, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v7, v7, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    array-length v7, v7

    new-array v7, v7, [S

    .line 219
    :cond_d
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v8, v8, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    iget-object v9, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v9, v9, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    sub-int/2addr v9, v5

    invoke-static {v8, v5, v7, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v9, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-object v9, v9, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    iput-object v9, v8, Lcom/narvii/chat/audio/Mixer;->buffer2:[S

    .line 221
    iget-object v8, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iput-object v7, v8, Lcom/narvii/chat/audio/Mixer;->buffer:[S

    .line 222
    iget-object v7, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v8, v7, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    sub-int/2addr v8, v5

    iput v8, v7, Lcom/narvii/chat/audio/Mixer;->bufferCount:I

    .line 224
    :cond_e
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    invoke-virtual {v4, v1, v3, v2}, Lcom/narvii/chat/audio/Mixer;->onMixedBuffer([SII)V

    move v3, v6

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 224
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    :goto_7
    neg-int v2, v3

    .line 229
    iget-object v3, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v4, v3, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    if-le v2, v4, :cond_10

    .line 230
    iput v2, v3, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 233
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 234
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget-wide v5, v4, Lcom/narvii/chat/audio/Mixer;->levelTime:J

    const-wide/16 v7, 0xc8

    add-long/2addr v5, v7

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    .line 236
    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    div-int/lit16 v5, v5, 0x3e8

    .line 237
    sget-object v6, Lcom/narvii/chat/audio/Mixer;->PERM:[F

    array-length v7, v6

    if-ge v5, v7, :cond_11

    .line 238
    aget v5, v6, v5

    iput v5, v4, Lcom/narvii/chat/audio/Mixer;->level:F

    goto :goto_8

    .line 240
    :cond_11
    array-length v5, v6

    add-int/lit8 v5, v5, -0x1

    aget v5, v6, v5

    iput v5, v4, Lcom/narvii/chat/audio/Mixer;->level:F

    .line 242
    :goto_8
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->level:F

    invoke-virtual {v4, v5}, Lcom/narvii/chat/audio/Mixer;->onLevelIndicator(F)V

    .line 245
    iget-object v4, p0, Lcom/narvii/chat/audio/Mixer$RecordThread;->this$0:Lcom/narvii/chat/audio/Mixer;

    iget v5, v4, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/narvii/chat/audio/Mixer;->levelMax:I

    .line 246
    iput-wide v2, v4, Lcom/narvii/chat/audio/Mixer;->levelTime:J

    goto/16 :goto_0

    :cond_12
    :goto_9
    return-void
.end method
