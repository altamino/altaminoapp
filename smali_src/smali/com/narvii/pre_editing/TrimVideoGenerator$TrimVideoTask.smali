.class final Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;
.super Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrimVideoTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask<",
        "Lw7/u<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FORMAT_KEY_ROTATION:Ljava/lang/String; = "rotation-degrees"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final DEFAULT_TRIM_BUFFER_SIZE:I

.field private audioExtractor:Landroid/media/MediaExtractor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dstPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final endMs:J

.field private outputMuxer:Landroid/media/MediaMuxer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final srcPath:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startMs:J

.field private videoExtractor:Landroid/media/MediaExtractor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;

    return-void
.end method

.method public constructor <init>(Lw7/u;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 1
    .param p1    # Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "srcPath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "dstPath"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "callback"

    .line 13
    .line 14
    .line 15
    invoke-static {p7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p2, p7}, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;-><init>(Ljava/lang/String;Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lw7/u;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->dstPath:Ljava/lang/String;

    .line 23
    .line 24
    iput-wide p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->startMs:J

    .line 25
    .line 26
    iput-wide p5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    .line 27
    .line 28
    iput-object p7, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    .line 29
    .line 30
    const/high16 p1, 0x100000

    .line 31
    .line 32
    iput p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->DEFAULT_TRIM_BUFFER_SIZE:I

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;-><init>()V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    .line 40
    return-void
.end method

.method private final extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lw7/u;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaExtractor;",
            "Landroid/media/MediaMuxer;",
            "Lw7/u<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lw7/u;->d()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 20
    :goto_0
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    .line 33
    move-result v3

    .line 34
    .line 35
    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 36
    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    .line 48
    move-result-wide v5

    .line 49
    .line 50
    iput-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 51
    .line 52
    iget-wide v7, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    .line 53
    .line 54
    const-wide/16 v9, 0x0

    .line 55
    .line 56
    cmp-long v9, v7, v9

    .line 57
    .line 58
    if-lez v9, :cond_1

    .line 59
    .line 60
    const/16 v9, 0x3e8

    .line 61
    int-to-long v9, v9

    .line 62
    mul-long/2addr v7, v9

    .line 63
    .line 64
    cmp-long v7, v5, v7

    .line 65
    .line 66
    if-lez v7, :cond_1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    .line 71
    move-result v7

    .line 72
    .line 73
    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Lw7/u;->c()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    check-cast v7, Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    check-cast v3, Ljava/lang/Integer;

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v3, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 99
    .line 100
    new-array v3, v4, [Lw7/u;

    .line 101
    .line 102
    new-instance v4, Lw7/u;

    .line 103
    .line 104
    .line 105
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v7

    .line 107
    .line 108
    .line 109
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v5

    .line 111
    .line 112
    .line 113
    invoke-direct {v4, v7, v5}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    aput-object v4, v3, v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    :goto_1
    return v4

    .line 124
    :catch_0
    return v2
.end method

.method private final initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lw7/u;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaExtractor;",
            "Landroid/media/MediaMuxer;",
            "ZZ)",
            "Lw7/u<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    .line 14
    :goto_0
    if-ge v4, v1, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    .line 18
    move-result-object v5

    .line 19
    .line 20
    const-string v6, "getTrackFormat(...)"

    .line 21
    .line 22
    .line 23
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    const-string v6, "mime"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    .line 31
    if-eqz v6, :cond_4

    .line 32
    .line 33
    const-string v7, "audio/"

    .line 34
    const/4 v8, 0x2

    .line 35
    const/4 v9, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {v6, v7, v3, v8, v9}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    move-result v7

    .line 40
    .line 41
    const-string/jumbo v10, "video/"

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    if-nez p4, :cond_1

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {v6, v10, v3, v8, v9}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 49
    move-result v7

    .line 50
    .line 51
    if-eqz v7, :cond_4

    .line 52
    .line 53
    if-eqz p3, :cond_4

    .line 54
    .line 55
    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {p2, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 57
    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    if-gez v7, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {v6, v10, v3, v8, v9}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 64
    move-result v6

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    const-string v6, "rotation-degrees"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 72
    move-result v8

    .line 73
    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 78
    move-result v6

    .line 79
    .line 80
    if-ltz v6, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 88
    .line 89
    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v7

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 98
    .line 99
    const-string v6, "max-input-size"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 103
    move-result v7

    .line 104
    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 109
    move-result v5

    .line 110
    .line 111
    if-le v5, v2, :cond_4

    .line 112
    move v2, v5

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v6

    .line 115
    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    const-string v8, "media muxer cannot add this track, format = "

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v5

    .line 132
    .line 133
    .line 134
    invoke-static {v5, v6}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_5
    if-gez v2, :cond_6

    .line 140
    .line 141
    iget v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->DEFAULT_TRIM_BUFFER_SIZE:I

    .line 142
    .line 143
    :cond_6
    new-instance p1, Lw7/u;

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v0, p2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 16
    .param p1    # [Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->dstPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->outputMuxer:Landroid/media/MediaMuxer;

    iget-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lw7/u;

    .line 3
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lw7/u;

    invoke-virtual {v4}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->videoExtractor:Landroid/media/MediaExtractor;

    iget-object v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lw7/u;

    .line 5
    invoke-virtual {v9}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    .line 6
    invoke-direct {v0, v2, v1, v8, v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lw7/u;

    move-result-object v15

    .line 7
    invoke-virtual {v15}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    iget-wide v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->startMs:J

    cmp-long v11, v9, v6

    if-lez v11, :cond_0

    int-to-long v11, v5

    mul-long/2addr v9, v11

    .line 8
    invoke-virtual {v2, v9, v10, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 9
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    cmp-long v6, v9, v6

    if-ltz v6, :cond_0

    .line 10
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    iget-object v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    iget-wide v6, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    int-to-long v10, v5

    mul-long/2addr v10, v6

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v5, 0x0

    move-object v12, v2

    move-object v6, v15

    move-object v15, v5

    .line 11
    invoke-static/range {v9 .. v15}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->initTime$default(Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 13
    invoke-direct {v0, v2, v1, v6, v3}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lw7/u;I)Z

    move-result v2

    goto/16 :goto_1

    :cond_1
    move v2, v3

    goto/16 :goto_1

    .line 14
    :cond_2
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->videoExtractor:Landroid/media/MediaExtractor;

    iget-object v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lw7/u;

    .line 15
    invoke-virtual {v9}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v2, v1, v8, v3}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lw7/u;

    move-result-object v9

    .line 17
    new-instance v10, Landroid/media/MediaExtractor;

    invoke-direct {v10}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v10, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->audioExtractor:Landroid/media/MediaExtractor;

    iget-object v11, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lw7/u;

    .line 18
    invoke-virtual {v11}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    .line 19
    invoke-direct {v0, v10, v1, v3, v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lw7/u;

    move-result-object v11

    .line 20
    invoke-virtual {v9}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_1

    invoke-virtual {v11}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_1

    iget-wide v12, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->startMs:J

    cmp-long v14, v12, v6

    if-lez v14, :cond_3

    int-to-long v14, v5

    mul-long/2addr v12, v14

    .line 21
    invoke-virtual {v2, v12, v13, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 22
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v6, v12, v6

    if-ltz v6, :cond_3

    .line 23
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const v12, 0x186a0

    int-to-long v12, v12

    add-long/2addr v6, v12

    invoke-virtual {v10, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 24
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v6, v6, v12

    if-ltz v6, :cond_3

    .line 25
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_3
    iget-object v6, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    iget-wide v12, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    int-to-long v14, v5

    mul-long/2addr v12, v14

    .line 26
    invoke-virtual {v6, v12, v13, v2, v10}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->initTime(JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;)V

    .line 27
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 28
    invoke-direct {v0, v2, v1, v9, v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lw7/u;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-direct {v0, v10, v1, v11, v4}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lw7/u;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v8

    .line 30
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v8

    .line 32
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 33
    :catch_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lw7/u;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->onProgressUpdate([Lw7/u;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lw7/u;)V
    .locals 4
    .param p1    # [Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    .line 3
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->getCurrentProgress(IJ)F

    move-result p1

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    .line 4
    invoke-interface {v0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public final safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/media/MediaExtractor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "path"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v0, "MediaExtractor setDataSource throws IOException, url = "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string p2, "TrimVideoGenerator"

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void
.end method
