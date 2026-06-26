.class public final Lcom/narvii/video/widget/MediaTimeLineComponent;
.super Landroid/widget/FrameLayout;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/ITimeLineControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTimeLineComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTimeLineComponent.kt\ncom/narvii/video/widget/MediaTimeLineComponent\n*L\n1#1,1175:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;

.field public static final DATA_TYPE_AUDIO:I = 0x65

.field public static final DATA_TYPE_CAPTION:I = 0x66

.field public static final DATA_TYPE_PIP:I = 0x68

.field public static final DATA_TYPE_STICKER:I = 0x67

.field public static final DATA_TYPE_VIDEO:I = 0x64

.field public static final REPLAY_TRIGGER_TYPE_ACTION_UP:I = 0x2

.field public static final REPLAY_TRIGGER_TYPE_COMPLETE:I = 0x1

.field public static final REPLAY_TRIGGER_TYPE_REACHED_TRIM_END:I = 0x4

.field public static final REPLAY_TRIGGER_TYPE_SCROLL_IDLE:I = 0x3

.field public static final TIMELINE_TYPE_SCROLLING:I = 0xca

.field public static final TIMELINE_TYPE_TRIMMING:I = 0xc9


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private activeClipIndex:I

.field private additionalFramePostOffset:I

.field private additionalFramePreOffset:I

.field private additionalFramePreOffsetDx:I

.field private final attributes:Landroid/util/AttributeSet;

.field private borderColor:I

.field private final bottomGapSize:I

.field private componentCenterX:F

.field private final compositionLengthMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final compositionTailFrameLengthInMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private controllerHandlerWidth:I

.field private controllerWidthOffset:I

.field private curControllerEndTimeOffsetInMs:I

.field private curControllerStartTimeOffsetInMs:I

.field private curFirstVideoFrameTimeInMs:I

.field private curPlaybackTimeBase:J

.field private curRecyclerViewState:I

.field private curScrollToPosition:I

.field private dataType:I

.field private frameCellWidth:I

.field private final frameCountInBaseRect:I

.field private final frameCountInHighlightRect:I

.field private final frameItemCornerRadius:I

.field private frameOffset:I

.field private frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

.field private interceptedByController:Z

.field private isForAudioWave:Z

.field private lastOffsetRecord:I

.field private final mainHandler:Landroid/os/Handler;

.field private final mainTrackCompositionLengthMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private maxVisibleSectionIntervalInMs:I

.field private mediaClipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;"
        }
    .end annotation
.end field

.field private mediaLengthInMs:I

.field private mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

.field private minOutputLength:I

.field private pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

.field private playbackTimer:Ljava/lang/Runnable;

.field private realFrameTimelineWidth:I

.field private realTailFrameWidth:I

.field private retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

.field private final roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rtl:Z

.field private seeking:Z

.field private final sideShadowPaint:Landroid/graphics/Paint;

.field private final sideShadowRect:Landroid/graphics/Rect;

.field private timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

.field private timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

.field private timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

.field private timeLineItemFrameLengthInMs:F

.field private timeLineType:I

