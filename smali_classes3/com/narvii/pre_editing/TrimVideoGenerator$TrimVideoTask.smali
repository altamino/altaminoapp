.class final Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;
.super Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;
.source "TrimVideoGenerator.kt"


# annotations
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
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask\n*L\n1#1,496:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;

.field private static final FORMAT_KEY_ROTATION:Ljava/lang/String; = "rotation-degrees"


# instance fields
.field private final DEFAULT_TRIM_BUFFER_SIZE:I

.field private audioExtractor:Landroid/media/MediaExtractor;

.field private final callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

.field private final dstPath:Ljava/lang/String;

.field private final endMs:J

.field private outputMuxer:Landroid/media/MediaMuxer;

.field private recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

.field private final srcPath:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startMs:J

.field private videoExtractor:Landroid/media/MediaExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/Pair;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p2, p7}, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;-><init>(Ljava/lang/String;Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lkotlin/Pair;

    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->dstPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->startMs:J

    iput-wide p5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    iput-object p7, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    const/high16 p1, 0x100000

    .line 122
    iput p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->DEFAULT_TRIM_BUFFER_SIZE:I

    .line 124
    new-instance p1, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    invoke-direct {p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    return-void
.end method

.method private final extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lkotlin/Pair;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaExtractor;",
            "Landroid/media/MediaMuxer;",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    move-object v0, p0

    .line 261
    invoke-virtual/range {p3 .. p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 262
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_0
    const/4 v3, 0x0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 265
    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object v4, p1

    .line 266
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 267
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v6, :cond_0

    .line 269
    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v6

    .line 273
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    .line 274
    iput-wide v7, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 275
    iget-wide v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_1

    iget-wide v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    const/16 v11, 0x3e8

    int-to-long v11, v11

    mul-long v9, v9, v11

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    goto :goto_2

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 280
    invoke-virtual/range {p3 .. p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    const-string v9, "it"

    .line 282
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v9, p2

    invoke-virtual {v9, v6, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    new-array v5, v5, [Lkotlin/Pair;

    .line 283
    new-instance v6, Lkotlin/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object/from16 v9, p2

    .line 285
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_2
    return v5

    :catch_0
    return v3
.end method

.method private final initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaExtractor;",
            "Landroid/media/MediaMuxer;",
            "ZZ)",
            "Lkotlin/Pair<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v1, :cond_5

    .line 218
    invoke-virtual {p1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "mime"

    .line 219
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const-string v9, "audio/"

    invoke-static {v7, v9, v2, v8, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    const-string v10, "video/"

    if-eqz v9, :cond_0

    if-nez p4, :cond_1

    .line 221
    :cond_0
    invoke-static {v7, v10, v2, v8, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz p3, :cond_4

    .line 224
    :cond_1
    :try_start_0
    invoke-virtual {p2, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v9, :cond_2

    goto :goto_1

    .line 234
    :cond_2
    invoke-static {v7, v10, v2, v8, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "rotation-degrees"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 237
    invoke-virtual {p2, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 241
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p1, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-string v6, "max-input-size"

    .line 243
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 244
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-le v5, v4, :cond_4

    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v6

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "media muxer cannot add this track, format = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-gez v4, :cond_6

    .line 250
    iget v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->DEFAULT_TRIM_BUFFER_SIZE:I

    .line 252
    :cond_6
    new-instance p1, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->dstPath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-object v1, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->outputMuxer:Landroid/media/MediaMuxer;

    .line 136
    iget-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 138
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 139
    iput-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->videoExtractor:Landroid/media/MediaExtractor;

    .line 140
    iget-object v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    .line 141
    invoke-direct {v0, v2, v1, v8, v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lkotlin/Pair;

    move-result-object v15

    .line 142
    invoke-virtual {v15}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 143
    iget-wide v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->startMs:J

    cmp-long v11, v9, v6

    if-lez v11, :cond_0

    int-to-long v11, v5

    mul-long v9, v9, v11

    .line 144
    invoke-virtual {v2, v9, v10, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 145
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-ltz v11, :cond_0

    .line 146
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 149
    :cond_0
    iget-object v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    iget-wide v6, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    int-to-long v10, v5

    mul-long v10, v10, v6

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v5, 0x0

    move-object v12, v2

    move-object v6, v15

    move-object v15, v5

    invoke-static/range {v9 .. v15}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->initTime$default(Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;ILjava/lang/Object;)V

    .line 151
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 152
    invoke-direct {v0, v2, v1, v6, v3}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lkotlin/Pair;I)Z

    move-result v2

    goto/16 :goto_1

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 159
    :cond_2
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 160
    iput-object v2, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->videoExtractor:Landroid/media/MediaExtractor;

    .line 161
    iget-object v9, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    .line 162
    invoke-direct {v0, v2, v1, v8, v3}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lkotlin/Pair;

    move-result-object v9

    .line 164
    new-instance v10, Landroid/media/MediaExtractor;

    invoke-direct {v10}, Landroid/media/MediaExtractor;-><init>()V

    .line 165
    iput-object v10, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->audioExtractor:Landroid/media/MediaExtractor;

    .line 166
    iget-object v11, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V

    .line 167
    invoke-direct {v0, v10, v1, v3, v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->initExtractConfig(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;ZZ)Lkotlin/Pair;

    move-result-object v11

    .line 169
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_1

    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 170
    iget-wide v12, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->startMs:J

    cmp-long v14, v12, v6

    if-lez v14, :cond_3

    int-to-long v14, v5

    mul-long v12, v12, v14

    .line 171
    invoke-virtual {v2, v12, v13, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 172
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v14, v12, v6

    if-ltz v14, :cond_3

    .line 173
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const v12, 0x186a0

    int-to-long v12, v12

    add-long/2addr v6, v12

    invoke-virtual {v10, v6, v7, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 174
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    cmp-long v14, v6, v12

    if-ltz v14, :cond_3

    .line 175
    invoke-virtual {v10}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 180
    :cond_3
    iget-object v6, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    iget-wide v12, v0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->endMs:J

    int-to-long v14, v5

    mul-long v12, v12, v14

    invoke-virtual {v6, v12, v13, v2, v10}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->initTime(JLandroid/media/MediaExtractor;Landroid/media/MediaExtractor;)V

    .line 182
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 183
    invoke-direct {v0, v2, v1, v9, v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lkotlin/Pair;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-direct {v0, v10, v1, v11, v4}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->extractDataToMuxer(Landroid/media/MediaExtractor;Landroid/media/MediaMuxer;Lkotlin/Pair;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 192
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    .line 197
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 194
    :catch_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, [Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->onProgressUpdate([Lkotlin/Pair;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 205
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->recorder:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;->getCurrentProgress(IJ)F

    move-result p1

    .line 207
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    invoke-interface {v0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public final safeSetDataSource(Landroid/media/MediaExtractor;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$this$safeSetDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaExtractor setDataSource throws IOException, url = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrimVideoGenerator"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
