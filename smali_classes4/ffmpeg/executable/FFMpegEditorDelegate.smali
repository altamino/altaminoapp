.class public final Lffmpeg/executable/FFMpegEditorDelegate;
.super Ljava/lang/Object;
.source "FFMpegEditorDelegate.kt"

# interfaces
.implements Lffmpeg/base/IEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;,
        Lffmpeg/executable/FFMpegEditorDelegate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFMpegEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,691:1\n1084#2,2:692\n*E\n*S KotlinDebug\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate\n*L\n71#1,2:692\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

.field private static volatile instance:Lffmpeg/executable/FFMpegEditorDelegate;


# instance fields
.field private final localFileDir:Ljava/io/File;

.field private final runningTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lffmpeg/base/MediaEditingConfig;",
            "Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate;->localFileDir:Ljava/io/File;

    .line 26
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lffmpeg/executable/FFMpegEditorDelegate;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lffmpeg/executable/FFMpegEditorDelegate;
    .locals 1

    .line 25
    sget-object v0, Lffmpeg/executable/FFMpegEditorDelegate;->instance:Lffmpeg/executable/FFMpegEditorDelegate;

    return-object v0
.end method

.method public static final synthetic access$getRunningTasks$p(Lffmpeg/executable/FFMpegEditorDelegate;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lffmpeg/executable/FFMpegEditorDelegate;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$parseCommand(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/MediaEditingConfig;)Ljava/util/List;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lffmpeg/executable/FFMpegEditorDelegate;->parseCommand(Lffmpeg/base/MediaEditingConfig;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInstance$cp(Lffmpeg/executable/FFMpegEditorDelegate;)V
    .locals 0

    .line 25
    sput-object p0, Lffmpeg/executable/FFMpegEditorDelegate;->instance:Lffmpeg/executable/FFMpegEditorDelegate;

    return-void
.end method

.method public static final synthetic access$updateExecuteConfig(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/MediaEditingConfig;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lffmpeg/executable/FFMpegEditorDelegate;->updateExecuteConfig(Lffmpeg/base/MediaEditingConfig;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final appendAudioMixFilter(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V
    .locals 7

    .line 494
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x3

    aput-object p4, v0, v1

    array-length p4, v0

    invoke-static {v0, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    const-string v0, "[%s:a]aformat=sample_fmts=fltp:sample_rates=44100:channel_layouts=stereo,volume=%s,adelay=%s|%s"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-boolean p4, p2, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    const-string v1, ","

    const/16 v5, 0xfa0

    if-eqz p4, :cond_0

    .line 496
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    sget-object p4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p4, v4, [Ljava/lang/Object;

    iget v6, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p4, v2

    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p4, v3

    array-length v6, p4

    invoke-static {p4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    const-string v6, "afade=t=in:ss=%s:d=%s"

    invoke-static {v6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_0
    iget-boolean p4, p2, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result p4

    if-le p4, v5, :cond_1

    .line 500
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result p4

    sub-int/2addr p4, v5

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 502
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v4, [Ljava/lang/Object;

    iget p2, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    sub-int/2addr p2, p4

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    div-int/lit16 p4, p4, 0x3e8

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p4, "afade=t=out:st=%s:d=%s"

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_1
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[a%s]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    .line 505
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final parseCommand(Lffmpeg/base/MediaEditingConfig;)Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lffmpeg/base/MediaEditingConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lffmpeg/executable/FFMpegEditorDelegate;->localFileDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ffmpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    const/4 v4, 0x2

    const-string v5, "java.lang.String.format(format, *args)"

    const-string v6, " "

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x100

    if-ne v3, v9, :cond_0

    .line 121
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getDuration()I

    move-result v9

    invoke-virtual {v4, v9}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "-f lavfi -i anullsrc -t %s -c:a aac -y %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v10, v7, [Ljava/lang/String;

    aput-object v6, v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move-object/from16 v25, v6

    goto/16 :goto_20

    .line 122
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    const/16 v9, 0x200

    const-string v10, "-y"

    const-string v11, "-i"

    if-ne v3, v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getHorizontalFlip()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getVerticalFlip()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    :cond_1
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getVerticalFlip()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-vf vflip"

    .line 126
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getHorizontalFlip()Z

    move-result v3

    if-eqz v3, :cond_3

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-vf hflip"

    .line 129
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_3
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    const/16 v9, 0x10

    const/4 v12, 0x0

    const-string v13, "-vf"

    const-string v14, "-ss"

    if-ne v3, v9, :cond_e

    .line 134
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getKeyframeOnlyForScreenshot()Z

    .line 137
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isImageInput()Z

    move-result v3

    if-nez v3, :cond_5

    .line 138
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v3, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getStartTime()I

    move-result v9

    invoke-virtual {v3, v9}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_5
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isImageInput()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "-frames:v"

    .line 144
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getScreenshotCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "-r"

    .line 146
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getScreenshotRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getKeepFixedDimension()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 150
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isImageInput()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 151
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/image/BitmapUtils;->readImageRotation(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 153
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v8

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "-vf %sscale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 155
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const/16 v9, 0x5a

    if-lt v3, v9, :cond_8

    const-string v9, "transpose=1,"

    .line 157
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x5a

    goto :goto_1

    .line 160
    :cond_8
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "-vf %sscale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 162
    :cond_9
    invoke-static {v1, v8, v7, v12}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoSar$default(Lffmpeg/base/MediaEditingConfig;IILjava/lang/Object;)F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v9

    if-nez v3, :cond_a

    new-array v15, v7, [Ljava/lang/String;

    aput-object v6, v15, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    const-string v14, "-sar 1"

    .line 163
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v15, v7, [Ljava/lang/String;

    aput-object v6, v15, v8

    const-string v14, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    .line 165
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_a
    new-array v15, v7, [Ljava/lang/String;

    aput-object v6, v15, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    const-string v14, "-sar 1"

    .line 167
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v3, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-static {v3, v1, v8, v4, v12}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getFixedDimensionSizeForSarAdjust$default(Lffmpeg/executable/FFMpegEditorDelegate$Companion;Lffmpeg/base/MediaEditingConfig;IILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    sget-object v11, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v8

    aput-object v3, v4, v7

    array-length v3, v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 172
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getScreenshotScaleRatio()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-vf scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getScreenshotScaleRatio()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 175
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "config.isVerticalVideoList[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-vf scale=240:-2"

    .line 176
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_d
    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-vf scale=-2:240"

    .line 178
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    :goto_2
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    const/16 v9, 0x40

    const-string v15, "-filter_complex"

    const-string v12, "-t"

    if-ne v3, v9, :cond_f

    .line 184
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v3, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getStartTime()I

    move-result v9

    invoke-virtual {v3, v9}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v3, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getDuration()I

    move-result v9

    invoke-virtual {v3, v9}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getFrameItemWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getFrameItemHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "[0:a]aformat=channel_layouts=mono,compand,showwavespic=s=%sx%s:colors=#1598FF,drawbox=x=(iw-w)/2:y=(ih-h)/2:w=iw:h=1:color=#1598FF"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "-frames:v"

    .line 192
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "1"

    .line 193
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 196
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    const/16 v9, 0x80

    const-string v17, "0"

    if-ne v3, v9, :cond_15

    .line 197
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 200
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 201
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v9, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    iget v13, v4, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v9, v13}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v9, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v13

    invoke-virtual {v9, v13}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_10
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_11
    new-array v3, v7, [Ljava/lang/String;

    aput-object v6, v3, v8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const-string v18, "-c:v copy"

    move-object/from16 v19, v3

    .line 209
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "-an"

    .line 211
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 213
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getForceAudioCodecCopy()Z

    move-result v3

    if-eqz v3, :cond_13

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-c:a copy"

    .line 214
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_13
    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-c:a aac -ar 44100 -b:a 128k -ac 2"

    .line 216
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    :goto_4
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v17, v3, v8

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "-map %s:v"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_14

    .line 221
    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v8

    array-length v11, v9

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v11, "-map %s:a"

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v7, [Ljava/lang/String;

    aput-object v6, v13, v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 223
    :cond_14
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-movflags +faststart"

    .line 224
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 226
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    const/16 v9, 0x400

    if-ne v3, v9, :cond_16

    new-array v3, v7, [Ljava/lang/String;

    aput-object v6, v3, v8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const-string v18, "-loop 1 -framerate 10"

    move-object/from16 v19, v3

    .line 227
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v15, v7, [Ljava/lang/String;

    aput-object v6, v15, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    const-string v14, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    .line 233
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v11, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v superfast -r:v 30000/1001 -force_fps -crf 24"

    .line 234
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 237
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    const/16 v9, 0x800

    if-ne v3, v9, :cond_18

    .line 238
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "config.isVerticalVideoList[0]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "720:-2"

    goto :goto_6

    :cond_17
    const-string v4, "-2:720"

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array v12, v7, [Ljava/lang/String;

    aput-object v6, v12, v8

    const-string v11, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v superfast -r:v 30000/1001 -force_fps -crf 24"

    .line 242
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 245
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    const/16 v9, 0x1000

    if-ne v3, v9, :cond_19

    new-array v3, v7, [Ljava/lang/String;

    aput-object v6, v3, v8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const-string v18, "-f concat -safe 0"

    move-object/from16 v19, v3

    .line 246
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    iget-object v3, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v7, [Ljava/lang/String;

    aput-object v6, v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v9, "-c copy"

    .line 249
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 253
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/Boolean;

    const-string v8, "hasAudioTrack"

    .line 254
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v9, v9, 0x1

    :cond_1a
    const/4 v4, 0x2

    const/4 v8, 0x0

    goto :goto_7

    .line 258
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_8

    :cond_1c
    const/4 v3, 0x0

    .line 259
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/16 v8, 0x20

    if-ne v4, v8, :cond_1e

    if-gtz v9, :cond_1d

    .line 260
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-eqz v4, :cond_1e

    :cond_1d
    const/4 v4, 0x1

    goto :goto_9

    :cond_1e
    const/4 v4, 0x0

    .line 262
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_20

    if-eqz v3, :cond_1f

    .line 264
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v8, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getStartTime()I

    move-result v7

    invoke-virtual {v8, v7}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v7, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getDuration()I

    move-result v8

    invoke-virtual {v7, v8}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "-accurate_seek"

    .line 268
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1f
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v7

    iget-object v7, v7, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v10

    goto/16 :goto_c

    .line 273
    :cond_20
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    const-string v20, "0.1"

    const/16 v18, 0x0

    aput-object v20, v7, v18

    array-length v8, v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "-f lavfi -t %s -i anullsrc"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v27, v10

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v18

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    move-object/from16 v21, v7

    move-object/from16 v22, v10

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 275
    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 276
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v10, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    move-object/from16 v21, v7

    iget v7, v8, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v10, v7}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v7, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v10

    invoke-virtual {v7, v10}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    move-object/from16 v21, v7

    .line 281
    :goto_b
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v7, v8, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v21

    goto :goto_a

    :cond_22
    :goto_c
    if-eqz v4, :cond_24

    .line 286
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 287
    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 288
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v10, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    move-object/from16 v21, v7

    iget v7, v8, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {v10, v7}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v7, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual {v8}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v10

    invoke-virtual {v7, v10}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->formatFFMpegTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_23
    move-object/from16 v21, v7

    .line 293
    :goto_e
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v7, v8, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v21

    goto :goto_d

    .line 298
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "[a%s]"

    const/4 v11, 0x1

    if-le v7, v11, :cond_3c

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/video/model/AVClipInfoPack;

    .line 304
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasVideoTrackList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v10, "config.inputHasVideoTrackList[index]"

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_28

    add-int/lit8 v12, v12, 0x1

    .line 306
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/Object;

    add-int/lit8 v14, v11, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v10, v18

    move-object/from16 v16, v9

    array-length v9, v10

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "[%s:v]"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getKeepFixedDimension()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 308
    invoke-virtual {v1, v11}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoSar(I)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-nez v9, :cond_25

    const-string v9, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    .line 309
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    .line 310
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "setsar=1"

    .line 311
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v25, v6

    move/from16 v23, v12

    goto/16 :goto_10

    .line 313
    :cond_25
    sget-object v9, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-static {v9, v1, v11}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->access$getFixedDimensionSizeForSarAdjust(Lffmpeg/executable/FFMpegEditorDelegate$Companion;Lffmpeg/base/MediaEditingConfig;I)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 314
    sget-object v22, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    move/from16 v23, v12

    const/4 v12, 0x2

    new-array v1, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v1, v12

    const/4 v10, 0x1

    aput-object v9, v1, v10

    array-length v9, v1

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v9, "scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 315
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setsar=1"

    .line 316
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v25, v6

    goto :goto_10

    :cond_26
    move/from16 v23, v12

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scale="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    sget-object v9, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoWidthList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "config.orgVideoWidthList[index]"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoHeightList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move/from16 v22, v3

    const-string v3, "config.orgVideoHeightList[index]"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move/from16 v24, v4

    const-string v4, "config.isVerticalVideoList[index]"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoDARList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v25, v6

    const-string v6, "config.orgVideoDARList[index]"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v9, v10, v3, v4, v6}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->access$getResolutionByDAR(Lffmpeg/executable/FFMpegEditorDelegate$Companion;IIZF)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 321
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setsar=1"

    .line 322
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :goto_10
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "[v%s]"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 325
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "config.inputHasAudioTrackList[index]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    .line 327
    invoke-direct {v0, v14, v13, v7, v1}, Lffmpeg/executable/FFMpegEditorDelegate;->appendAudioMixFilter(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    :cond_27
    move/from16 v12, v23

    goto :goto_11

    :cond_28
    move/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v25, v6

    move-object/from16 v16, v9

    :goto_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v9, v16

    move/from16 v3, v22

    move/from16 v4, v24

    move-object/from16 v6, v25

    goto/16 :goto_f

    :cond_29
    move/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v25, v6

    .line 331
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_2c

    .line 332
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasVideoTrackList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "config.inputHasVideoTrackList[index]"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 333
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    array-length v9, v4

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v9, "[v%s]"

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v9, "config.inputHasAudioTrackList[index]"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 335
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v4, v10

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_2a
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 337
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v17, v4, v10

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "[%s:a]"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    :cond_2c
    if-lez v12, :cond_2d

    .line 342
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "concat=n=%s:v=1:a=1"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[vout]"

    .line 343
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[aout]"

    .line 344
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2d

    .line 346
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/video/model/AVClipInfoPack;

    .line 354
    iget-boolean v10, v9, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-nez v10, :cond_2e

    goto :goto_15

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    .line 358
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v6

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iget v11, v9, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-direct {v0, v10, v9, v1, v11}, Lffmpeg/executable/FFMpegEditorDelegate;->appendAudioMixFilter(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_2f
    if-lez v4, :cond_33

    if-lez v12, :cond_30

    add-int/lit8 v4, v4, 0x1

    const-string v3, "[aout]"

    .line 363
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v3, :cond_32

    .line 366
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v9, v9, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eqz v9, :cond_31

    .line 367
    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v6

    add-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 370
    :cond_32
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x4

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v3, v8

    const-string v6, "longest"

    const/4 v8, 0x1

    aput-object v6, v3, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v3, v8

    const/4 v6, 0x3

    const-string v8, "amixout"

    aput-object v8, v3, v6

    array-length v6, v3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v6, "amix=inputs=%s:duration=%s,volume=%s[%s]"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    move v8, v4

    if-gtz v12, :cond_34

    if-lez v8, :cond_34

    .line 373
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_34
    if-lez v12, :cond_37

    .line 376
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v8, :cond_35

    const-string v3, ";"

    .line 378
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_35
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    const/4 v8, 0x0

    :cond_37
    :goto_17
    if-lez v12, :cond_38

    .line 385
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "vout"

    const/4 v6, 0x0

    aput-object v4, v1, v6

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "-map [%s]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/String;

    aput-object v25, v4, v6

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x6

    const/16 v33, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v4

    invoke-static/range {v28 .. v33}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez v8, :cond_38

    .line 387
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "aout"

    const/4 v6, 0x0

    aput-object v4, v1, v6

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "-map [%s]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/String;

    aput-object v25, v4, v6

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x6

    const/16 v33, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v4

    invoke-static/range {v28 .. v33}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_38
    if-lez v8, :cond_39

    .line 391
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "amixout"

    const/4 v6, 0x0

    aput-object v4, v1, v6

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "-map [%s]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/String;

    aput-object v25, v4, v6

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x6

    const/16 v33, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v4

    invoke-static/range {v28 .. v33}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_39
    if-lez v12, :cond_3a

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v25, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v3, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024"

    .line 394
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "-maxrate"

    .line 395
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getMaxVideoBitrate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-bufsize"

    .line 397
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getVideoBufSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    if-eqz v24, :cond_3b

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v25, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v3, "-c:a aac -ar 44100 -b:a 128k -ac 2"

    .line 401
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3b
    move-object/from16 v1, p1

    goto/16 :goto_1d

    :cond_3c
    move/from16 v22, v3

    move/from16 v24, v4

    move-object/from16 v25, v6

    if-eqz v24, :cond_44

    .line 405
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v9, :cond_3d

    .line 408
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v1, v4}, Lffmpeg/executable/FFMpegEditorDelegate;->appendAudioMixFilter(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    .line 410
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_3e
    :goto_18
    if-ge v4, v3, :cond_3f

    .line 411
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "config.additionalMediaInputList[index]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    add-int/lit8 v4, v4, 0x1

    .line 413
    iget-boolean v7, v6, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eqz v7, :cond_3e

    .line 414
    iget v7, v6, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    invoke-direct {v0, v4, v6, v1, v7}, Lffmpeg/executable/FFMpegEditorDelegate;->appendAudioMixFilter(ILcom/narvii/video/model/AVClipInfoPack;Ljava/lang/StringBuilder;I)V

    goto :goto_18

    .line 417
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "config.inputHasAudioTrackList[0]"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 418
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v17, v3, v4

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_19
    if-ge v4, v3, :cond_42

    add-int/lit8 v7, v4, 0x1

    .line 423
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAdditionalMediaInputList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    iget-boolean v4, v4, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    if-eqz v4, :cond_41

    add-int/lit8 v6, v6, 0x1

    .line 425
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    array-length v9, v4

    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_41
    const/4 v10, 0x0

    :goto_1a
    move v4, v7

    goto :goto_19

    :cond_42
    const/4 v10, 0x0

    .line 428
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "config.inputHasAudioTrackList[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    add-int/2addr v6, v3

    .line 429
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "first"

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const-string v6, "out"

    aput-object v6, v3, v4

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "amix=inputs=%s:duration=%s,volume=%s[%s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasVideoTrackList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "config.inputHasVideoTrackList[0]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 432
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v17, v1, v3

    array-length v6, v1

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v6, "-map %s:v"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v4, [Ljava/lang/String;

    aput-object v25, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 434
    :cond_43
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "out"

    const/4 v6, 0x0

    aput-object v4, v1, v6

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "-map [%s]"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v8, v3, [Ljava/lang/String;

    aput-object v25, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_44
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasVideoTrackList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "config.inputHasVideoTrackList[0]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 437
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getForceVideoCodecCopy()Z

    move-result v1

    if-nez v1, :cond_48

    if-nez v22, :cond_45

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v1

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_48

    .line 438
    :cond_45
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getKeepFixedDimension()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v25, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v6, "-sar 1"

    .line 439
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 441
    invoke-static {v1, v6, v4, v3}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoSar$default(Lffmpeg/base/MediaEditingConfig;IILjava/lang/Object;)F

    move-result v7

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v7, v4

    if-nez v4, :cond_46

    const-string v3, "scale=720:1280:force_original_aspect_ratio=1,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    .line 442
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 444
    :cond_46
    sget-object v4, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    const/4 v7, 0x2

    invoke-static {v4, v1, v6, v7, v3}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->getFixedDimensionSizeForSarAdjust$default(Lffmpeg/executable/FFMpegEditorDelegate$Companion;Lffmpeg/base/MediaEditingConfig;IILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v6

    const/4 v4, 0x1

    aput-object v3, v7, v4

    array-length v3, v7

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v7, "scale=%s:%s,pad=720:1280:(ow-iw)/2:(oh-ih)/2"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_47
    move-object/from16 v1, p1

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-array v8, v4, [Ljava/lang/String;

    aput-object v25, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v7, "-sar 1"

    .line 448
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 449
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    sget-object v4, Lffmpeg/executable/FFMpegEditorDelegate;->Companion:Lffmpeg/executable/FFMpegEditorDelegate$Companion;

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoWidthList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "config.orgVideoWidthList[0]"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoHeightList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "config.orgVideoHeightList[0]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "config.isVerticalVideoList[0]"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoDARList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "config.orgVideoDARList[0]"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-static {v4, v5, v7, v8, v9}, Lffmpeg/executable/FFMpegEditorDelegate$Companion;->access$getResolutionByDAR(Lffmpeg/executable/FFMpegEditorDelegate$Companion;IIZF)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    aput-object v25, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v7, "-threads 0 -pix_fmt yuv420p -c:v libx264 -preset:v veryfast -profile:v main -level 3.1 -r:v 30000/1001 -force_fps -crf 22 -max_muxing_queue_size 1024"

    .line 453
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "-maxrate"

    .line 454
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getMaxVideoBitrate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "-bufsize"

    .line 456
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getVideoBufSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_48
    move-object/from16 v1, p1

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v25, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v4, "-c:v copy"

    .line 459
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    :cond_49
    move-object/from16 v1, p1

    .line 462
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "config.inputHasAudioTrackList[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 463
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getForceAudioCodecCopy()Z

    move-result v3

    if-nez v3, :cond_4b

    if-nez v22, :cond_4a

    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v3

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4b

    :cond_4a
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v25, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v4, "-c:a aac -ar 44100 -b:a 128k -ac 2"

    .line 464
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d

    :cond_4b
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v25, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v4, "-c:a copy"

    .line 466
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 470
    :cond_4c
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getVideoOnly()Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "-an"

    .line 471
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 472
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getAudioOnly()Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "-vn"

    .line 473
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_1e
    if-nez v22, :cond_4f

    .line 475
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_50

    goto :goto_1f

    :cond_4f
    const/4 v4, 0x1

    .line 476
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getDropNegativeTs()Z

    move-result v3

    if-eqz v3, :cond_50

    new-array v6, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v25, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v5, "-avoid_negative_ts 1"

    .line 477
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_50
    move-object/from16 v3, v27

    .line 480
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v25, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v4, "-movflags +faststart"

    .line 481
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-virtual/range {p1 .. p1}, Lffmpeg/base/MediaEditingConfig;->getOutput()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 486
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    .line 487
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 489
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ffmpeg cmdline"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private final updateExecuteConfig(Lffmpeg/base/MediaEditingConfig;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lffmpeg/base/MediaEditingConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/StreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/StreamInfo;

    .line 90
    iget v4, v1, Lcom/narvii/video/model/StreamInfo;->rotate:I

    div-int/lit8 v4, v4, 0x5a

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 91
    iget v5, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    goto :goto_2

    :cond_1
    iget v5, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    :goto_2
    if-eqz v4, :cond_2

    .line 92
    iget v6, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    goto :goto_3

    :cond_2
    iget v6, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    .line 93
    :goto_3
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v4, :cond_3

    iget v8, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    iget v9, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    if-le v8, v9, :cond_4

    goto :goto_4

    :cond_3
    iget v8, v1, Lcom/narvii/video/model/StreamInfo;->height:I

    iget v9, v1, Lcom/narvii/video/model/StreamInfo;->width:I

    if-le v8, v9, :cond_4

    :goto_4
    const/4 v8, 0x1

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasAudioTrackList()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v1, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getVideoOnly()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_6
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getInputHasVideoTrackList()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, v1, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getAudioOnly()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoWidthList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoHeightList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoDARList()Ljava/util/ArrayList;

    move-result-object v3

    .line 99
    iget v1, v1, Lcom/narvii/video/model/StreamInfo;->dar:F

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_7

    int-to-float v1, v5

    int-to-float v2, v6

    div-float/2addr v1, v2

    goto :goto_8

    :cond_7
    if-eqz v4, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 98
    :cond_8
    :goto_8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_9
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getInputClipList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 105
    invoke-virtual {p1, v3}, Lffmpeg/base/MediaEditingConfig;->setTranscodeAudio(Z)V

    .line 106
    invoke-virtual {p1, v3}, Lffmpeg/base/MediaEditingConfig;->setTranscodeVideo(Z)V

    return-void

    .line 109
    :cond_a
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getActionType()I

    move-result v0

    if-eq v0, v3, :cond_b

    return-void

    .line 112
    :cond_b
    invoke-virtual {p1, v3}, Lffmpeg/base/MediaEditingConfig;->setTranscodeAudio(Z)V

    .line 113
    invoke-virtual {p1, v3}, Lffmpeg/base/MediaEditingConfig;->setTranscodeVideo(Z)V

    .line 114
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/StreamInfo;

    iget v0, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    const/16 v1, 0x3a98

    if-gt v0, v1, :cond_c

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getDuration()I

    move-result v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/model/StreamInfo;

    iget p2, p2, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    if-eq v0, p2, :cond_d

    :cond_c
    const/4 v2, 0x1

    :cond_d
    invoke-virtual {p1, v2}, Lffmpeg/base/MediaEditingConfig;->setTrim(Z)V

    return-void
.end method


# virtual methods
.method public abort(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->abort()V

    :cond_0
    return-void
.end method

.method public abortAll(Z)V
    .locals 3

    .line 69
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "runningTasks.entries"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 692
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez p1, :cond_1

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lffmpeg/base/MediaEditingConfig;

    invoke-virtual {v2}, Lffmpeg/base/MediaEditingConfig;->getRunningInBackground()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;

    invoke-virtual {v1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->abort()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->abortAnimatedStickerConvertTask(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)V

    return-void
.end method

.method public abortAnimatedStickerConvertTasks()V
    .locals 0

    .line 25
    invoke-static {p0}, Lffmpeg/base/IEditor$DefaultImpls;->abortAnimatedStickerConvertTasks(Lffmpeg/base/IEditor;)V

    return-void
.end method

.method public execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;

    new-instance v1, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;

    invoke-direct {v1, p0, p3, p1}, Lffmpeg/executable/FFMpegEditorDelegate$execute$worker$1;-><init>(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/IEditorExecuteCallback;Lffmpeg/base/MediaEditingConfig;)V

    invoke-direct {v0, p0, p1, v1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;-><init>(Lffmpeg/executable/FFMpegEditorDelegate;Lffmpeg/base/MediaEditingConfig;Lffmpeg/base/IEditorExecuteCallback;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-array p2, p3, [Ljava/lang/Void;

    .line 56
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-array p3, p3, [Ljava/lang/Void;

    .line 58
    invoke-virtual {v0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    :goto_0
    iget-object p2, p0, Lffmpeg/executable/FFMpegEditorDelegate;->runningTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->fetchStreamInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 81
    new-instance p1, Lcom/narvii/video/model/StreamInfo;

    invoke-direct {p1}, Lcom/narvii/video/model/StreamInfo;-><init>()V

    .line 83
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/narvii/video/model/StreamInfo;->hasError:Z

    return-object p1
.end method

.method public getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->getStickerCopiedSrcFile(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;
    .locals 1

    const-string v0, "stickerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->getTargetStickerInstallFile(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lffmpeg/base/IEditor$DefaultImpls;->hasStickerTemplatedInstalled(Lffmpeg/base/IEditor;Lcom/narvii/video/model/StickerInfoPack;)Z

    move-result p1

    return p1
.end method

.method public installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stickerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static/range {p0 .. p5}, Lffmpeg/base/IEditor$DefaultImpls;->installSticker(Lffmpeg/base/IEditor;Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V

    return-void
.end method

.method public onLocalStickerCacheCleared()V
    .locals 0

    .line 25
    invoke-static {p0}, Lffmpeg/base/IEditor$DefaultImpls;->onLocalStickerCacheCleared(Lffmpeg/base/IEditor;)V

    return-void
.end method
