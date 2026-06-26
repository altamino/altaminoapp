.class public final Lcom/narvii/editor/utils/TimelineUtils;
.super Ljava/lang/Object;
.source "TimelineUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimelineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimelineUtils.kt\ncom/narvii/editor/utils/TimelineUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,351:1\n1587#2,2:352\n673#2:354\n746#2,2:355\n1587#2,2:357\n1587#2,2:359\n1587#2,2:361\n*E\n*S KotlinDebug\n*F\n+ 1 TimelineUtils.kt\ncom/narvii/editor/utils/TimelineUtils\n*L\n58#1,2:352\n68#1:354\n68#1,2:355\n70#1,2:357\n82#1,2:359\n88#1,2:361\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

.field public static final MAX_VOLUME:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TimelineUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/narvii/editor/utils/TimelineUtils;

    invoke-direct {v0}, Lcom/narvii/editor/utils/TimelineUtils;-><init>()V

    sput-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final appendMaterialIntoTimline(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;)Lkotlin/Triple;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;",
            ")",
            "Lkotlin/Triple<",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsAudioTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            ">;>;"
        }
    .end annotation

    .line 48
    invoke-virtual {p2}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getVideoClipList()Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getAudioClipList()Ljava/util/ArrayList;

    move-result-object v3

    .line 50
    invoke-virtual {p2}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getCaptionClipList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getStickerClipList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p2}, Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;->getPipClipList()Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/narvii/editor/utils/TimelineUtils;->appendMaterialIntoTimline(Lcom/meicam/sdk/NvsTimeline;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lkotlin/Triple;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final appendMaterialIntoTimline(Lcom/meicam/sdk/NvsTimeline;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lkotlin/Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meicam/sdk/NvsTimeline;",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pip/PipInfoPack;",
            ">;)",
            "Lkotlin/Triple<",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsAudioTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 352
    :goto_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 59
    sget-object v4, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v4, v3, v2, v1}, Lcom/narvii/editor/utils/TimelineUtils;->appendVideoIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/sdk/NvsVideoTrack;)Lkotlin/Pair;

    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {p0, v2}, Lcom/narvii/editor/utils/TimelineUtils;->clearTransitionEffects(Lcom/meicam/sdk/NvsVideoTrack;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/narvii/editor/utils/TimelineUtils;->clearTransitionEffects(Lcom/meicam/sdk/NvsVideoTrack;)V

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 69
    iget v4, v4, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 357
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 71
    :cond_6
    :goto_6
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_8

    if-eqz p1, :cond_7

    .line 72
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v0

    :goto_7
    if-eqz v3, :cond_6

    .line 74
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 77
    :cond_8
    iget v3, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/sdk/NvsAudioTrack;

    .line 78
    sget-object v4, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v4, v1, v3}, Lcom/narvii/editor/utils/TimelineUtils;->appendAudioIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsAudioTrack;)Lcom/meicam/sdk/NvsAudioClip;

    goto :goto_5

    .line 359
    :cond_9
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 84
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v0, p1, p4}, Lcom/narvii/editor/utils/TimelineUtils;->appendAttachmentIntoTimeline(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    goto :goto_8

    .line 87
    :cond_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_b
    :goto_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/narvii/pip/PipInfoPack;

    .line 89
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v0, p1, p5}, Lcom/narvii/editor/utils/TimelineUtils;->addPipVideo(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/pip/PipInfoPack;)Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p5

    if-eqz p5, :cond_b

    .line 90
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 94
    :cond_c
    new-instance p1, Lkotlin/Triple;

    invoke-direct {p1, v2, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final correctVolume(FLcom/meicam/sdk/NvsVideoTrack;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsAudioTrack;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    .line 227
    :cond_1
    :goto_0
    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;

    .line 245
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "Collections.singletonList(videoTrack)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p4, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final createAudioResolution(II)Lcom/meicam/sdk/NvsAudioResolution;
    .locals 1

    .line 267
    new-instance v0, Lcom/meicam/sdk/NvsAudioResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsAudioResolution;-><init>()V

    .line 268
    iput p1, v0, Lcom/meicam/sdk/NvsAudioResolution;->sampleRate:I

    .line 269
    iput p2, v0, Lcom/meicam/sdk/NvsAudioResolution;->channelCount:I

    return-object v0
.end method

.method private final createDefaultAudioResolution()Lcom/meicam/sdk/NvsAudioResolution;
    .locals 2

    .line 263
    sget v0, Lcom/narvii/editor/utils/EditorConstants;->AUDIO_SAMPLE_RATE:I

    sget v1, Lcom/narvii/editor/utils/EditorConstants;->AUDIO_CHANNEL_COUNT:I

    invoke-direct {p0, v0, v1}, Lcom/narvii/editor/utils/TimelineUtils;->createAudioResolution(II)Lcom/meicam/sdk/NvsAudioResolution;

    move-result-object v0

    return-object v0
.end method

.method private final createDefaultVideoFps()Lcom/meicam/sdk/NvsRational;
    .locals 3

    .line 275
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/16 v1, 0x7530

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    return-object v0
.end method

.method private final createDefaultVideoResolution()Lcom/meicam/sdk/NvsVideoResolution;
    .locals 2

    .line 251
    sget v0, Lcom/narvii/editor/utils/EditorConstants;->VIDEO_RESOLUTION_WIDTH:I

    sget v1, Lcom/narvii/editor/utils/EditorConstants;->VIDEO_RESOLUTION_HEIGHT:I

    invoke-virtual {p0, v0, v1}, Lcom/narvii/editor/utils/TimelineUtils;->createVideoResolution(II)Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic createTimeline$default(Lcom/narvii/editor/utils/TimelineUtils;Lcom/narvii/scene/model/SceneDraft;ZILjava/lang/Object;)Lcom/meicam/sdk/NvsTimeline;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline(Lcom/narvii/scene/model/SceneDraft;Z)Lcom/meicam/sdk/NvsTimeline;

    move-result-object p0

    return-object p0
.end method

.method private final supportVideoFormat(Ljava/lang/String;)Z
    .locals 6

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "mp4"

    .line 212
    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const-string v4, "mov"

    .line 213
    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "wmv"

    .line 214
    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "m2v"

    .line 215
    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mpg"

    .line 216
    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v5

    .line 211
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;FFFF)V
    .locals 9

    .line 330
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 332
    invoke-virtual {p1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v3

    const-string/jumbo v4, "videoClip"

    .line 333
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsClip;->getFxCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 335
    invoke-virtual {v3, v5}, Lcom/meicam/sdk/NvsVideoClip;->getFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v6

    const-string/jumbo v7, "videoFx"

    .line 337
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsVideoFx;->getVideoFxType()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsVideoFx;->getBuiltinVideoFxName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Transform 2D"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    float-to-double v3, p2

    const-string v5, "Scale X"

    .line 339
    invoke-virtual {v6, v5, v3, v4}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    const-string v5, "Scale Y"

    .line 340
    invoke-virtual {v6, v5, v3, v4}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    float-to-double v3, p3

    const-string v5, "Rotation"

    .line 342
    invoke-virtual {v6, v5, v3, v4}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    float-to-double v3, p4

    const-string v5, "Trans X"

    .line 344
    invoke-virtual {v6, v5, v3, v4}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    float-to-double v3, p5

    const-string v5, "Trans Y"

    .line 345
    invoke-virtual {v6, v5, v3, v4}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addPipVideo(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/pip/PipInfoPack;)Lcom/meicam/sdk/NvsVideoTrack;
    .locals 12

    const-string v0, "pipVideo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 302
    :goto_0
    iget v2, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v6

    iget p1, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v8, p1

    mul-long v8, v8, v4

    sub-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_1
    if-eqz v1, :cond_2

    .line 306
    iget-object p1, p2, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v6, v0

    mul-long v6, v6, v4

    iget v0, p2, Lcom/narvii/pip/PipInfoPack;->trimStartInMs:I

    int-to-long v8, v0

    mul-long v8, v8, v4

    int-to-long v10, v0

    mul-long v10, v10, v4

    add-long/2addr v10, v2

    move-object v2, v1

    move-object v3, p1

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    invoke-virtual/range {v2 .. v9}, Lcom/meicam/sdk/NvsVideoTrack;->addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string p1, "Transform 2D"

    .line 307
    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    :cond_3
    const/4 p1, 0x0

    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsVideoClip;->getVideoType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 309
    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    .line 311
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/narvii/editor/utils/TimelineUtils;->updatePipVideoTransform(Lcom/meicam/sdk/NvsVideoTrack;Lcom/narvii/pip/PipInfoPack;)V

    if-eqz v1, :cond_6

    .line 313
    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v0

    :goto_1
    if-ge p1, v0, :cond_6

    .line 314
    invoke-virtual {v1, p1}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v2

    .line 315
    iget-boolean v3, p2, Lcom/narvii/pip/PipInfoPack;->mute:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    iget v3, p2, Lcom/narvii/pip/PipInfoPack;->volume:F

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float v3, v3, v4

    .line 316
    :goto_2
    invoke-virtual {v2, v3, v3}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public final appendAttachmentIntoTimeline(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V
    .locals 11

    const-string v0, "attachment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    instance-of v0, p2, Lcom/narvii/video/model/Caption;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 194
    move-object v0, p2

    check-cast v0, Lcom/narvii/video/model/Caption;

    iget-object v5, v0, Lcom/narvii/video/model/Caption;->text:Ljava/lang/String;

    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v0, v0

    mul-long v6, v0, v2

    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v0, v0

    mul-long v8, v0, v2

    const/4 v10, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsTimeline;->addCaption(Ljava/lang/String;JJLjava/lang/String;)Lcom/meicam/sdk/NvsTimelineCaption;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 196
    check-cast p2, Lcom/narvii/video/model/Caption;

    invoke-static {v1, p2}, Lcom/narvii/editor/attachment/AttachmentUtils;->updateTimelineCaption(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/narvii/video/model/Caption;)V

    goto :goto_0

    .line 199
    :cond_1
    instance-of v0, p2, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 200
    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v0, v0

    mul-long v5, v0, v2

    iget v0, p2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    int-to-long v0, v0

    mul-long v7, v0, v2

    .line 201
    move-object v0, p2

    check-cast v0, Lcom/narvii/video/model/StickerInfoPack;

    iget-object v9, v0, Lcom/narvii/video/model/StickerInfoPack;->templateUuid:Ljava/lang/String;

    iget-object v10, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    move-object v4, p1

    .line 200
    invoke-virtual/range {v4 .. v10}, Lcom/meicam/sdk/NvsTimeline;->addCustomAnimatedSticker(JJLjava/lang/String;Ljava/lang/String;)Lcom/meicam/sdk/NvsTimelineAnimatedSticker;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 203
    check-cast p2, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {v1, p2}, Lcom/narvii/editor/attachment/AttachmentUtils;->updateTimelineSticker(Lcom/meicam/sdk/NvsTimelineAnimatedSticker;Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final appendAudioIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsAudioTrack;)Lcom/meicam/sdk/NvsAudioClip;
    .locals 12

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    int-to-long v0, v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v6, v0, v2

    .line 167
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    const/4 v4, 0x0

    if-le v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 168
    iget-object v5, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    int-to-long v8, v1

    mul-long v8, v8, v2

    int-to-long v0, v0

    mul-long v10, v0, v2

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lcom/meicam/sdk/NvsAudioTrack;->addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v4

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 170
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-virtual {p2, v0, v6, v7}, Lcom/meicam/sdk/NvsAudioTrack;->addClip(Ljava/lang/String;J)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v4

    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 174
    iget-boolean p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeIn:Z

    const-wide/32 v0, 0x3d0900

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_2

    move-wide v5, v0

    goto :goto_1

    :cond_2
    move-wide v5, v2

    :goto_1
    invoke-virtual {v4, v5, v6}, Lcom/meicam/sdk/NvsAudioClip;->setFadeInDuration(J)V

    .line 175
    iget-boolean p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->fadeOut:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v2

    :goto_2
    invoke-virtual {v4, v0, v1}, Lcom/meicam/sdk/NvsAudioClip;->setFadeOutDuration(J)V

    .line 176
    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float v0, p1, p2

    mul-float p1, p1, p2

    invoke-virtual {v4, v0, p1}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    :cond_4
    return-object v4
.end method

.method public final appendVideoIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsVideoTrack;Lcom/meicam/sdk/NvsVideoTrack;)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            "Lcom/meicam/sdk/NvsVideoTrack;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/meicam/sdk/NvsVideoClip;",
            "Lcom/meicam/sdk/NvsVideoClip;",
            ">;"
        }
    .end annotation

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->hasInvisibleFrames()Z

    move-result v0

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lkotlin/Pair;

    iget v5, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    int-to-long v5, v5

    int-to-long v7, v1

    mul-long v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    iget v5, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    if-gt v0, v5, :cond_1

    .line 136
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, v1

    mul-long v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Lkotlin/Pair;

    int-to-long v4, v5

    int-to-long v6, v1

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    int-to-long v4, v4

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :goto_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v10, 0x0

    if-eqz p2, :cond_3

    .line 142
    iget-object v5, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;JJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v10

    :goto_2
    if-eqz p2, :cond_4

    .line 143
    iget-wide v4, p1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-virtual {p2, v4, v5}, Lcom/meicam/sdk/NvsClip;->changeSpeed(D)V

    .line 144
    :cond_4
    iget-object v4, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v5, "clip.inputPath"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/narvii/editor/utils/TimelineUtils;->supportVideoFormat(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    .line 145
    invoke-virtual {p2, v5}, Lcom/meicam/sdk/NvsVideoClip;->setSoftWareDecoding(Z)V

    :cond_5
    if-eqz p2, :cond_6

    const-string v4, "Transform 2D"

    .line 148
    invoke-virtual {p2, v4}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    .line 149
    iget v4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    const/4 v6, 0x2

    int-to-float v6, v6

    mul-float v7, v4, v6

    mul-float v4, v4, v6

    invoke-virtual {p2, v7, v4}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    .line 150
    sget-object v4, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v4, p1, p2}, Lcom/narvii/editor/utils/TimelineUtils;->updateTransform2D(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsVideoClip;)V

    .line 151
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsVideoClip;->getVideoType()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 152
    invoke-virtual {p2, v0}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    :cond_6
    if-eqz p3, :cond_7

    .line 156
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getBgColor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v10

    :cond_7
    if-eqz p3, :cond_9

    if-eqz p2, :cond_8

    .line 157
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsClip;->getInPoint()J

    move-result-wide v4

    goto :goto_3

    :cond_8
    move-wide v4, v2

    :goto_3
    invoke-virtual {p3, v1, v4, v5}, Lcom/meicam/sdk/NvsTrack;->changeInPoint(IJ)J

    :cond_9
    if-eqz p3, :cond_b

    if-eqz p2, :cond_a

    .line 158
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsClip;->getOutPoint()J

    move-result-wide v2

    :cond_a
    invoke-virtual {p3, v1, v2, v3}, Lcom/meicam/sdk/NvsTrack;->changeOutPoint(IJ)J

    .line 160
    :cond_b
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p2, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final clearTransitionEffects(Lcom/meicam/sdk/NvsVideoTrack;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_2

    :goto_1
    if-eqz p1, :cond_1

    const-string v2, ""

    .line 114
    invoke-virtual {p1, v0, v2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    :cond_1
    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final createCompileConfig()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x1

    .line 281
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "optimize-for-network-use"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x17

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "software encorder crf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget v1, Lcom/narvii/editor/utils/EditorConstants;->VIDEO_BITRATE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "software encorder crf bitrate max"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "software encorder preset"

    const-string v2, "fast"

    .line 284
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget v1, Lcom/narvii/editor/utils/EditorConstants;->AUDIO_BITRATE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio bitrate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final createTimeline()Lcom/meicam/sdk/NvsTimeline;
    .locals 4

    .line 27
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/narvii/editor/utils/TimelineUtils;->createDefaultVideoResolution()Lcom/meicam/sdk/NvsVideoResolution;

    move-result-object v1

    invoke-direct {p0}, Lcom/narvii/editor/utils/TimelineUtils;->createDefaultVideoFps()Lcom/meicam/sdk/NvsRational;

    move-result-object v2

    invoke-direct {p0}, Lcom/narvii/editor/utils/TimelineUtils;->createDefaultAudioResolution()Lcom/meicam/sdk/NvsAudioResolution;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meicam/sdk/NvsStreamingContext;->createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final createTimeline(Lcom/narvii/scene/model/SceneDraft;Z)Lcom/meicam/sdk/NvsTimeline;
    .locals 7

    const-string v0, "draft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v3, "draft.sceneInfos"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Ljava/util/List;ZLkotlin/jvm/functions/Function5;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/narvii/editor/utils/TimelineUtils;->appendMaterialIntoTimline(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;)Lkotlin/Triple;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    .line 33
    check-cast v1, Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {p2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 37
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->bgMusicClip:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz p1, :cond_1

    .line 38
    sget-object v3, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, p1, v4}, Lcom/narvii/editor/utils/TimelineUtils;->appendAudioIntoTimeline(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsAudioTrack;)Lcom/meicam/sdk/NvsAudioClip;

    .line 40
    sget-object v3, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    const/4 v4, 0x1

    int-to-float v4, v4

    iget p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    sub-float/2addr v4, p1

    invoke-direct {v3, v4, v1, v2, p2}, Lcom/narvii/editor/utils/TimelineUtils;->correctVolume(FLcom/meicam/sdk/NvsVideoTrack;Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public final createTimeline(Lcom/narvii/scene/model/SceneInfo;)Lcom/meicam/sdk/NvsTimeline;
    .locals 7

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/narvii/scene/helper/SceneCorrectUtils;->INSTANCE:Lcom/narvii/scene/helper/SceneCorrectUtils;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string p1, "Collections.singletonList(scene)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/scene/helper/SceneCorrectUtils;->correctSceneList$default(Lcom/narvii/scene/helper/SceneCorrectUtils;Ljava/util/List;ZLkotlin/jvm/functions/Function5;ILjava/lang/Object;)Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/narvii/editor/utils/TimelineUtils;->appendMaterialIntoTimline(Lcom/meicam/sdk/NvsTimeline;Lcom/narvii/scene/helper/SceneCorrectUtils$SceneMaterial;)Lkotlin/Triple;

    return-object v0
.end method

.method public final createTimelineWithoutDurationLimit(Lcom/narvii/scene/model/SceneInfo;)Lcom/meicam/sdk/NvsTimeline;
    .locals 7

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    .line 106
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v3, v1

    .line 107
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v4, v1

    .line 108
    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->captions:Ljava/util/ArrayList;

    const-string v2, "scene.captions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->stickers:Ljava/util/ArrayList;

    const-string v2, "scene.stickers"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v2, v0

    .line 105
    invoke-direct/range {v1 .. v6}, Lcom/narvii/editor/utils/TimelineUtils;->appendMaterialIntoTimline(Lcom/meicam/sdk/NvsTimeline;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lkotlin/Triple;

    return-object v0

    .line 108
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<com.narvii.video.model.BaseAttachmentInfoPack>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createVideoResolution(II)Lcom/meicam/sdk/NvsVideoResolution;
    .locals 1

    .line 255
    new-instance v0, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 256
    iput p1, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 257
    iput p2, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 258
    new-instance p1, Lcom/meicam/sdk/NvsRational;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p2}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object p1, v0, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    return-object v0
.end method

.method public final getVideoSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamRotation(I)I

    move-result v1

    .line 292
    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;

    move-result-object p1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Lcom/meicam/sdk/NvsSize;->height:I

    iget p1, p1, Lcom/meicam/sdk/NvsSize;->width:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    .line 294
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Lcom/meicam/sdk/NvsSize;->width:I

    iget p1, p1, Lcom/meicam/sdk/NvsSize;->height:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    return-object v0
.end method

.method public final updatePipVideoTransform(Lcom/meicam/sdk/NvsVideoTrack;Lcom/narvii/pip/PipInfoPack;)V
    .locals 7

    const-string v0, "pipVideo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 325
    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    iget v3, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->scaleX:F

    iget v4, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->rotation:F

    iget-object p2, p2, Lcom/narvii/video/model/BaseAttachmentInfoPack;->translation:Landroid/graphics/PointF;

    iget v5, p2, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/PointF;->y:F

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/editor/utils/TimelineUtils;->updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;FFFF)V

    :cond_0
    return-void
.end method

.method public final updateTransform2D(Lcom/narvii/video/model/AVClipInfoPack;Lcom/meicam/sdk/NvsVideoClip;)V
    .locals 5

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nvsClip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lcom/meicam/sdk/NvsClip;->getFxCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 120
    invoke-virtual {p2, v1}, Lcom/meicam/sdk/NvsVideoClip;->getFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v2

    const-string/jumbo v3, "videoFx"

    .line 121
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsVideoFx;->getVideoFxType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsVideoFx;->getBuiltinVideoFxName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Transform 2D"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getScale()F

    move-result v0

    float-to-double v0, v0

    const-string v3, "Scale X"

    invoke-virtual {v2, v3, v0, v1}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    .line 123
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getScale()F

    move-result v0

    float-to-double v0, v0

    const-string v3, "Scale Y"

    invoke-virtual {v2, v3, v0, v1}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    .line 124
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getTransformX()F

    move-result v0

    float-to-double v0, v0

    const-string v3, "Trans X"

    invoke-virtual {v2, v3, v0, v1}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    .line 125
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getTransformY()F

    move-result v0

    float-to-double v0, v0

    const-string v3, "Trans Y"

    invoke-virtual {v2, v3, v0, v1}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getRotateAngle()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/meicam/sdk/NvsVideoClip;->setExtraVideoRotation(I)V

    return-void
.end method
