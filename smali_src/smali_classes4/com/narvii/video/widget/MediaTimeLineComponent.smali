.class public final Lcom/narvii/video/widget/MediaTimeLineComponent;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/ITimeLineControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;,
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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
.field private final accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private activeClipIndex:I

.field private additionalFramePostOffset:I

.field private additionalFramePreOffset:I

.field private additionalFramePreOffsetDx:I

.field private final attributes:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private interceptedByController:Z

.field private isForAudioWave:Z

.field private lastOffsetRecord:I

.field private final mainHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainTrackCompositionLengthMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaLengthInMs:I

.field private mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private minOutputLength:I

.field private pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playbackTimer:Ljava/lang/Runnable;

.field private realFrameTimelineWidth:I

.field private realTailFrameWidth:I

.field private retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rtl:Z

.field private seeking:Z

.field private final sideShadowPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sideShadowRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeLine:Lcom/narvii/widget/HorizontalRecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeLineItemFrameLengthInMs:F

.field private timeLineType:I

.field private totalVisibleFrameCountForAdapter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->Companion:Lcom/narvii/video/widget/MediaTimeLineComponent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attributes"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->attributes:Landroid/util/AttributeSet;

    .line 16
    .line 17
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 20
    .line 21
    const/16 v0, 0xbb8

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->minOutputLength:I

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 80
    const/4 v0, -0x1

    .line 81
    .line 82
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    .line 83
    .line 84
    new-instance v0, Landroid/graphics/Rect;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    .line 90
    .line 91
    new-instance v0, Landroid/graphics/Paint;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    .line 97
    .line 98
    new-instance v1, Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    .line 107
    iput-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    sget v2, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_controller_text_size:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v1

    .line 118
    .line 119
    iput v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    .line 120
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    iput-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 130
    move-result v1

    .line 131
    .line 132
    iput-boolean v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->rtl:Z

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    sget v2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_corner_radius:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 142
    move-result v1

    .line 143
    .line 144
    iput v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameItemCornerRadius:I

    .line 145
    const/4 v1, 0x0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 152
    .line 153
    sget-object v2, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent:[I

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    const-string p2, "obtainStyledAttributes(...)"

    .line 160
    .line 161
    .line 162
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    sget p2, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_frameCountInHighlightRect:I

    .line 165
    .line 166
    const/16 v2, 0xf

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 170
    move-result p2

    .line 171
    .line 172
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    .line 173
    .line 174
    sget v2, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_frameCountInBaseRect:I

    .line 175
    .line 176
    const/16 v3, 0x15

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 180
    move-result v2

    .line 181
    .line 182
    iput v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    .line 183
    .line 184
    sget v3, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_controllerHandlerWidth:I

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    sget v5, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 194
    move-result v4

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 198
    move-result v3

    .line 199
    .line 200
    iput v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerHandlerWidth:I

    .line 201
    .line 202
    sget v3, Lcom/narvii/mediaeditor/R$styleable;->MediaTimeLineComponent_frameOffset:I

    .line 203
    sub-int/2addr v2, p2

    .line 204
    .line 205
    div-int/lit8 v2, v2, 0x2

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 209
    move-result p2

    .line 210
    .line 211
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 218
    const/4 p1, 0x1

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    .line 223
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 230
    move-result-object p1

    .line 231
    .line 232
    sget p2, Lcom/narvii/mediaeditor/R$color;->media_timeline_side_shadow_color:I

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 236
    move-result p1

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    .line 241
    new-instance p1, Lcom/narvii/video/widget/n;

    .line 242
    .line 243
    .line 244
    invoke-direct {p1, p0}, Lcom/narvii/video/widget/n;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 245
    .line 246
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    .line 247
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->dataType:I

    .line 14
    .line 15
    const/16 v3, 0x65

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    move v2, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    .line 24
    :goto_0
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v4, v5, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->getCurrentAudioPositionInTimeline$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I

    .line 28
    move-result v3

    .line 29
    :goto_1
    int-to-long v6, v3

    .line 30
    goto :goto_2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    .line 34
    move-result v3

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :goto_2
    if-eqz v2, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v4, v5, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer$DefaultImpls;->getCurrentAudioRawPositionInClip$default(Lcom/narvii/video/interfaces/IPreviewPlayer;IILjava/lang/Object;)I

    .line 41
    move-result v0

    .line 42
    :goto_3
    int-to-long v2, v0

    .line 43
    goto :goto_4

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoRawPositionInClip()I

    .line 47
    move-result v0

    .line 48
    goto :goto_3

    .line 49
    .line 50
    :goto_4
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curRecyclerViewState:I

    .line 51
    .line 52
    if-nez v0, :cond_9

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 55
    .line 56
    if-nez v0, :cond_9

    .line 57
    .line 58
    iget-wide v8, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 59
    .line 60
    cmp-long v0, v6, v8

    .line 61
    .line 62
    if-gez v0, :cond_3

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_3
    iput-wide v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v6, v7, v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onPlayerTick(JJ)V

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v4, v5, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 81
    move-result v2

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineScrolledOffsetChanged(I)V

    .line 85
    .line 86
    :cond_5
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 87
    .line 88
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 89
    add-int/2addr v0, v2

    .line 90
    int-to-long v2, v0

    .line 91
    .line 92
    sub-long v2, v6, v2

    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    .line 95
    .line 96
    if-nez v0, :cond_6

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    long-to-float v8, v2

    .line 102
    .line 103
    iget v9, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 104
    div-float/2addr v8, v9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v8}, Lcom/narvii/video/widget/MediaRetrieveController;->updatePointerPosition(F)V

    .line 108
    .line 109
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    const-string v8, "curPlaybackTimeBase = "

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    iget-wide v8, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v8, "   timeOffsetInController / timeLineItemFrameLengthInMs = "

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    long-to-float v2, v2

    .line 129
    .line 130
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 131
    div-float/2addr v2, v3

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    const-string v2, "ScenesBackgroundMusicFragment"

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 146
    .line 147
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 148
    add-int/2addr v0, v2

    .line 149
    .line 150
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 154
    move-result v0

    .line 155
    int-to-long v2, v0

    .line 156
    .line 157
    cmp-long v0, v6, v2

    .line 158
    .line 159
    if-ltz v0, :cond_9

    .line 160
    .line 161
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 162
    .line 163
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 164
    add-int/2addr v0, v2

    .line 165
    .line 166
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 167
    .line 168
    if-lt v0, v3, :cond_7

    .line 169
    .line 170
    iput v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 171
    .line 172
    :cond_7
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 173
    .line 174
    add-int v4, v0, v2

    .line 175
    .line 176
    if-ge v4, v3, :cond_8

    .line 177
    const/4 v5, 0x4

    .line 178
    .line 179
    :cond_8
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 180
    add-int/2addr v3, v0

    .line 181
    add-int/2addr v0, v2

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v3, v0, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    .line 185
    .line 186
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    .line 189
    .line 190
    if-nez p0, :cond_a

    .line 191
    .line 192
    const-string p0, "playbackTimer"

    .line 193
    .line 194
    .line 195
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 196
    goto :goto_6

    .line 197
    :cond_a
    move-object v1, p0

    .line 198
    .line 199
    :goto_6
    const-wide/16 v2, 0x28

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay$lambda$10(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method

.method public static final synthetic access$getActiveClipIndex$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getAdditionalFramePostOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getAdditionalFramePreOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getBorderColor$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getCompositionLengthMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCompositionTailFrameLengthInMsList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurFirstMediaFrameTime()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getDataType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->dataType:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getFrameItemCornerRadius$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameItemCornerRadius:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getFrameOffset$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getMediaClipList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRoundCompositionVisibleFrameCountList$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTimeLineItemFrameLengthInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 3
    return p0
.end method

.method public static final synthetic access$getTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineType:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getTotalVisibleFrameCountForAdapter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    .line 3
    return p0
.end method

.method public static final synthetic access$isForAudioWave$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->isForAudioWave:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    .line 4
    return-void
.end method

.method public static final synthetic access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/narvii/widget/HorizontalRecyclerView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$lambda$8$lambda$7(Lcom/narvii/widget/HorizontalRecyclerView;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine$lambda$4(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->_init_$lambda$1(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    return-void
.end method

.method private final getCurFirstMediaFrameTime()I
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    .line 13
    :goto_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 26
    move-result v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v0, v2

    .line 29
    .line 30
    :goto_2
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 31
    sub-int/2addr v0, v3

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v3

    .line 38
    move v4, v2

    .line 39
    move v5, v4

    .line 40
    move v6, v5

    .line 41
    .line 42
    :goto_3
    if-ge v4, v3, :cond_6

    .line 43
    .line 44
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 45
    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->getTailFrameItemInfo(I)Lw7/u;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    if-eqz v7, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lw7/u;->c()Ljava/lang/Object;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    check-cast v7, Ljava/lang/Integer;

    .line 59
    goto :goto_4

    .line 60
    :cond_3
    move-object v7, v1

    .line 61
    .line 62
    :goto_4
    if-eqz v7, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 66
    move-result v7

    .line 67
    .line 68
    if-le v0, v7, :cond_4

    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    :cond_4
    if-ne v0, v7, :cond_5

    .line 73
    const/4 v6, 0x1

    .line 74
    .line 75
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_6
    sub-int v3, v0, v5

    .line 79
    int-to-float v3, v3

    .line 80
    .line 81
    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 82
    mul-float/2addr v3, v4

    .line 83
    move v4, v2

    .line 84
    .line 85
    :goto_5
    if-ge v4, v5, :cond_7

    .line 86
    .line 87
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 92
    .line 93
    const-string v8, "get(...)"

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    check-cast v7, Ljava/lang/Number;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 102
    move-result v7

    .line 103
    add-float/2addr v3, v7

    .line 104
    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto :goto_5

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 110
    move-result v4

    .line 111
    .line 112
    if-eqz v4, :cond_b

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 120
    move-result-object v2

    .line 121
    goto :goto_6

    .line 122
    :cond_8
    move-object v2, v1

    .line 123
    .line 124
    :goto_6
    instance-of v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 125
    .line 126
    if-eqz v4, :cond_9

    .line 127
    move-object v1, v2

    .line 128
    .line 129
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 130
    .line 131
    :cond_9
    if-eqz v1, :cond_a

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 141
    move-result v0

    .line 142
    goto :goto_7

    .line 143
    .line 144
    .line 145
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 146
    move-result v0

    .line 147
    .line 148
    .line 149
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 150
    move-result v1

    .line 151
    .line 152
    sub-int v2, v0, v1

    .line 153
    goto :goto_9

    .line 154
    .line 155
    :cond_b
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 156
    .line 157
    if-eqz v4, :cond_c

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 161
    move-result-object v4

    .line 162
    goto :goto_8

    .line 163
    :cond_c
    move-object v4, v1

    .line 164
    .line 165
    :goto_8
    instance-of v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 166
    .line 167
    if-eqz v7, :cond_d

    .line 168
    move-object v1, v4

    .line 169
    .line 170
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 171
    .line 172
    :cond_d
    if-eqz v1, :cond_e

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    if-eqz v0, :cond_e

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 182
    move-result v2

    .line 183
    .line 184
    .line 185
    :cond_e
    :goto_9
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 186
    move-result v8

    .line 187
    .line 188
    if-eqz v6, :cond_f

    .line 189
    .line 190
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result v0

    .line 195
    .line 196
    if-ge v5, v0, :cond_f

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    check-cast v0, Ljava/lang/Number;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 208
    move-result v0

    .line 209
    .line 210
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 211
    div-float/2addr v0, v1

    .line 212
    goto :goto_a

    .line 213
    .line 214
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    :goto_a
    const/4 v9, 0x0

    .line 216
    const/4 v10, 0x0

    .line 217
    const/4 v11, 0x2

    .line 218
    const/4 v12, 0x0

    .line 219
    move-object v7, p0

    .line 220
    .line 221
    .line 222
    invoke-static/range {v7 .. v12}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 223
    move-result v1

    .line 224
    int-to-float v1, v1

    .line 225
    mul-float/2addr v1, v0

    .line 226
    add-float/2addr v3, v1

    .line 227
    float-to-int v0, v3

    .line 228
    .line 229
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 233
    move-result v0

    .line 234
    return v0
.end method

.method public static synthetic getFirstFrameStartDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, p3

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getFirstFrameStartDx(Z)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs(IIZ)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, p3

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final initComponent(ZZZZII)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 11
    mul-int/2addr v0, v1

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->J0(Landroid/view/View;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 44
    .line 45
    new-instance v2, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$1$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;Lcom/narvii/widget/HorizontalRecyclerView;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, p0, p2, p1, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZ)V

    .line 57
    .line 58
    iput-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 59
    .line 60
    if-eqz p4, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    .line 65
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    if-lez p5, :cond_1

    .line 70
    .line 71
    iput v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 72
    .line 73
    iput p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 74
    .line 75
    :cond_1
    if-ne p5, p6, :cond_2

    .line 76
    const/4 p2, -0x1

    .line 77
    :goto_0
    move v7, p2

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    int-to-float p2, p5

    .line 80
    .line 81
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 82
    int-to-float p3, p3

    .line 83
    div-float/2addr p2, p3

    .line 84
    .line 85
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    .line 86
    int-to-float p3, p3

    .line 87
    mul-float/2addr p2, p3

    .line 88
    .line 89
    const/high16 p3, 0x3f000000    # 0.5f

    .line 90
    add-float/2addr p2, p3

    .line 91
    float-to-int p2, p2

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :goto_1
    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->minOutputLength:I

    .line 95
    move-object v3, p1

    .line 96
    move v5, p6

    .line 97
    move-object v6, p0

    .line 98
    move v8, p5

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/video/widget/MediaRetrieveController;->initComponent(IILcom/narvii/video/interfaces/ITimeLineControllerCallback;II)V

    .line 102
    .line 103
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    move-result p2

    .line 108
    .line 109
    xor-int/lit8 p2, p2, 0x1

    .line 110
    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    const-string p3, "get(...)"

    .line 120
    .line 121
    .line 122
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    check-cast p2, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 125
    .line 126
    instance-of p3, p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 127
    .line 128
    if-eqz p3, :cond_3

    .line 129
    .line 130
    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMsWithSpeed()I

    .line 134
    move-result v1

    .line 135
    goto :goto_2

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-interface {p2}, Lcom/narvii/video/interfaces/ITimelineClip;->trimStartInMs()I

    .line 139
    move-result v1

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateMediaSectionStartTime(I)V

    .line 143
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

    .line 1
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

    move v12, v1

    goto :goto_2

    :cond_2
    move/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    move v14, v1

    goto :goto_4

    :cond_4
    move/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move v15, v3

    goto :goto_5

    :cond_5
    move/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_6

    :cond_6
    move/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    move/from16 v17, v3

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

    move/from16 v19, v3

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

    .line 2
    invoke-virtual/range {v3 .. v19}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I

    move-result v0

    return v0
.end method

.method private static final initTimeLine$lambda$4(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V

    .line 19
    :cond_0
    return-void
.end method

.method private final replay(III)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "playbackTimer"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onReplayTriggered(III)V

    .line 29
    :cond_1
    int-to-long p1, p1

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/video/widget/o;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/narvii/video/widget/o;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    .line 39
    .line 40
    const-wide/16 v0, 0x3e8

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method private static final replay$lambda$10(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isVideoPlaying()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const-string p0, "playbackTimer"

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    const/4 p0, 0x0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 31
    :cond_1
    return-void
.end method

.method private final resetGlobalVariables()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController;->reset()V

    .line 49
    :cond_0
    return-void
.end method

.method public static synthetic scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p9, p8, 0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p9, :cond_0

    .line 6
    move p1, v0

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 9
    .line 10
    if-eqz p9, :cond_1

    .line 11
    move p2, v0

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p9, p8, 0x4

    .line 14
    .line 15
    if-eqz p9, :cond_2

    .line 16
    move p3, v0

    .line 17
    .line 18
    :cond_2
    and-int/lit8 p9, p8, 0x8

    .line 19
    .line 20
    if-eqz p9, :cond_3

    .line 21
    move p4, v0

    .line 22
    .line 23
    :cond_3
    and-int/lit8 p9, p8, 0x10

    .line 24
    .line 25
    if-eqz p9, :cond_4

    .line 26
    move p5, v0

    .line 27
    .line 28
    :cond_4
    and-int/lit8 p9, p8, 0x20

    .line 29
    .line 30
    if-eqz p9, :cond_5

    .line 31
    move p6, v0

    .line 32
    .line 33
    :cond_5
    and-int/lit8 p8, p8, 0x40

    .line 34
    .line 35
    if-eqz p8, :cond_6

    .line 36
    move p7, v0

    .line 37
    .line 38
    .line 39
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine(IZZZZIZ)V

    .line 40
    return-void
.end method

.method private static final scrollTimeLine$lambda$8$lambda$7(Lcom/narvii/widget/HorizontalRecyclerView;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$it"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    const-string v0, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    .line 20
    return-void
.end method

.method public static synthetic scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    const/4 p3, 0x1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip(IIZ)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method


# virtual methods
.method public final addTimeLineOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v2

    .line 19
    .line 20
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    .line 21
    sub-int/2addr v2, v3

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result v1

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    .line 41
    sub-int/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    move-result v4

    .line 50
    .line 51
    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    .line 52
    sub-int/2addr v4, v5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->sideShadowPaint:Landroid/graphics/Paint;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final getAdditionalFramePostOffsetDx()I
    .locals 2

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getAdditionalFramePreOffsetDx()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    return v0
.end method

.method public final getAttributes()Landroid/util/AttributeSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public final getCurCutPosition()[I
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    add-int/2addr v0, v2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public final getCurRecyclerViewState()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curRecyclerViewState:I

    return v0
.end method

.method public final getFirstFrameStartDx(Z)I
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->rtl:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    .line 12
    move-result p1

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 17
    mul-int/2addr v1, v2

    .line 18
    sub-int/2addr p1, v1

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    .line 21
    sub-int/2addr p1, v1

    .line 22
    add-int/2addr v0, p1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    .line 27
    move-result p1

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameOffset:I

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 32
    mul-int/2addr v0, v1

    .line 33
    sub-int/2addr p1, v0

    .line 34
    .line 35
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    .line 36
    sub-int/2addr p1, v0

    .line 37
    neg-int v0, p1

    .line 38
    :goto_0
    return v0
.end method

.method public final getFrameCellWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    return v0
.end method

.method public final getMediaLengthInMs()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    return v0
.end method

.method public final getRealFrameTimelineWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    return v0
.end method

.method public final getRealTailFrameWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    return v0
.end method

.method public final getSectionDurationInMs(IIZ)I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    move v4, v3

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v5

    .line 15
    .line 16
    if-eqz v5, :cond_6

    .line 17
    .line 18
    add-int/lit8 v5, v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v6

    .line 23
    .line 24
    check-cast v6, Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 28
    move-result v6

    .line 29
    .line 30
    iget-object v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v7

    .line 35
    .line 36
    add-int/lit8 v7, v7, -0x1

    .line 37
    .line 38
    if-ne v2, v7, :cond_0

    .line 39
    .line 40
    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    check-cast v6, Ljava/lang/Number;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 50
    move-result v6

    .line 51
    .line 52
    iget v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 53
    int-to-float v7, v7

    .line 54
    mul-float/2addr v6, v7

    .line 55
    float-to-int v6, v6

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_0
    iget v7, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 59
    mul-int/2addr v6, v7

    .line 60
    .line 61
    :goto_1
    add-int v7, v3, v6

    .line 62
    .line 63
    if-lt p2, v7, :cond_1

    .line 64
    move v2, v5

    .line 65
    move v3, v7

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    const-string v7, "get(...)"

    .line 69
    .line 70
    if-lt v6, p1, :cond_4

    .line 71
    .line 72
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result p2

    .line 77
    .line 78
    add-int/lit8 p2, p2, -0x1

    .line 79
    .line 80
    if-ne v2, p2, :cond_2

    .line 81
    int-to-float p1, p1

    .line 82
    int-to-float p2, v6

    .line 83
    div-float/2addr p1, p2

    .line 84
    .line 85
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    check-cast p2, Ljava/lang/Number;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 98
    move-result p2

    .line 99
    :goto_2
    mul-float/2addr p1, p2

    .line 100
    float-to-int p1, p1

    .line 101
    add-int/2addr v4, p1

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_2
    if-eqz p3, :cond_3

    .line 105
    .line 106
    const/high16 p2, 0x3f800000    # 1.0f

    .line 107
    goto :goto_3

    .line 108
    .line 109
    :cond_3
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    check-cast p2, Ljava/lang/Number;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 119
    move-result p2

    .line 120
    .line 121
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object p3

    .line 126
    .line 127
    .line 128
    invoke-static {p3, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    check-cast p3, Ljava/lang/Number;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 134
    move-result p3

    .line 135
    div-float/2addr p2, p3

    .line 136
    :goto_3
    int-to-float p1, p1

    .line 137
    mul-float/2addr p1, p2

    .line 138
    int-to-float p2, v6

    .line 139
    div-float/2addr p1, p2

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    .line 148
    invoke-static {p2, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    check-cast p2, Ljava/lang/Number;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 154
    move-result p2

    .line 155
    goto :goto_2

    .line 156
    .line 157
    :cond_4
    if-lez p2, :cond_5

    .line 158
    sub-int/2addr p2, v3

    .line 159
    .line 160
    sub-int p2, v6, p2

    .line 161
    int-to-float v8, p2

    .line 162
    int-to-float v6, v6

    .line 163
    div-float/2addr v8, v6

    .line 164
    .line 165
    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    check-cast v2, Ljava/lang/Number;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 178
    move-result v2

    .line 179
    mul-float/2addr v8, v2

    .line 180
    float-to-int v2, v8

    .line 181
    add-int/2addr v4, v2

    .line 182
    sub-int/2addr p1, p2

    .line 183
    move p2, v1

    .line 184
    :goto_4
    move v2, v5

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_5
    iget-object v8, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    check-cast v2, Ljava/lang/Number;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 201
    move-result v2

    .line 202
    add-int/2addr v4, v2

    .line 203
    sub-int/2addr p1, v6

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    move v1, p1

    .line 206
    .line 207
    :goto_5
    if-lez v1, :cond_7

    .line 208
    int-to-float p1, v1

    .line 209
    .line 210
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    .line 211
    int-to-float p2, p2

    .line 212
    div-float/2addr p1, p2

    .line 213
    .line 214
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 215
    int-to-float p2, p2

    .line 216
    mul-float/2addr p1, p2

    .line 217
    float-to-int p1, p1

    .line 218
    add-int/2addr v4, p1

    .line 219
    :cond_7
    return v4
.end method

.method public final getSeeking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    return v0
.end method

.method public final getTimeLineScrolledDx(Z)I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    .line 13
    :goto_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, v1

    .line 20
    :goto_1
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 26
    move-result v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v0, v2

    .line 29
    .line 30
    .line 31
    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 33
    .line 34
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    .line 35
    .line 36
    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 37
    add-int/2addr v3, v4

    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-eqz v4, :cond_6

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 53
    move-result-object v2

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move-object v2, v1

    .line 56
    .line 57
    :goto_3
    instance-of v4, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    move-object v1, v2

    .line 61
    .line 62
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 63
    .line 64
    :cond_4
    if-eqz v1, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 74
    move-result v1

    .line 75
    goto :goto_4

    .line 76
    .line 77
    .line 78
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 83
    move-result v2

    .line 84
    .line 85
    sub-int v2, v1, v2

    .line 86
    goto :goto_6

    .line 87
    .line 88
    :cond_6
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 89
    .line 90
    if-eqz v4, :cond_7

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 94
    move-result-object v4

    .line 95
    goto :goto_5

    .line 96
    :cond_7
    move-object v4, v1

    .line 97
    .line 98
    :goto_5
    instance-of v5, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 99
    .line 100
    if-eqz v5, :cond_8

    .line 101
    move-object v1, v4

    .line 102
    .line 103
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 104
    .line 105
    :cond_8
    if-eqz v1, :cond_9

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    if-eqz v1, :cond_9

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 115
    move-result v2

    .line 116
    .line 117
    .line 118
    :cond_9
    :goto_6
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 119
    move-result v1

    .line 120
    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    if-lt v0, v3, :cond_a

    .line 124
    .line 125
    add-int/lit8 v0, v0, -0x1

    .line 126
    .line 127
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 128
    mul-int/2addr v0, p1

    .line 129
    .line 130
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    .line 131
    add-int/2addr v0, p1

    .line 132
    :goto_7
    add-int/2addr v0, v1

    .line 133
    goto :goto_8

    .line 134
    .line 135
    :cond_a
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 136
    mul-int/2addr v0, p1

    .line 137
    goto :goto_7

    .line 138
    :goto_8
    return v0
.end method

.method public final getTimelineVisibleSectionWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    return v0
.end method

.method public final getTotalFrameCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    return v0
.end method

.method public final initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I
    .locals 19
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/interfaces/IPreviewPlayer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/video/services/FrameRetrieverManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    invoke-static {v5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    return v14

    :cond_0
    iget v0, v15, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    if-nez v0, :cond_1

    .line 2
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
    move v1, v14

    move-object v0, v15

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->resetGlobalVariables()V

    move/from16 v2, p1

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->dataType:I

    move/from16 v2, p2

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineType:I

    move/from16 v2, p3

    iput-boolean v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->isForAudioWave:Z

    iget-object v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v14, v2, :cond_2

    .line 6
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-interface {v3}, Lcom/narvii/video/interfaces/ITimelineClip;->copy()Lcom/narvii/video/interfaces/ITimelineClip;

    move-result-object v3

    .line 7
    invoke-interface {v3, v14}, Lcom/narvii/video/interfaces/ITimelineClip;->setIndexInScene(I)V

    iget-object v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 9
    invoke-interface {v3}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLength()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static/range {p8 .. p8}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->minOutputLength:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    move/from16 v1, p11

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->borderColor:I

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaPlayer:Lcom/narvii/video/interfaces/IPreviewPlayer;

    add-int/lit8 v1, p7, 0x1

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    const/4 v3, 0x1

    if-gt v3, v2, :cond_3

    if-ge v2, v1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    if-lez p7, :cond_4

    move/from16 v4, p7

    goto :goto_1

    :cond_4
    const/16 v4, 0x3a98

    :goto_1
    if-gt v3, v2, :cond_5

    if-ge v2, v1, :cond_5

    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    int-to-float v1, v1

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    const/4 v1, 0x0

    cmpl-float v1, p9, v1

    if-lez v1, :cond_6

    move/from16 v1, p9

    goto :goto_3

    :cond_6
    int-to-float v1, v4

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_3
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 11
    new-instance v1, Lcom/narvii/video/widget/l;

    invoke-direct {v1, v0}, Lcom/narvii/video/widget/l;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 12
    invoke-virtual {v0, v5}, Lcom/narvii/video/widget/MediaTimeLineComponent;->updateClipComponent(Ljava/util/List;)V

    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    const/16 v2, 0x3e8

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    rem-int/2addr v1, v2

    goto :goto_4

    .line 15
    :cond_7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/interfaces/ITimelineClip;

    invoke-interface {v1}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLength()I

    move-result v1

    rem-int/2addr v1, v2

    :goto_4
    if-nez v1, :cond_8

    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    goto :goto_5

    :cond_8
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    div-float/2addr v1, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_5
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 16
    invoke-static {v1}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    move-result v1

    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    if-eqz v7, :cond_9

    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 17
    invoke-virtual {v7, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->setFrameRetrieveInterval(F)V

    :cond_9
    move-object/from16 p1, p0

    move/from16 p2, p12

    move/from16 p3, p10

    move/from16 p4, p13

    move/from16 p5, p16

    move/from16 p6, p14

    move/from16 p7, v4

    .line 18
    invoke-direct/range {p1 .. p7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->initComponent(ZZZZII)V

    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    sub-int/2addr v1, v2

    .line 19
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method public final isTailFrameCellPlaying()Lw7/u;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v1, v2, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 10
    .line 11
    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    .line 12
    add-int/2addr v3, v4

    .line 13
    sub-int/2addr v3, v2

    .line 14
    .line 15
    iget v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 16
    mul-int/2addr v3, v4

    .line 17
    .line 18
    sub-int v6, v0, v3

    .line 19
    .line 20
    if-lez v4, :cond_0

    .line 21
    .line 22
    if-ltz v6, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v1

    .line 25
    .line 26
    :goto_0
    new-instance v0, Lw7/u;

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x2

    .line 36
    const/4 v10, 0x0

    .line 37
    move-object v5, p0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v5 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v3, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-object v0
.end method

.method public onControllerMoved(IIZZ)V
    .locals 1

    .line 1
    .line 2
    div-int/lit8 v0, p1, 0x64

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 7
    sub-int/2addr p2, p1

    .line 8
    int-to-float p1, p2

    .line 9
    .line 10
    const/high16 p2, 0x42c80000    # 100.0f

    .line 11
    div-float/2addr p1, p2

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 15
    move-result p1

    .line 16
    .line 17
    mul-int/lit8 p1, p1, 0x64

    .line 18
    add-int/2addr v0, p1

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 21
    .line 22
    if-eqz p4, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 25
    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 34
    move-result p3

    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 42
    :goto_0
    add-int/2addr p2, p3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 49
    move-result p3

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :goto_1
    iget p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 60
    .line 61
    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 62
    sub-int/2addr p3, p4

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 66
    move-result p3

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 73
    .line 74
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 75
    add-int/2addr p2, p1

    .line 76
    add-int/2addr p1, v0

    .line 77
    const/4 p3, 0x2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p2, p1, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    .line 81
    :cond_4
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 11
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$id;->video_time_line:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 34
    .line 35
    :cond_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->retrieve_controller:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/video/widget/MediaRetrieveController;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 44
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ev"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->isTouchInSlideHandler(F)Z

    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    .line 27
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    move-result p1

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onControllerActive()V

    .line 45
    .line 46
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 47
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 6
    .line 7
    const/high16 p2, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result p3

    .line 14
    int-to-float p3, p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result p4

    .line 19
    .line 20
    iget p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInHighlightRect:I

    .line 21
    mul-int/2addr p4, p5

    .line 22
    int-to-float p4, p4

    .line 23
    .line 24
    iget p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    .line 25
    int-to-float p5, p5

    .line 26
    div-float/2addr p4, p5

    .line 27
    sub-float/2addr p3, p4

    .line 28
    div-float/2addr p3, p2

    .line 29
    .line 30
    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerHandlerWidth:I

    .line 31
    int-to-float p4, p4

    .line 32
    sub-float/2addr p3, p4

    .line 33
    float-to-int v1, p3

    .line 34
    .line 35
    iput v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result p3

    .line 41
    .line 42
    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerWidthOffset:I

    .line 43
    .line 44
    sub-int v3, p3, p4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    move-result p3

    .line 49
    .line 50
    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->bottomGapSize:I

    .line 51
    .line 52
    sub-int v4, p3, p4

    .line 53
    .line 54
    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->controllerHandlerWidth:I

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/widget/MediaRetrieveController;->layoutRect(IIIII)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    move-result p3

    .line 62
    .line 63
    iget p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCountInBaseRect:I

    .line 64
    div-int/2addr p3, p4

    .line 65
    .line 66
    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 67
    .line 68
    iget-object p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 69
    .line 70
    if-nez p4, :cond_1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p4, p3}, Lcom/narvii/video/widget/MediaRetrieveController;->setFrameCellWidth(I)V

    .line 75
    .line 76
    :goto_0
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 77
    .line 78
    if-eqz p3, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    if-nez p3, :cond_2

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 90
    .line 91
    if-eqz p3, :cond_2

    .line 92
    .line 93
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 97
    .line 98
    iget-object p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    move-result p3

    .line 106
    int-to-float p3, p3

    .line 107
    div-float/2addr p3, p2

    .line 108
    .line 109
    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->componentCenterX:F

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 115
    move-result p1

    .line 116
    .line 117
    if-gtz p1, :cond_3

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 121
    move-result p1

    .line 122
    .line 123
    if-lez p1, :cond_5

    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

    .line 126
    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;->run()V

    .line 131
    :cond_4
    const/4 p1, 0x0

    .line 132
    .line 133
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->pendingInitTask:Lcom/narvii/video/widget/MediaTimeLineComponent$PendingInitTask;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    .line 140
    invoke-interface {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineLayout()V

    .line 141
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->interceptedByController:Z

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    .line 30
    :cond_2
    return v1
.end method

.method public final playbackStatusChanged(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const-string v3, "playbackTimer"

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    move-object v1, v2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->playbackTimer:Ljava/lang/Runnable;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_2
    return-void
.end method

.method public final refreshTimeLine()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    .line 8
    :cond_0
    return-void
.end method

.method public final scrollTimeLine(IZZZZIZ)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p6

    .line 7
    .line 8
    iget-object v3, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 9
    .line 10
    if-eqz v3, :cond_1d

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 16
    .line 17
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 18
    .line 19
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 20
    .line 21
    if-nez p7, :cond_1c

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    instance-of v2, v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 31
    .line 32
    if-eqz v2, :cond_1c

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/video/widget/m;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Lcom/narvii/video/widget/m;-><init>(Lcom/narvii/widget/HorizontalRecyclerView;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    goto/16 :goto_11

    .line 43
    .line 44
    :cond_0
    if-eqz p3, :cond_2

    .line 45
    .line 46
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 47
    .line 48
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 49
    .line 50
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->totalVisibleFrameCountForAdapter:I

    .line 51
    add-int/2addr v2, v5

    .line 52
    .line 53
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 54
    .line 55
    if-eq v2, v5, :cond_1

    .line 56
    .line 57
    iput v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 58
    .line 59
    if-nez p7, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 63
    .line 64
    :cond_1
    if-nez p7, :cond_1c

    .line 65
    .line 66
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    instance-of v2, v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 76
    .line 77
    if-eqz v2, :cond_1c

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    const-string v3, "null cannot be cast to non-null type com.narvii.video.widget.MediaTimeLineComponent.TimeLineAdapter"

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    check-cast v2, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    .line 92
    .line 93
    goto/16 :goto_11

    .line 94
    .line 95
    :cond_2
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 96
    int-to-float v5, v5

    .line 97
    .line 98
    if-eqz p5, :cond_3

    .line 99
    .line 100
    iget-object v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_3
    iget-object v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 104
    .line 105
    :goto_0
    if-eqz p5, :cond_4

    .line 106
    .line 107
    iget-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_4
    iget-object v7, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 111
    .line 112
    :goto_1
    if-eqz p5, :cond_5

    .line 113
    .line 114
    iget-object v8, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_5
    iget-object v8, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 118
    .line 119
    :goto_2
    const-string v10, "get(...)"

    .line 120
    .line 121
    if-eqz p5, :cond_7

    .line 122
    .line 123
    iget-object v11, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v11

    .line 128
    move v12, v4

    .line 129
    move v13, v12

    .line 130
    const/4 v14, 0x0

    .line 131
    .line 132
    .line 133
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v15

    .line 135
    .line 136
    if-eqz v15, :cond_6

    .line 137
    .line 138
    add-int/lit8 v15, v12, 0x1

    .line 139
    .line 140
    .line 141
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v16

    .line 143
    .line 144
    check-cast v16, Ljava/lang/Number;

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    .line 148
    move-result v16

    .line 149
    .line 150
    add-int v13, v13, v16

    .line 151
    .line 152
    if-ge v13, v2, :cond_6

    .line 153
    .line 154
    iget-object v9, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object v9

    .line 159
    .line 160
    check-cast v9, Ljava/lang/Number;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 164
    move-result v9

    .line 165
    .line 166
    iget-object v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    move-result-object v4

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    check-cast v4, Ljava/lang/Number;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 179
    move-result v4

    .line 180
    sub-float/2addr v9, v4

    .line 181
    .line 182
    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 183
    mul-float/2addr v9, v4

    .line 184
    add-float/2addr v14, v9

    .line 185
    move v12, v15

    .line 186
    const/4 v4, 0x0

    .line 187
    goto :goto_3

    .line 188
    .line 189
    :cond_6
    sub-int v4, v1, v2

    .line 190
    int-to-float v4, v4

    .line 191
    sub-float/2addr v4, v14

    .line 192
    float-to-int v4, v4

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    move v4, v1

    .line 195
    const/4 v14, 0x0

    .line 196
    .line 197
    :goto_4
    iget-object v9, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    invoke-static {v9}, Lkotlin/collections/t;->M0(Ljava/lang/Iterable;)I

    .line 201
    move-result v9

    .line 202
    .line 203
    if-lt v4, v9, :cond_8

    .line 204
    const/4 v9, 0x1

    .line 205
    goto :goto_5

    .line 206
    :cond_8
    const/4 v9, 0x0

    .line 207
    .line 208
    :goto_5
    if-nez p5, :cond_9

    .line 209
    .line 210
    if-eqz v9, :cond_9

    .line 211
    const/4 v1, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    :goto_6
    const/4 v15, 0x0

    .line 214
    .line 215
    goto/16 :goto_b

    .line 216
    .line 217
    :cond_9
    if-eqz p5, :cond_a

    .line 218
    move v9, v2

    .line 219
    goto :goto_7

    .line 220
    :cond_a
    const/4 v9, 0x0

    .line 221
    .line 222
    .line 223
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 224
    move-result v12

    .line 225
    const/4 v13, 0x0

    .line 226
    const/4 v15, 0x0

    .line 227
    .line 228
    const/16 v17, 0x0

    .line 229
    .line 230
    const/16 v18, 0x0

    .line 231
    .line 232
    const/16 v19, 0x0

    .line 233
    .line 234
    :goto_8
    if-ge v15, v12, :cond_10

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v11

    .line 239
    .line 240
    .line 241
    invoke-static {v11, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    check-cast v11, Ljava/lang/Number;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 247
    move-result v11

    .line 248
    .line 249
    add-int v11, v17, v11

    .line 250
    .line 251
    if-gt v11, v9, :cond_c

    .line 252
    .line 253
    add-int/lit8 v19, v19, 0x1

    .line 254
    .line 255
    .line 256
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    move-result-object v17

    .line 258
    .line 259
    check-cast v17, Ljava/lang/Number;

    .line 260
    .line 261
    move/from16 p3, v12

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    .line 265
    move-result v12

    .line 266
    .line 267
    div-int/lit16 v12, v12, 0x3e8

    .line 268
    .line 269
    mul-int/lit16 v12, v12, 0x3e8

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    move-result-object v17

    .line 274
    .line 275
    check-cast v17, Ljava/lang/Number;

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    .line 279
    move-result v1

    .line 280
    .line 281
    rem-int/lit16 v1, v1, 0x3e8

    .line 282
    .line 283
    if-eqz v1, :cond_b

    .line 284
    int-to-float v1, v4

    .line 285
    add-float/2addr v1, v14

    .line 286
    .line 287
    move/from16 v17, v14

    .line 288
    int-to-float v14, v9

    .line 289
    add-float/2addr v1, v14

    .line 290
    int-to-float v12, v12

    .line 291
    .line 292
    cmpl-float v14, v1, v12

    .line 293
    .line 294
    if-lez v14, :cond_f

    .line 295
    sub-float/2addr v1, v12

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    move-result-object v12

    .line 300
    .line 301
    .line 302
    invoke-static {v12, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    .line 304
    check-cast v12, Ljava/lang/Number;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 308
    move-result v12

    .line 309
    div-float/2addr v1, v12

    .line 310
    .line 311
    .line 312
    const v12, 0x3f666666    # 0.9f

    .line 313
    .line 314
    .line 315
    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    .line 316
    move-result v1

    .line 317
    add-float/2addr v13, v1

    .line 318
    goto :goto_a

    .line 319
    .line 320
    :cond_b
    move/from16 v17, v14

    .line 321
    goto :goto_a

    .line 322
    .line 323
    :cond_c
    move/from16 p3, v12

    .line 324
    .line 325
    move/from16 v17, v14

    .line 326
    .line 327
    if-nez v18, :cond_d

    .line 328
    .line 329
    sub-int v1, v11, v9

    .line 330
    goto :goto_9

    .line 331
    .line 332
    .line 333
    :cond_d
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 334
    move-result-object v1

    .line 335
    .line 336
    .line 337
    invoke-static {v1, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    check-cast v1, Ljava/lang/Number;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 343
    move-result v1

    .line 344
    .line 345
    :goto_9
    add-int v12, v1, v18

    .line 346
    .line 347
    if-lt v12, v4, :cond_e

    .line 348
    .line 349
    sub-int v4, v4, v18

    .line 350
    move v9, v13

    .line 351
    .line 352
    move/from16 v1, v19

    .line 353
    goto :goto_b

    .line 354
    :cond_e
    int-to-float v1, v1

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    move-result-object v14

    .line 359
    .line 360
    .line 361
    invoke-static {v14, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    check-cast v14, Ljava/lang/Number;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 367
    move-result v14

    .line 368
    div-float/2addr v1, v14

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    move-result-object v14

    .line 373
    .line 374
    .line 375
    invoke-static {v14, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    check-cast v14, Ljava/lang/Number;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 381
    move-result v14

    .line 382
    mul-float/2addr v1, v14

    .line 383
    add-float/2addr v5, v1

    .line 384
    .line 385
    move/from16 v18, v12

    .line 386
    .line 387
    :cond_f
    :goto_a
    add-int/lit8 v15, v15, 0x1

    .line 388
    .line 389
    move/from16 v1, p1

    .line 390
    .line 391
    move/from16 v12, p3

    .line 392
    .line 393
    move/from16 v14, v17

    .line 394
    .line 395
    move/from16 v17, v11

    .line 396
    .line 397
    goto/16 :goto_8

    .line 398
    :cond_10
    move v9, v13

    .line 399
    .line 400
    move/from16 v1, v19

    .line 401
    const/4 v4, 0x0

    .line 402
    .line 403
    goto/16 :goto_6

    .line 404
    .line 405
    .line 406
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 407
    move-result v7

    .line 408
    .line 409
    if-eqz v7, :cond_11

    .line 410
    const/4 v11, 0x0

    .line 411
    goto :goto_d

    .line 412
    .line 413
    :cond_11
    if-ne v15, v1, :cond_13

    .line 414
    .line 415
    add-int/lit8 v1, v15, 0x1

    .line 416
    const/4 v7, 0x0

    .line 417
    const/4 v11, 0x0

    .line 418
    .line 419
    :goto_c
    if-ge v7, v1, :cond_12

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    move-result-object v12

    .line 424
    .line 425
    .line 426
    invoke-static {v12, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    check-cast v12, Ljava/lang/Number;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 432
    move-result v12

    .line 433
    add-int/2addr v11, v12

    .line 434
    .line 435
    add-int/lit8 v7, v7, 0x1

    .line 436
    goto :goto_c

    .line 437
    :cond_12
    sub-int/2addr v11, v2

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    move-result-object v1

    .line 442
    .line 443
    check-cast v1, Ljava/lang/Number;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 447
    move-result v1

    .line 448
    .line 449
    rem-int/lit16 v1, v1, 0x3e8

    .line 450
    sub-int/2addr v11, v1

    .line 451
    goto :goto_d

    .line 452
    .line 453
    .line 454
    :cond_13
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 455
    move-result-object v1

    .line 456
    .line 457
    check-cast v1, Ljava/lang/Number;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 461
    move-result v1

    .line 462
    .line 463
    div-int/lit16 v1, v1, 0x3e8

    .line 464
    .line 465
    mul-int/lit16 v11, v1, 0x3e8

    .line 466
    .line 467
    :goto_d
    if-le v4, v11, :cond_14

    .line 468
    .line 469
    .line 470
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 471
    move-result v1

    .line 472
    const/4 v2, 0x1

    .line 473
    sub-int/2addr v1, v2

    .line 474
    .line 475
    if-eq v15, v1, :cond_15

    .line 476
    .line 477
    .line 478
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 479
    move-result v1

    .line 480
    xor-int/2addr v1, v2

    .line 481
    .line 482
    if-eqz v1, :cond_15

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    move-result-object v1

    .line 487
    .line 488
    check-cast v1, Ljava/lang/Number;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 492
    move-result v1

    .line 493
    .line 494
    rem-int/lit16 v1, v1, 0x3e8

    .line 495
    .line 496
    if-eqz v1, :cond_15

    .line 497
    int-to-float v1, v11

    .line 498
    .line 499
    iget v6, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 500
    div-float/2addr v1, v6

    .line 501
    sub-int/2addr v4, v11

    .line 502
    int-to-float v4, v4

    .line 503
    .line 504
    .line 505
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    move-result-object v6

    .line 507
    .line 508
    .line 509
    invoke-static {v6, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    .line 511
    check-cast v6, Ljava/lang/Number;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 515
    move-result v6

    .line 516
    div-float/2addr v4, v6

    .line 517
    add-float/2addr v1, v4

    .line 518
    goto :goto_e

    .line 519
    :cond_14
    const/4 v2, 0x1

    .line 520
    :cond_15
    int-to-float v1, v4

    .line 521
    .line 522
    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 523
    div-float/2addr v1, v4

    .line 524
    :goto_e
    add-float/2addr v1, v9

    .line 525
    add-float/2addr v5, v1

    .line 526
    float-to-int v1, v5

    .line 527
    int-to-float v4, v1

    .line 528
    sub-float/2addr v5, v4

    .line 529
    .line 530
    iget v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    .line 531
    int-to-float v4, v4

    .line 532
    mul-float/2addr v5, v4

    .line 533
    float-to-int v4, v5

    .line 534
    .line 535
    iget v5, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 536
    .line 537
    if-eq v1, v5, :cond_19

    .line 538
    .line 539
    if-nez p7, :cond_18

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 543
    move-result-object v5

    .line 544
    .line 545
    instance-of v6, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 546
    .line 547
    if-eqz v6, :cond_16

    .line 548
    .line 549
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 550
    goto :goto_f

    .line 551
    :cond_16
    const/4 v5, 0x0

    .line 552
    .line 553
    :goto_f
    if-eqz v5, :cond_18

    .line 554
    .line 555
    if-nez v4, :cond_17

    .line 556
    move v11, v2

    .line 557
    goto :goto_10

    .line 558
    :cond_17
    neg-int v11, v4

    .line 559
    .line 560
    .line 561
    :goto_10
    invoke-virtual {v5, v1, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 562
    .line 563
    :cond_18
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curScrollToPosition:I

    .line 564
    .line 565
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 566
    .line 567
    :cond_19
    if-ltz v4, :cond_1c

    .line 568
    .line 569
    iget v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 570
    .line 571
    sub-int v1, v4, v1

    .line 572
    .line 573
    if-nez p7, :cond_1b

    .line 574
    .line 575
    iget-boolean v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->rtl:Z

    .line 576
    .line 577
    if-eqz v2, :cond_1a

    .line 578
    neg-int v1, v1

    .line 579
    :cond_1a
    const/4 v2, 0x0

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 583
    .line 584
    :cond_1b
    iput v4, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->lastOffsetRecord:I

    .line 585
    .line 586
    :cond_1c
    :goto_11
    if-eqz p4, :cond_1d

    .line 587
    .line 588
    move/from16 v1, p1

    .line 589
    int-to-long v2, v1

    .line 590
    .line 591
    iput-wide v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curPlaybackTimeBase:J

    .line 592
    .line 593
    iput v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 594
    .line 595
    iget v2, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->maxVisibleSectionIntervalInMs:I

    .line 596
    .line 597
    if-lt v1, v2, :cond_1d

    .line 598
    .line 599
    iget-object v1, v0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameRetrieverManager:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 600
    .line 601
    if-eqz v1, :cond_1d

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 605
    :cond_1d
    return-void
.end method

.method public final scrollTimeLineBy(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 9
    :cond_0
    return-void
.end method

.method public final scrollTimeLineToClip(IIZ)I
    .locals 11

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_2

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    .line 23
    const/16 v9, 0x75

    .line 24
    const/4 v10, 0x0

    .line 25
    move-object v1, p0

    .line 26
    move v5, p3

    .line 27
    .line 28
    .line 29
    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 30
    return v0

    .line 31
    .line 32
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaClipList:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLength()I

    .line 44
    move-result v1

    .line 45
    add-int/2addr p2, v1

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    .line 57
    const/16 v9, 0x76

    .line 58
    const/4 v10, 0x0

    .line 59
    move-object v1, p0

    .line 60
    move v5, p3

    .line 61
    .line 62
    .line 63
    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    .line 64
    return p2

    .line 65
    :cond_2
    const/4 p1, -0x1

    .line 66
    return p1
.end method

.method public final setActiveClipInTrack(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->activeClipIndex:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    .line 15
    :cond_1
    return-void
.end method

.method public final setCurRecyclerViewState(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curRecyclerViewState:I

    return-void
.end method

.method public final setFrameCellWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->frameCellWidth:I

    return-void
.end method

.method public final setMediaLengthInMs(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    return-void
.end method

.method public final setOnTimeLineTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnTouchListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "l"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLine:Lcom/narvii/widget/HorizontalRecyclerView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    :cond_0
    return-void
.end method

.method public final setRealFrameTimelineWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realFrameTimelineWidth:I

    return-void
.end method

.method public final setRealTailFrameWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->realTailFrameWidth:I

    return-void
.end method

.method public final setSeeking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    return-void
.end method

.method public final setTimeLineCallback(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineCallback:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    return-void
.end method

.method public final updateAdditionalFrameOffset(III)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    .line 7
    .line 8
    if-eq v0, p2, :cond_1

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffset:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePostOffset:I

    .line 13
    .line 14
    iput p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->additionalFramePreOffsetDx:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineAdapter:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    :cond_1
    return-void
.end method

.method public final updateClipComponent(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/interfaces/ITimelineClip;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "mediaClipList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/video/interfaces/ITimelineClip;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->clipLengthComposition()Ljava/util/List;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    .line 75
    .line 76
    const v3, 0x3f7fbe77    # 0.999f

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Ljava/lang/Number;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 88
    move-result v2

    .line 89
    .line 90
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 91
    int-to-float v5, v2

    .line 92
    .line 93
    iget v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 94
    .line 95
    div-float v6, v5, v6

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 105
    .line 106
    iget v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 107
    div-float/2addr v5, v6

    .line 108
    add-float/2addr v5, v3

    .line 109
    float-to-int v3, v5

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-interface {v0}, Lcom/narvii/video/interfaces/ITimelineClip;->mainTrackClipComposition()Ljava/util/List;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-eqz v1, :cond_0

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    check-cast v1, Ljava/lang/Number;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 150
    move-result v1

    .line 151
    .line 152
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 153
    int-to-float v4, v1

    .line 154
    .line 155
    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 156
    .line 157
    div-float v5, v4, v5

    .line 158
    .line 159
    .line 160
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v5

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 167
    .line 168
    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 169
    div-float/2addr v4, v5

    .line 170
    add-float/2addr v4, v3

    .line 171
    float-to-int v4, v4

    .line 172
    .line 173
    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v4

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    goto :goto_1

    .line 189
    .line 190
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionLengthMsList:Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 194
    move-result p1

    .line 195
    const/4 v0, 0x0

    .line 196
    move v1, v0

    .line 197
    .line 198
    :goto_2
    const-string v2, "get(...)"

    .line 199
    .line 200
    const/high16 v3, 0x3f800000    # 1.0f

    .line 201
    .line 202
    if-ge v1, p1, :cond_3

    .line 203
    .line 204
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->compositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 205
    .line 206
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v5

    .line 211
    .line 212
    check-cast v5, Ljava/lang/Number;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 216
    move-result v5

    .line 217
    .line 218
    iget-object v6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateCompositionVisibleFrameCountList:Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v6

    .line 223
    .line 224
    .line 225
    invoke-static {v6, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    check-cast v6, Ljava/lang/Number;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 231
    move-result v2

    .line 232
    sub-float/2addr v5, v2

    .line 233
    sub-float/2addr v3, v5

    .line 234
    .line 235
    iget v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 236
    mul-float/2addr v3, v2

    .line 237
    .line 238
    .line 239
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 240
    move-result-object v2

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    goto :goto_2

    .line 247
    .line 248
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionLengthMsList:Ljava/util/ArrayList;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 252
    move-result p1

    .line 253
    .line 254
    :goto_3
    if-ge v0, p1, :cond_4

    .line 255
    .line 256
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mainTrackCompositionTailFrameLengthInMsList:Ljava/util/ArrayList;

    .line 257
    .line 258
    iget-object v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->roundMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v4

    .line 263
    .line 264
    check-cast v4, Ljava/lang/Number;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 268
    move-result v4

    .line 269
    .line 270
    iget-object v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->accurateMainTrackCompositionFrameCountList:Ljava/util/ArrayList;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    move-result-object v5

    .line 275
    .line 276
    .line 277
    invoke-static {v5, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    check-cast v5, Ljava/lang/Number;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 283
    move-result v5

    .line 284
    sub-float/2addr v4, v5

    .line 285
    .line 286
    sub-float v4, v3, v4

    .line 287
    .line 288
    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 289
    mul-float/2addr v4, v5

    .line 290
    .line 291
    .line 292
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v4

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    add-int/lit8 v0, v0, 0x1

    .line 299
    goto :goto_3

    .line 300
    :cond_4
    return-void
.end method

.method public final updatePlaybackTime(J)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    int-to-long v0, v0

    .line 7
    .line 8
    sub-long v0, p1, v0

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->seeking:Z

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    long-to-float v0, v0

    .line 18
    .line 19
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->timeLineItemFrameLengthInMs:F

    .line 20
    div-float/2addr v0, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/narvii/video/widget/MediaRetrieveController;->updatePointerPosition(F)V

    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v0

    .line 35
    int-to-long v0, v0

    .line 36
    .line 37
    cmp-long p1, p1, v0

    .line 38
    .line 39
    if-ltz p1, :cond_3

    .line 40
    .line 41
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 42
    .line 43
    iget p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerEndTimeOffsetInMs:I

    .line 44
    add-int/2addr p1, p2

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->mediaLengthInMs:I

    .line 47
    .line 48
    if-lt p1, v0, :cond_1

    .line 49
    const/4 p1, 0x0

    .line 50
    .line 51
    iput p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 52
    .line 53
    :cond_1
    iget p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curFirstVideoFrameTimeInMs:I

    .line 54
    .line 55
    add-int v1, p1, p2

    .line 56
    .line 57
    if-ge v1, v0, :cond_2

    .line 58
    const/4 v0, 0x4

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 61
    .line 62
    :goto_0
    iget v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent;->curControllerStartTimeOffsetInMs:I

    .line 63
    add-int/2addr v1, p1

    .line 64
    add-int/2addr p1, p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v1, p1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V

    .line 68
    :cond_3
    return-void
.end method