.field private totalVisibleFrameCountForAdapter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->Companion:Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->attributes:Landroid/util/AttributeSet;

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 95
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    const/16 p2, 0xbb8

    .line 96
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->minOutputLength:I

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 115
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 116
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 120
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    .line 124
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    .line 125
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    .line 135
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 139
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->rtl:Z

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameItemCornerRadius:I

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 147
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 149
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->attributes:Landroid/util/AttributeSet;

    sget-object v1, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent:[I

    invoke-virtual {p1, v0, v1, p2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 150
    sget v0, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_frameCountInHighlightRect:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    .line 151
    sget v0, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_frameCountInBaseRect:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    .line 152
    sget v0, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_controllerHandlerWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerHandlerWidth:I

    .line 153
    sget v0, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_frameOffset:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    .line 154
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 157
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_side_shadow_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    new-instance p1, Lcom/narvii/video/widget/MediaTimeLineComponent$1;

    invoke-direct {p1, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getActiveClipIndex$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    return p0
.end method

.method public static final synthetic access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    return p0
.end method

.method public static final synthetic access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    return p0
.end method

.method public static final synthetic access$getBorderColor$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    return p0
.end method

.method public static final synthetic access$getCompositionLengthMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCompositionTailFrameLengthInMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    return p0
.end method

.method public static final synthetic access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    return p0
.end method

.method public static final synthetic access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurFirstMediaFrameTime()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    return p0
.end method

.method public static final synthetic access$getCurPlaybackTimeBase$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    return-wide v0
.end method

.method public static final synthetic access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->dataType:I

    return p0
.end method

.method public static final synthetic access$getFrameItemCornerRadius$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameItemCornerRadius:I

    return p0
.end method

.method public static final synthetic access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    return p0
.end method

.method public static final synthetic access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object p0
.end method

.method public static final synthetic access$getInterceptedByController$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    return p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    return p0
.end method

.method public static final synthetic access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMediaPlayer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/interfaces/IPreviewPlayer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-object p0
.end method

.method public static final synthetic access$getPlaybackTimer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "playbackTimer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    return-object p0
.end method

.method public static final synthetic access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-object p0
.end method

.method public static final synthetic access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    return p0
.end method

.method public static final synthetic access$getTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineType:I

    return p0
.end method

.method public static final synthetic access$getTotalVisibleFrameCountForAdapter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    return p0
.end method

.method public static final synthetic access$isForAudioWave$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->isForAudioWave:Z

    return p0
.end method

.method public static final synthetic access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    return-void
.end method

.method public static final synthetic access$setActiveClipIndex$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    return-void
.end method

.method public static final synthetic access$setAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    return-void
.end method

.method public static final synthetic access$setAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    return-void
.end method

.method public static final synthetic access$setBorderColor$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    return-void
.end method

.method public static final synthetic access$setCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    return-void
.end method

.method public static final synthetic access$setCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    return-void
.end method

.method public static final synthetic access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    return-void
.end method

.method public static final synthetic access$setCurPlaybackTimeBase$p(Lcom/narvii/video/widget/MediaTimeLineComponent;J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    return-void
.end method

.method public static final synthetic access$setDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->dataType:I

    return-void
.end method

.method public static final synthetic access$setForAudioWave$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->isForAudioWave:Z

    return-void
.end method

.method public static final synthetic access$setFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    return-void
.end method

.method public static final synthetic access$setFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public static final synthetic access$setInterceptedByController$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    return-void
.end method

.method public static final synthetic access$setMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    return-void
.end method

.method public static final synthetic access$setMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Ljava/util/ArrayList;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setMediaPlayer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    return-void
.end method

.method public static final synthetic access$setPlaybackTimer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Ljava/lang/Runnable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/video/widget/MediaRetrieveController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    return-void
.end method

.method public static final synthetic access$setTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/widget/HorizontalRecyclerView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    return-void
.end method

.method public static final synthetic access$setTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-void
.end method

.method public static final synthetic access$setTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    return-void
.end method

.method public static final synthetic access$setTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineType:I

    return-void
.end method

.method public static final synthetic access$setTotalVisibleFrameCountForAdapter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    return-void
.end method

.method private final getCurFirstMediaFrameTime()I
    .locals 13

    .line 885
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    sub-int/2addr v0, v3

    .line 888
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    .line 889
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getTailFrameItemInfo(I)Lkotlin/Pair;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    if-eqz v7, :cond_5

    .line 890
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-le v0, v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v6, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    sub-int v3, v0, v5

    int-to-float v3, v3

    .line 899
    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    mul-float v3, v3, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    .line 901
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "compositionTailFrameLengthInMsList[index]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 903
    :cond_7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 904
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v2, v1

    :goto_5
    instance-of v3, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    move-object v1, v2

    :goto_6
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_a

    .line 906
    :cond_b
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    goto :goto_8

    :cond_c
    move-object v3, v1

    :goto_8
    instance-of v7, v3, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v7, :cond_d

    goto :goto_9

    :cond_d
    move-object v1, v3

    :goto_9
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 903
    :cond_e
    :goto_a
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eqz v6, :cond_f

    .line 908
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_f

    .line 909
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v0, v1

    goto :goto_b

    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_b
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p0

    .line 913
    invoke-static/range {v7 .. v12}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v4, v1

    float-to-int v0, v4

    .line 914
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic getFirstFrameStartDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 810
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 838
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs(IIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 822
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    move-result p0

    return p0
.end method

.method private final initComponent(ZZZZII)V
    .locals 12

    move-object v7, p0

    move/from16 v8, p5

    .line 456
    iget-object v0, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v0, v0, v1

    iget v1, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    .line 457
    iget-object v9, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    .line 458
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v10, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 459
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 464
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->clearOnScrollListeners()V

    .line 465
    new-instance v11, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;

    move-object v0, v11

    move-object v1, v9

    move-object v2, p0

    move v3, p2

    move v4, p1

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;-><init>(Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZZ)V

    invoke-virtual {v9, v11}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 512
    new-instance v0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZ)V

    iput-object v0, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz p4, :cond_0

    .line 514
    iget-object v0, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    invoke-virtual {v9, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 518
    :cond_0
    iget-object v6, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    if-eqz v6, :cond_5

    if-lez v8, :cond_1

    .line 523
    iput v10, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 524
    iput v8, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    :cond_1
    move/from16 v2, p6

    if-ne v8, v2, :cond_2

    const/4 v0, -0x1

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    int-to-float v0, v8

    .line 529
    iget v1, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v4, v0

    .line 531
    :goto_0
    iget v1, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->minOutputLength:I

    move-object v0, v6

    move/from16 v2, p6

    move-object v3, p0

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/widget/MediaRetrieveController;->initComponent(IILcom/narvii/video/interfaces/ITimeLineControllerCallback;II)V

    .line 533
    iget-object v0, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, v7, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mediaClipList[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 535
    instance-of v1, v0, Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v1, :cond_3

    .line 536
    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMsWithSpeed()I

    move-result v10

    goto :goto_1

    .line 538
    :cond_3
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->trimStartInMs()I

    move-result v10

    .line 543
    :cond_4
    :goto_1
    invoke-virtual {v6, v10}, Lcom/narvii/video/widget/MediaRetrieveController;->updateMediaSectionStartTime(I)V

    :cond_5
    return-void
.end method

.method public static synthetic initTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;ZILjava/lang/Object;)I
    .locals 20

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0xbb8

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    goto :goto_2

    :cond_2
    move/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const/4 v14, -0x1

    goto :goto_4

    :cond_4
    move/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    const/4 v15, 0x0

    goto :goto_5

    :cond_5
    move/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    move/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    const/16 v17, 0x0

    goto :goto_7

    :cond_7
    move/from16 v17, p14

    :goto_7
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_8

    move-object/from16 v18, v2

    goto :goto_8

    :cond_8
    move-object/from16 v18, p15

    :goto_8
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/16 v19, 0x0

    goto :goto_9

    :cond_9
    move/from16 v19, p16

    :goto_9
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p7

    .line 361
    invoke-virtual/range {v3 .. v19}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I

    move-result v0

    return v0
.end method

.method private final replay(III)V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 919
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onReplayTriggered(III)V

    :cond_0
    int-to-long p1, p1

    .line 920
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 926
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/narvii/video/widget/MediaTimeLineComponent$replay$1;

    invoke-direct {p2, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$replay$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string p1, "playbackTimer"

    .line 918
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final resetGlobalVariables()V
    .locals 3

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 300
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    .line 301
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 302
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 303
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 304
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    const-wide/16 v1, 0x0

    .line 305
    iput-wide v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 306
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 307
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 308
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController;->reset()V

    :cond_0
    return-void
.end method

.method public static synthetic scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    const/4 p5, 0x0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    const/4 p6, 0x0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    const/4 p7, 0x0

    .line 646
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine(IZZZZIZ)V

    return-void
.end method

.method public static synthetic scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 621
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip(IIZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addTimeLineOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 264
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    if-lez v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 269
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 270
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getAdditionalFramePostOffsetDx()I
    .locals 2

    .line 577
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getAdditionalFramePreOffsetDx()I
    .locals 1

    .line 573
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    return v0
.end method

.method public final getAttributes()Landroid/util/AttributeSet;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public final getCurCutPosition()[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 556
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public final getCurRecyclerViewState()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curRecyclerViewState:I

    return v0
.end method

.method public final getFirstFrameStartDx(Z)I
    .locals 3

    .line 811
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->rtl:Z

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    move-result p1

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    move-result p1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    sub-int/2addr p1, v0

    neg-int v0, p1

    :goto_0
    return v0
.end method

.method public final getFrameCellWidth()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    return v0
.end method

.method public final getMediaLengthInMs()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    return v0
.end method

.method public final getRealFrameTimelineWidth()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    return v0
.end method

.method public final getRealTailFrameWidth()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    return v0
.end method

.method public final getSectionDurationInMs(IIZ)I
    .locals 8

    .line 843
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v3, p1

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 844
    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_0

    .line 845
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    goto :goto_1

    .line 847
    :cond_0
    iget v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v5, v5, v6

    :goto_1
    add-int v6, v2, v5

    if-lt p2, v6, :cond_1

    move v2, v6

    goto/16 :goto_4

    :cond_1
    const-string v6, "mainTrackCompositionLengthMsList[index]"

    if-lt v5, v3, :cond_4

    .line 854
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_2

    int-to-float p2, v3

    int-to-float p3, v5

    div-float/2addr p2, p3

    .line 855
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_2
    add-int/2addr v4, p1

    goto :goto_5

    :cond_2
    if-eqz p3, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_3

    .line 857
    :cond_3
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "accurateMainTrackCompositionFrameCountList[index]"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    div-float/2addr p2, p3

    :goto_3
    int-to-float p3, v3

    mul-float p3, p3, p2

    int-to-float p2, v5

    div-float/2addr p3, p2

    .line 858
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    goto :goto_2

    :cond_4
    if-lez p2, :cond_5

    sub-int/2addr p2, v2

    sub-int p2, v5, p2

    int-to-float v7, p2

    int-to-float v5, v5

    div-float/2addr v7, v5

    .line 865
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    mul-float v7, v7, v5

    float-to-int v5, v7

    add-int/2addr v4, v5

    sub-int/2addr v3, p2

    const/4 p2, 0x0

    goto :goto_4

    .line 869
    :cond_5
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    sub-int/2addr v3, v5

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_6
    move v1, v3

    :goto_5
    if-lez v1, :cond_7

    int-to-float p1, v1

    .line 875
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    add-int/2addr v4, p1

    :cond_7
    return v4
.end method

.method public final getSeeking()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    return v0
.end method

.method public final getTimeLineScrolledDx(Z)I
    .locals 6

    .line 823
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 825
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 826
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 827
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    instance-of v4, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    goto :goto_7

    .line 829
    :cond_6
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object v4, v1

    :goto_5
    instance-of v5, v4, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    move-object v1, v4

    :goto_6
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 826
    :cond_9
    :goto_7
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz p1, :cond_a

    if-lt v0, v3, :cond_a

    add-int/lit8 v0, v0, -0x1

    .line 832
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v0, v0, p1

    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    add-int/2addr v0, p1

    goto :goto_8

    .line 834
    :cond_a
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v0, v0, p1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final getTimelineVisibleSectionWidth()I
    .locals 1

    .line 819
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    return v0
.end method

.method public final getTotalFrameCount()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    return v0
.end method

.method public final initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;",
            "Lcom/narvii/video/interfaces/IPreviewPlayer;",
            "Lcom/narvii/video/services/FrameRetrieverManager;",
            "I",
            "Ljava/lang/Integer;",
            "FZIZZI",
            "Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;",
            "Z)I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    const-string v0, "mediaClipList"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    return v14

    .line 365
    :cond_0
    iget v0, v15, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    if-nez v0, :cond_1

    .line 366
    new-instance v13, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v18, v13

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, v15

    const/4 v1, 0x0

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->resetGlobalVariables()V

    move/from16 v2, p1

    .line 384
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->dataType:I

    move/from16 v2, p2

    .line 385
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineType:I

    move/from16 v2, p3

    .line 386
    iput-boolean v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->isForAudioWave:Z

    .line 387
    iget-object v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 388
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 389
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-interface {v4}, Lcom/narvii/video/interfaces/ITimelineClip;->copy()Lcom/narvii/video/interfaces/ITimelineClip;

    move-result-object v4

    .line 390
    invoke-interface {v4, v3}, Lcom/narvii/video/interfaces/ITimelineClip;->setIndexInScene(I)V

    .line 391
    iget-object v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    invoke-interface {v4}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLength()I

    move-result v4

    add-int/2addr v6, v4

    iput v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p8, :cond_c

    .line 394
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->minOutputLength:I

    const-wide/16 v2, 0x0

    .line 395
    iput-wide v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 396
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    move/from16 v2, p11

    .line 397
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    move-object/from16 v2, p5

    .line 398
    iput-object v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    add-int/lit8 v2, p7, 0x1

    .line 400
    iget v3, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    const/4 v4, 0x1

    if-le v4, v3, :cond_3

    goto :goto_1

    :cond_3
    if-le v2, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    if-lez p7, :cond_5

    move/from16 v3, p7

    goto :goto_2

    :cond_5
    const/16 v3, 0x3a98

    .line 405
    :goto_2
    iget v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    if-le v4, v6, :cond_6

    goto :goto_3

    :cond_6
    if-le v2, v6, :cond_7

    .line 406
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    int-to-float v2, v2

    iget v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    mul-float v2, v2, v6

    float-to-int v2, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v3

    .line 405
    :goto_4
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    int-to-float v1, v1

    cmpl-float v1, p9, v1

    if-lez v1, :cond_8

    move/from16 v1, p9

    goto :goto_5

    :cond_8
    int-to-float v1, v3

    .line 412
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 409
    :goto_5
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 414
    new-instance v1, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    invoke-direct {v1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 432
    iput-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 433
    invoke-virtual {v0, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updateClipComponent(Ljava/util/List;)V

    .line 434
    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    const/16 v2, 0x3e8

    if-eqz v1, :cond_9

    .line 435
    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    int-to-float v4, v2

    mul-float v1, v1, v4

    float-to-int v1, v1

    rem-int/2addr v1, v2

    goto :goto_6

    .line 437
    :cond_9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLength()I

    move-result v1

    rem-int/2addr v1, v2

    :goto_6
    if-nez v1, :cond_a

    .line 439
    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    goto :goto_7

    :cond_a
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v1, v4

    mul-float v2, v2, v1

    float-to-int v1, v2

    :goto_7
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    .line 440
    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v1

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    move-object/from16 v1, p15

    .line 441
    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 442
    iput v3, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    if-eqz v7, :cond_b

    .line 443
    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    invoke-virtual {v7, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->setFrameRetrieveInterval(F)V

    :cond_b
    move-object/from16 p1, p0

    move/from16 p2, p12

    move/from16 p3, p10

    move/from16 p4, p13

    move/from16 p5, p16

    move/from16 p6, p14

    move/from16 p7, v3

    .line 444
    invoke-direct/range {p1 .. p7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initComponent(ZZZZII)V

    .line 451
    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1

    .line 394
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v1, 0x0

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public final isTailFrameCellPlaying()Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 805
    invoke-static {p0, v1, v0, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    mul-int v3, v3, v4

    sub-int v6, v2, v3

    if-lez v4, :cond_0

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 807
    :goto_0
    new-instance v2, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public onControllerMoved(IIZZ)V
    .locals 1

    .line 200
    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 201
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    if-eqz p4, :cond_3

    .line 204
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_1

    .line 206
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 207
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    goto :goto_0

    .line 209
    :cond_0
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    goto :goto_0

    .line 212
    :cond_1
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 213
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    goto :goto_0

    .line 215
    :cond_2
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    :goto_0
    add-int/2addr p2, p3

    .line 218
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 204
    invoke-interface {p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    goto :goto_1

    .line 222
    :cond_3
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    add-int/2addr p2, p1

    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr p1, p3

    const/4 p3, 0x2

    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->clearOnScrollListeners()V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 229
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 230
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-nez v0, :cond_0

    .line 231
    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 236
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->retrieve_controller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/MediaRetrieveController;

    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->isTouchInSlideHandler(F)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 278
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_2

    .line 279
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onControllerActive()V

    .line 281
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 240
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 241
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    mul-int p4, p4, p5

    int-to-float p4, p4

    iget p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    int-to-float p5, p5

    div-float/2addr p4, p5

    sub-float/2addr p3, p4

    div-float/2addr p3, p2

    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerHandlerWidth:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    .line 243
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    sub-int v3, p3, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    sub-int v4, p3, p4

    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerHandlerWidth:I

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/widget/MediaRetrieveController;->layoutRect(IIIII)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    div-int/2addr p3, p4

    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 246
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    if-eqz p3, :cond_1

    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    invoke-virtual {p3, p4}, Lcom/narvii/video/widget/MediaRetrieveController;->setFrameCellWidth(I)V

    .line 247
    :cond_1
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz p3, :cond_4

    .line 248
    iget-object p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz p5, :cond_2

    invoke-virtual {p5, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p4

    .line 247
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p4

    .line 250
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->componentCenterX:F

    if-eqz p1, :cond_7

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-gtz p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-lez p1, :cond_7

    .line 252
    :cond_5
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->run()V

    .line 253
    :cond_6
    iput-object p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

    .line 254
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineLayout()V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    :cond_2
    return v1
.end method

.method public final playbackStatusChanged(Z)V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const-string v3, "playbackTimer"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 550
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void

    .line 548
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final refreshTimeLine()V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    :cond_0
    return-void
.end method

.method public final scrollTimeLine(IZZZZIZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    .line 647
    iget-object v3, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v3, :cond_1f

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    .line 649
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 650
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    if-nez p7, :cond_1e

    .line 652
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 653
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz v2, :cond_1e

    .line 654
    new-instance v2, Lcom/narvii/video/widget/MediaTimeLineComponent$scrollTimeLine$1$1;

    invoke-direct {v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent$scrollTimeLine$1$1;-><init>(Lcom/narvii/widget/HorizontalRecyclerView;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_11

    :cond_0
    if-eqz p3, :cond_3

    .line 658
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 659
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    add-int/2addr v2, v5

    .line 660
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    if-eq v2, v5, :cond_1

    .line 661
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    if-nez p7, :cond_1

    .line 663
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    if-nez p7, :cond_1e

    .line 672
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 673
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz v2, :cond_1e

    .line 674
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    goto/16 :goto_11

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_3
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    int-to-float v5, v5

    if-eqz p5, :cond_4

    .line 683
    iget-object v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    :goto_0
    if-eqz p5, :cond_5

    .line 684
    iget-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    iget-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    :goto_1
    if-eqz p5, :cond_6

    .line 685
    iget-object v8, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    iget-object v8, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    :goto_2
    if-eqz p5, :cond_8

    .line 689
    iget-object v10, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    add-int/2addr v11, v14

    if-ge v11, v2, :cond_7

    .line 691
    iget-object v14, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    iget-object v15, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    const-string v9, "accurateMainTrackCompositionFrameCountList[index]"

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v14, v9

    iget v9, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    mul-float v14, v14, v9

    add-float/2addr v12, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    sub-int v9, v1, v2

    int-to-float v9, v9

    sub-float/2addr v9, v12

    float-to-int v9, v9

    goto :goto_4

    :cond_8
    move v9, v1

    const/4 v12, 0x0

    .line 701
    :goto_4
    iget-object v10, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->sumOfInt(Ljava/lang/Iterable;)I

    move-result v10

    if-lt v9, v10, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    const-string v13, "pickedCompositionList[index]"

    if-nez p5, :cond_a

    if-eqz v10, :cond_a

    move/from16 v19, v5

    const/4 v5, 0x0

    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_a
    if-eqz p5, :cond_b

    move v10, v2

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    .line 710
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v19, v5

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_7
    if-ge v5, v14, :cond_11

    .line 711
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v15, v4

    if-gt v15, v10, :cond_e

    add-int/lit8 v17, v17, 0x1

    .line 714
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    mul-int/lit16 v4, v4, 0x3e8

    .line 715
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v11

    rem-int/lit16 v11, v11, 0x3e8

    if-eqz v11, :cond_c

    int-to-float v11, v9

    add-float/2addr v11, v12

    move/from16 p3, v12

    int-to-float v12, v10

    add-float/2addr v11, v12

    int-to-float v4, v4

    cmpl-float v12, v11, v4

    if-lez v12, :cond_d

    sub-float/2addr v11, v4

    .line 717
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v12, "pickedCompositionTailFrameLengthList[index]"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    div-float/2addr v11, v4

    const v4, 0x3f666666    # 0.9f

    .line 716
    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float v18, v18, v4

    goto :goto_8

    :cond_c
    move/from16 p3, v12

    :cond_d
    :goto_8
    move/from16 v11, v16

    move-object/from16 v16, v7

    goto :goto_a

    :cond_e
    move/from16 p3, v12

    if-nez v16, :cond_f

    sub-int v4, v15, v10

    goto :goto_9

    .line 726
    :cond_f
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_9
    add-int v11, v4, v16

    if-lt v11, v9, :cond_10

    sub-int v4, v9, v16

    move v9, v4

    move v4, v5

    move/from16 v5, v17

    goto :goto_b

    :cond_10
    int-to-float v4, v4

    .line 738
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    div-float/2addr v4, v12

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v7

    const-string v7, "pickedCompositionFrameCountList[index]"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v7

    mul-float v4, v4, v7

    add-float v19, v19, v4

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v12, p3

    move-object/from16 v7, v16

    const/4 v4, 0x0

    move/from16 v16, v11

    goto/16 :goto_7

    :cond_11
    move/from16 v5, v17

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 746
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v2, 0x0

    goto :goto_d

    :cond_12
    if-ne v4, v5, :cond_14

    add-int/lit8 v5, v4, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_c
    if-ge v7, v5, :cond_13

    .line 750
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_13
    sub-int/2addr v10, v2

    .line 752
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    sub-int v2, v10, v2

    goto :goto_d

    .line 756
    :cond_14
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    :goto_d
    if-le v9, v2, :cond_15

    .line 760
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    if-eq v4, v5, :cond_16

    .line 761
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_16

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    rem-int/lit16 v5, v5, 0x3e8

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v7, 0x1

    :cond_16
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_17

    int-to-float v5, v2

    .line 763
    iget v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v5, v6

    sub-int/2addr v9, v2

    int-to-float v2, v9

    .line 764
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "pickedCompositionTailFra\u2026t[targetCompositionIndex]"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    goto :goto_f

    :cond_17
    int-to-float v2, v9

    .line 766
    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float v5, v2, v4

    :goto_f
    add-float v5, v5, v18

    add-float v2, v19, v5

    float-to-int v4, v2

    int-to-float v5, v4

    sub-float/2addr v2, v5

    .line 771
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    int-to-float v5, v5

    mul-float v2, v2, v5

    float-to-int v2, v2

    .line 774
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    if-eq v4, v5, :cond_1b

    if-nez p7, :cond_1a

    .line 776
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v6, v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v6, :cond_18

    const/4 v5, 0x0

    :cond_18
    check-cast v5, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v5, :cond_1a

    if-nez v2, :cond_19

    const/4 v11, 0x1

    goto :goto_10

    :cond_19
    neg-int v11, v2

    :goto_10
    invoke-virtual {v5, v4, v11}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 778
    :cond_1a
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 779
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    :cond_1b
    if-ltz v2, :cond_1e

    .line 783
    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    sub-int v4, v2, v4

    if-nez p7, :cond_1d

    .line 785
    iget-boolean v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->rtl:Z

    if-eqz v5, :cond_1c

    neg-int v4, v4

    :cond_1c
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 787
    :cond_1d
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    :cond_1e
    :goto_11
    if-eqz p4, :cond_1f

    int-to-long v2, v1

    .line 791
    iput-wide v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 792
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 793
    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    if-lt v1, v2, :cond_1f

    .line 794
    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    :cond_1f
    return-void
.end method

.method public final scrollTimeLineBy(I)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method public final scrollTimeLineToClip(IIZ)I
    .locals 11

    .line 622
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz p1, :cond_3

    if-gt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x75

    const/4 v10, 0x0

    move-object v1, p0

    move v5, p3

    .line 626
    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    return v0

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLength()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x76

    const/4 v10, 0x0

    move-object v1, p0

    move v5, p3

    .line 633
    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    return p2

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public final setActiveClipInTrack(I)V
    .locals 1

    .line 320
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 323
    :cond_0
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    .line 324
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    :cond_1
    return-void
.end method

.method public final setCurRecyclerViewState(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curRecyclerViewState:I

    return-void
.end method

.method public final setFrameCellWidth(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    return-void
.end method

.method public final setMediaLengthInMs(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    return-void
.end method

.method public final setOnTimeLineTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public final setRealFrameTimelineWidth(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    return-void
.end method

.method public final setRealTailFrameWidth(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    return-void
.end method

.method public final setSeeking(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    return-void
.end method

.method public final setTimeLineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-void
.end method

.method public final updateAdditionalFrameOffset(III)V
    .locals 1

    .line 560
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    if-eq v0, p2, :cond_1

    .line 561
    :cond_0
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 562
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    .line 563
    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    .line 564
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final updateClipComponent(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mediaClipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 337
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0x3f7fbe77    # 0.999f

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 338
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    int-to-float v5, v2

    iget v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    float-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_1
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->mainTrackClipComposition()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    int-to-float v4, v1

    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v1, p1, :cond_3

    .line 349
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "accurateCompositionVisibleFrameCountList[index]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 351
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge v0, p1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "accurateMainTrackCompositionFrameCountList[index]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final updatePlaybackTime(J)V
    .locals 3

    .line 595
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, p1, v0

    .line 596
    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    if-nez v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    if-eqz v2, :cond_0

    long-to-float v0, v0

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/narvii/video/widget/MediaRetrieveController;->updatePointerPosition(F)V

    .line 599
    :cond_0
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 600
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    if-lt p1, p2, :cond_1

    const/4 p1, 0x0

    .line 607
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 609
    :cond_1
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    if-ge p1, p2, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 614
    :goto_0
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr p2, v1

    invoke-direct {p0, v0, p2, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    :cond_3
    return-void
.end method
