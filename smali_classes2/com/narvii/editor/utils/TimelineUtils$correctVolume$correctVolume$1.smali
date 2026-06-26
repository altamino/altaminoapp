.class final Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimelineUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/utils/TimelineUtils;->correctVolume(FLcom/meicam/sdk/NvsVideoTrack;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Lcom/meicam/sdk/NvsTrack;",
        ">;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimelineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimelineUtils.kt\ncom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,351:1\n1587#2,2:352\n*E\n*S KotlinDebug\n*F\n+ 1 TimelineUtils.kt\ncom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1\n*L\n228#1,2:352\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;

    invoke-direct {v0}, Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;-><init>()V

    sput-object v0, Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/utils/TimelineUtils$correctVolume$correctVolume$1;->invoke(Ljava/util/List;F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/meicam/sdk/NvsTrack;",
            ">;F)V"
        }
    .end annotation

    const-string/jumbo v0, "trackList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsTrack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 232
    instance-of v3, v0, Lcom/meicam/sdk/NvsVideoTrack;

    const-string v4, "clip"

    if-eqz v3, :cond_1

    .line 233
    move-object v3, v0

    check-cast v3, Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v3, v1}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v3

    .line 234
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v4

    iget v4, v4, Lcom/meicam/sdk/NvsVolume;->leftVolume:F

    mul-float v4, v4, p2

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v5

    iget v5, v5, Lcom/meicam/sdk/NvsVolume;->rightVolume:F

    mul-float v5, v5, p2

    invoke-virtual {v3, v4, v5}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    goto :goto_1

    .line 236
    :cond_1
    instance-of v3, v0, Lcom/meicam/sdk/NvsAudioTrack;

    if-eqz v3, :cond_2

    .line 237
    move-object v3, v0

    check-cast v3, Lcom/meicam/sdk/NvsAudioTrack;

    invoke-virtual {v3, v1}, Lcom/meicam/sdk/NvsAudioTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsAudioClip;

    move-result-object v3

    .line 238
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v4

    iget v4, v4, Lcom/meicam/sdk/NvsVolume;->leftVolume:F

    mul-float v4, v4, p2

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsClip;->getVolumeGain()Lcom/meicam/sdk/NvsVolume;

    move-result-object v5

    iget v5, v5, Lcom/meicam/sdk/NvsVolume;->rightVolume:F

    mul-float v5, v5, p2

    invoke-virtual {v3, v4, v5}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
