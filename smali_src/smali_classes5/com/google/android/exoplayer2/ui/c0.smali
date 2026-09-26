.class public Lcom/google/android/exoplayer2/ui/c0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/c0$i;,
        Lcom/google/android/exoplayer2/ui/c0$l;,
        Lcom/google/android/exoplayer2/ui/c0$b;,
        Lcom/google/android/exoplayer2/ui/c0$j;,
        Lcom/google/android/exoplayer2/ui/c0$k;,
        Lcom/google/android/exoplayer2/ui/c0$e;,
        Lcom/google/android/exoplayer2/ui/c0$g;,
        Lcom/google/android/exoplayer2/ui/c0$h;,
        Lcom/google/android/exoplayer2/ui/c0$c;,
        Lcom/google/android/exoplayer2/ui/c0$d;,
        Lcom/google/android/exoplayer2/ui/c0$f;,
        Lcom/google/android/exoplayer2/ui/c0$m;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x3e8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64

.field private static final PLAYBACK_SPEEDS:[F

.field private static final SETTINGS_AUDIO_TRACK_SELECTION_POSITION:I = 0x1

.field private static final SETTINGS_PLAYBACK_SPEED_POSITION:I


# instance fields
.field private adGroupTimesMs:[J

.field private final audioTrackButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$b;

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Lcom/google/android/exoplayer2/ui/c0$c;

.field private final controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fastForwardButtonTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final fullScreenButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fullScreenEnterContentDescription:Ljava/lang/String;

.field private final fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

.field private final fullScreenExitContentDescription:Ljava/lang/String;

.field private final fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

.field private isAttachedToWindow:Z

.field private isFullScreen:Z

.field private final minimalFullScreenButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private multiWindowTimeBar:Z

.field private needToHideBars:Z

.field private final nextButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/c0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final period:Lcom/google/android/exoplayer2/z3$b;

.field private final playPauseButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/c0$e;

.field private final playbackSpeedButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/d3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final positionView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final previousButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private progressUpdateListener:Lcom/google/android/exoplayer2/ui/c0$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private repeatToggleModes:I

.field private final resources:Landroid/content/res/Resources;

.field private final rewindButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final rewindButtonTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scrubbing:Z

.field private final settingsAdapter:Lcom/google/android/exoplayer2/ui/c0$h;

.field private final settingsButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final settingsView:Landroidx/recyclerview/widget/RecyclerView;

.field private final settingsWindow:Landroid/widget/PopupWindow;

.field private final settingsWindowMargin:I

.field private showMultiWindowTimeBar:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private final subtitleButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOffContentDescription:Ljava/lang/String;

.field private final subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOnContentDescription:Ljava/lang/String;

.field private final textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

.field private final timeBar:Lcom/google/android/exoplayer2/ui/b1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeBarMinUpdateIntervalMs:I

.field private final trackNameProvider:Lcom/google/android/exoplayer2/ui/c1;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/c0$m;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final window:Lcom/google/android/exoplayer2/z3$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "goog.exo.ui"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/x1;->a(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x7

    .line 7
    .line 8
    new-array v0, v0, [F

    .line 9
    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/exoplayer2/ui/c0;->PLAYBACK_SPEEDS:[F

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 23
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 4
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v2, Lcom/google/android/exoplayer2/ui/r;->exo_styled_player_control_view:I

    const/16 v3, 0x1388

    iput v3, v1, Lcom/google/android/exoplayer2/ui/c0;->showTimeoutMs:I

    const/4 v8, 0x0

    iput v8, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    const/16 v3, 0xc8

    iput v3, v1, Lcom/google/android/exoplayer2/ui/c0;->timeBarMinUpdateIntervalMs:I

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView:[I

    move/from16 v5, p3

    .line 6
    invoke-virtual {v3, v0, v4, v5, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 7
    :try_start_0
    sget v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_controller_layout_id:I

    .line 8
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 9
    sget v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_timeout:I

    iget v5, v1, Lcom/google/android/exoplayer2/ui/c0;->showTimeoutMs:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/c0;->showTimeoutMs:I

    iget v4, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ui/c0;->a0(Landroid/content/res/TypedArray;I)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    .line 11
    sget v4, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_rewind_button:I

    .line 12
    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 13
    sget v5, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_fastforward_button:I

    .line 14
    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 15
    sget v6, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_previous_button:I

    .line 16
    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 17
    sget v7, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_next_button:I

    .line 18
    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 19
    sget v10, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_shuffle_button:I

    .line 20
    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 21
    sget v11, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_subtitle_button:I

    .line 22
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 23
    sget v12, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_show_vr_button:I

    .line 24
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 25
    sget v13, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_time_bar_min_update_interval:I

    iget v14, v1, Lcom/google/android/exoplayer2/ui/c0;->timeBarMinUpdateIntervalMs:I

    .line 26
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 27
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/ui/c0;->setTimeBarMinUpdateInterval(I)V

    .line 28
    sget v13, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_animation_enabled:I

    .line 29
    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v10

    move v15, v11

    move v10, v4

    move v11, v5

    move/from16 v22, v12

    move v12, v6

    move v6, v13

    move v13, v7

    move/from16 v7, v22

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    throw v0

    :cond_0
    move v7, v8

    move v14, v7

    move v15, v14

    move v6, v9

    move v10, v6

    move v11, v10

    move v12, v11

    move v13, v12

    .line 32
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 34
    new-instance v5, Lcom/google/android/exoplayer2/ui/c0$c;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v4}, Lcom/google/android/exoplayer2/ui/c0$c;-><init>(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/ui/c0$a;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/c0;->componentListener:Lcom/google/android/exoplayer2/ui/c0$c;

    .line 35
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v2, Lcom/google/android/exoplayer2/z3$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 37
    new-instance v2, Lcom/google/android/exoplayer2/z3$d;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->formatBuilder:Ljava/lang/StringBuilder;

    .line 39
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->formatter:Ljava/util/Formatter;

    new-array v2, v8, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    new-array v2, v8, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    new-array v2, v8, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->extraAdGroupTimesMs:[J

    new-array v2, v8, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->extraPlayedAdGroups:[Z

    .line 40
    new-instance v2, Lcom/google/android/exoplayer2/ui/z;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/z;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->updateProgressAction:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_duration:I

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->durationView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_position:I

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->positionView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_subtitle:I

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_fullscreen:I

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->fullScreenButton:Landroid/widget/ImageView;

    .line 46
    new-instance v3, Lcom/google/android/exoplayer2/ui/a0;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/a0;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/c0;->e0(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_minimal_fullscreen:I

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->minimalFullScreenButton:Landroid/widget/ImageView;

    .line 48
    new-instance v3, Lcom/google/android/exoplayer2/ui/a0;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/a0;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/c0;->e0(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_settings:I

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->settingsButton:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_playback_speed:I

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedButton:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_audio_track:I

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->audioTrackButton:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 54
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    sget v4, Lcom/google/android/exoplayer2/ui/p;->exo_progress:I

    .line 55
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/b1;

    sget v3, Lcom/google/android/exoplayer2/ui/p;->exo_progress_placeholder:I

    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_5

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    move-object/from16 v20, v5

    move/from16 v21, v6

    move v0, v7

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 57
    new-instance v2, Lcom/google/android/exoplayer2/ui/h;

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lcom/google/android/exoplayer2/ui/u;->ExoStyledControls_TimeBar:I

    move-object/from16 p3, v2

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, v16

    move-object/from16 v20, v5

    move/from16 v5, v17

    move/from16 v21, v6

    move-object/from16 v6, p4

    move v0, v7

    move/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {v2, v8}, Landroid/view/View;->setId(I)V

    .line 59
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v4, v19

    .line 61
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 62
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    goto :goto_1

    :cond_6
    move-object/from16 v20, v5

    move/from16 v21, v6

    move v0, v7

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    move-object/from16 v3, v20

    if-eqz v2, :cond_7

    .line 64
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ui/b1;->a(Lcom/google/android/exoplayer2/ui/b1$a;)V

    :cond_7
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_play_pause:I

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_prev:I

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->previousButton:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 68
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_next:I

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->nextButton:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    sget v2, Lcom/google/android/exoplayer2/ui/o;->roboto_medium_numbers:I

    move-object/from16 v4, p1

    .line 71
    invoke-static {v4, v2}, Landroidx/core/content/res/ResourcesCompat;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    sget v5, Lcom/google/android/exoplayer2/ui/p;->exo_rew:I

    .line 72
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_b

    sget v6, Lcom/google/android/exoplayer2/ui/p;->exo_rew_with_amount:I

    .line 73
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_2

    :cond_b
    move-object v6, v9

    :goto_2
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/c0;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 74
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_c
    if-nez v5, :cond_d

    move-object v5, v6

    :cond_d
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/c0;->rewindButton:Landroid/view/View;

    if-eqz v5, :cond_e

    .line 75
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    sget v5, Lcom/google/android/exoplayer2/ui/p;->exo_ffwd:I

    .line 76
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_f

    sget v6, Lcom/google/android/exoplayer2/ui/p;->exo_ffwd_with_amount:I

    .line 77
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_3

    :cond_f
    move-object v6, v9

    :goto_3
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_10

    .line 78
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    if-nez v5, :cond_11

    move-object v5, v6

    :cond_11
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButton:Landroid/view/View;

    if-eqz v5, :cond_12

    .line 79
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_repeat_toggle:I

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_13

    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_shuffle:I

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_14

    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/q;->exo_media_button_opacity_percentage_enabled:I

    .line 85
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v1, Lcom/google/android/exoplayer2/ui/c0;->buttonAlphaEnabled:F

    sget v5, Lcom/google/android/exoplayer2/ui/q;->exo_media_button_opacity_percentage_disabled:I

    .line 86
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iput v5, v1, Lcom/google/android/exoplayer2/ui/c0;->buttonAlphaDisabled:F

    sget v5, Lcom/google/android/exoplayer2/ui/p;->exo_vr:I

    .line 87
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/c0;->vrButton:Landroid/view/View;

    if-eqz v5, :cond_15

    const/4 v6, 0x0

    .line 88
    invoke-direct {v1, v6, v5}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 89
    :cond_15
    new-instance v5, Lcom/google/android/exoplayer2/ui/v0;

    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/ui/v0;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    move/from16 v6, v21

    .line 90
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/ui/v0;->X(Z)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    sget v6, Lcom/google/android/exoplayer2/ui/t;->exo_controls_playback_speed:I

    .line 91
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_speed:I

    .line 92
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    sget v7, Lcom/google/android/exoplayer2/ui/t;->exo_track_selection_title_audio:I

    .line 93
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_audiotrack:I

    .line 94
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 95
    new-instance v7, Lcom/google/android/exoplayer2/ui/c0$h;

    invoke-direct {v7, v1, v6, v5}, Lcom/google/android/exoplayer2/ui/c0$h;-><init>(Lcom/google/android/exoplayer2/ui/c0;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/c0;->settingsAdapter:Lcom/google/android/exoplayer2/ui/c0$h;

    sget v5, Lcom/google/android/exoplayer2/ui/m;->exo_settings_offset:I

    .line 96
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 97
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/google/android/exoplayer2/ui/r;->exo_styled_settings_list:I

    .line 98
    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/c0;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 102
    sget v4, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v4, v6, :cond_16

    .line 103
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_16
    const/4 v6, 0x0

    .line 104
    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/c0;->needToHideBars:Z

    .line 105
    new-instance v3, Lcom/google/android/exoplayer2/ui/i;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/ui/i;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->trackNameProvider:Lcom/google/android/exoplayer2/ui/c1;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_subtitle_on:I

    .line 106
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_subtitle_off:I

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_cc_enabled_description:I

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->subtitleOnContentDescription:Ljava/lang/String;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_cc_disabled_description:I

    .line 109
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->subtitleOffContentDescription:Ljava/lang/String;

    .line 110
    new-instance v3, Lcom/google/android/exoplayer2/ui/c0$j;

    invoke-direct {v3, v1, v9}, Lcom/google/android/exoplayer2/ui/c0$j;-><init>(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/ui/c0$a;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

    .line 111
    new-instance v3, Lcom/google/android/exoplayer2/ui/c0$b;

    invoke-direct {v3, v1, v9}, Lcom/google/android/exoplayer2/ui/c0$b;-><init>(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/ui/c0$a;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$b;

    .line 112
    new-instance v3, Lcom/google/android/exoplayer2/ui/c0$e;

    sget v4, Lcom/google/android/exoplayer2/ui/k;->exo_controls_playback_speeds:I

    .line 113
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/exoplayer2/ui/c0;->PLAYBACK_SPEEDS:[F

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/c0$e;-><init>(Lcom/google/android/exoplayer2/ui/c0;[Ljava/lang/String;[F)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/c0$e;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_fullscreen_exit:I

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_fullscreen_enter:I

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_repeat_off:I

    .line 116
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_repeat_one:I

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_repeat_all:I

    .line 118
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_shuffle_on:I

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_shuffle_off:I

    .line 120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_fullscreen_exit_description:I

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->fullScreenExitContentDescription:Ljava/lang/String;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_fullscreen_enter_description:I

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->fullScreenEnterContentDescription:Ljava/lang/String;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_repeat_off_description:I

    .line 123
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatOffButtonContentDescription:Ljava/lang/String;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_repeat_one_description:I

    .line 124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatOneButtonContentDescription:Ljava/lang/String;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_repeat_all_description:I

    .line 125
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatAllButtonContentDescription:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_shuffle_on_description:I

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->shuffleOnContentDescription:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/t;->exo_controls_shuffle_off_description:I

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->shuffleOffContentDescription:Ljava/lang/String;

    sget v2, Lcom/google/android/exoplayer2/ui/p;->exo_bottom_bar:I

    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    const/4 v4, 0x1

    .line 129
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButton:Landroid/view/View;

    .line 130
    invoke-virtual {v2, v3, v11}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->rewindButton:Landroid/view/View;

    .line 131
    invoke-virtual {v2, v3, v10}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->previousButton:Landroid/view/View;

    .line 132
    invoke-virtual {v2, v3, v12}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->nextButton:Landroid/view/View;

    .line 133
    invoke-virtual {v2, v3, v13}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {v2, v3, v14}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v2, v3, v15}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/c0;->vrButton:Landroid/view/View;

    .line 136
    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    iget v3, v1, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    if-eqz v3, :cond_17

    move v8, v4

    goto :goto_5

    :cond_17
    move v8, v6

    .line 137
    :goto_5
    invoke-virtual {v0, v2, v8}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/ui/b0;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/b0;-><init>(Lcom/google/android/exoplayer2/ui/c0;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$e;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/c0$e;

    .line 3
    return-object p0
.end method

.method private A0()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->h0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/c0;->currentWindowOffset:J

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getContentPosition()J

    .line 22
    move-result-wide v3

    .line 23
    add-long/2addr v1, v3

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/c0;->currentWindowOffset:J

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->l()J

    .line 29
    move-result-wide v5

    .line 30
    add-long/2addr v3, v5

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    const-wide/16 v1, 0x0

    .line 34
    move-wide v3, v1

    .line 35
    .line 36
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/c0;->positionView:Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/c0;->scrubbing:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/c0;->formatBuilder:Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/c0;->formatter:Ljava/util/Formatter;

    .line 47
    .line 48
    .line 49
    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/o0;->b0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/b1;->setPosition(J)V

    .line 61
    .line 62
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    .line 63
    .line 64
    .line 65
    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/b1;->setBufferedPosition(J)V

    .line 66
    .line 67
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c0;->updateProgressAction:Ljava/lang/Runnable;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    const/4 v3, 0x1

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    move v4, v3

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 79
    move-result v4

    .line 80
    .line 81
    :goto_1
    const-wide/16 v5, 0x3e8

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->isPlaying()Z

    .line 87
    move-result v7

    .line 88
    .line 89
    if-eqz v7, :cond_7

    .line 90
    .line 91
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/b1;->getPreferredUpdateDelay()J

    .line 97
    move-result-wide v3

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move-wide v3, v5

    .line 100
    :goto_2
    rem-long/2addr v1, v5

    .line 101
    .line 102
    sub-long v1, v5, v1

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 106
    move-result-wide v1

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget v0, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 113
    const/4 v3, 0x0

    .line 114
    .line 115
    cmpl-float v3, v0, v3

    .line 116
    .line 117
    if-lez v3, :cond_6

    .line 118
    long-to-float v1, v1

    .line 119
    div-float/2addr v1, v0

    .line 120
    float-to-long v5, v1

    .line 121
    :cond_6
    move-wide v7, v5

    .line 122
    .line 123
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c0;->timeBarMinUpdateIntervalMs:I

    .line 124
    int-to-long v9, v0

    .line 125
    .line 126
    const-wide/16 v11, 0x3e8

    .line 127
    .line 128
    .line 129
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/o0;->q(JJJ)J

    .line 130
    move-result-wide v0

    .line 131
    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->updateProgressAction:Ljava/lang/Runnable;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    const/4 v0, 0x4

    .line 138
    .line 139
    if-eq v4, v0, :cond_8

    .line 140
    .line 141
    if-eq v4, v3, :cond_8

    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->updateProgressAction:Ljava/lang/Runnable;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->audioTrackButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private B0()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->h0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    return-void

    .line 47
    :cond_2
    const/4 v2, 0x1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getRepeatMode()I

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    if-eq v0, v2, :cond_4

    .line 59
    const/4 v1, 0x2

    .line 60
    .line 61
    if-eq v0, v1, :cond_3

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$b;

    .line 3
    return-object p0
.end method

.method private C0()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->A()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x1388

    .line 12
    .line 13
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->rewindButtonTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->rewindButton:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    .line 33
    .line 34
    sget v3, Lcom/google/android/exoplayer2/ui/s;->exo_controls_rewind_by_amount_description:I

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    aput-object v6, v4, v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    :cond_2
    return-void
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method private D0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v0

    .line 35
    .line 36
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 37
    .line 38
    mul-int/lit8 v1, v1, 0x2

    .line 39
    sub-int/2addr v0, v1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 55
    return-void
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$j;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

    .line 3
    return-object p0
.end method

.method private E0()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->h0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/v0;->A(Landroid/view/View;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_1
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleOffContentDescription:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v0, 0x1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getShuffleModeEnabled()Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getShuffleModeEnabled()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleOnContentDescription:Ljava/lang/String;

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleOffContentDescription:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic F(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->A0()V

    .line 4
    return-void
.end method

.method private F0()V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/c0;->showMultiWindowTimeBar:Z

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/c0;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/c0;->T(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3$d;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    move v2, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    .line 29
    :goto_0
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/c0;->multiWindowTimeBar:Z

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/c0;->currentWindowOffset:J

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 41
    move-result v7

    .line 42
    .line 43
    if-nez v7, :cond_e

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->x()I

    .line 47
    move-result v1

    .line 48
    .line 49
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/c0;->multiWindowTimeBar:Z

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    const/4 v8, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v8, v1

    .line 55
    .line 56
    :goto_1
    if-eqz v7, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 60
    move-result v7

    .line 61
    sub-int/2addr v7, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v7, v1

    .line 64
    :goto_2
    move-wide v9, v5

    .line 65
    const/4 v11, 0x0

    .line 66
    .line 67
    :goto_3
    if-gt v8, v7, :cond_d

    .line 68
    .line 69
    if-ne v8, v1, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 73
    move-result-wide v12

    .line 74
    .line 75
    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/c0;->currentWindowOffset:J

    .line 76
    .line 77
    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/c0;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v8, v12}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 81
    .line 82
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/c0;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 83
    .line 84
    iget-wide v13, v12, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    .line 91
    cmp-long v13, v13, v15

    .line 92
    .line 93
    if-nez v13, :cond_5

    .line 94
    .line 95
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/c0;->multiWindowTimeBar:Z

    .line 96
    xor-int/2addr v1, v4

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 100
    .line 101
    goto/16 :goto_8

    .line 102
    .line 103
    :cond_5
    iget v12, v12, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 104
    .line 105
    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/c0;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 106
    .line 107
    iget v14, v13, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 108
    .line 109
    if-gt v12, v14, :cond_c

    .line 110
    .line 111
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 115
    .line 116
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/z3$b;->r()I

    .line 120
    move-result v13

    .line 121
    .line 122
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/z3$b;->f()I

    .line 126
    move-result v14

    .line 127
    .line 128
    :goto_5
    if-ge v13, v14, :cond_b

    .line 129
    .line 130
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/z3$b;->i(I)J

    .line 134
    move-result-wide v17

    .line 135
    .line 136
    const-wide/high16 v19, -0x8000000000000000L

    .line 137
    .line 138
    cmp-long v4, v17, v19

    .line 139
    .line 140
    if-nez v4, :cond_7

    .line 141
    .line 142
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 143
    .line 144
    iget-wide v3, v4, Lcom/google/android/exoplayer2/z3$b;->durationUs:J

    .line 145
    .line 146
    cmp-long v17, v3, v15

    .line 147
    .line 148
    if-nez v17, :cond_6

    .line 149
    goto :goto_7

    .line 150
    .line 151
    :cond_6
    move-wide/from16 v17, v3

    .line 152
    .line 153
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 157
    move-result-wide v3

    .line 158
    .line 159
    add-long v17, v17, v3

    .line 160
    .line 161
    cmp-long v3, v17, v5

    .line 162
    .line 163
    if-ltz v3, :cond_a

    .line 164
    .line 165
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 166
    array-length v4, v3

    .line 167
    .line 168
    if-ne v11, v4, :cond_9

    .line 169
    array-length v4, v3

    .line 170
    .line 171
    if-nez v4, :cond_8

    .line 172
    const/4 v4, 0x1

    .line 173
    goto :goto_6

    .line 174
    :cond_8
    array-length v4, v3

    .line 175
    .line 176
    mul-int/lit8 v4, v4, 0x2

    .line 177
    .line 178
    .line 179
    :goto_6
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 180
    move-result-object v3

    .line 181
    .line 182
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 183
    .line 184
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 185
    .line 186
    .line 187
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 188
    move-result-object v3

    .line 189
    .line 190
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 191
    .line 192
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 193
    .line 194
    add-long v17, v9, v17

    .line 195
    .line 196
    .line 197
    invoke-static/range {v17 .. v18}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 198
    move-result-wide v17

    .line 199
    .line 200
    aput-wide v17, v3, v11

    .line 201
    .line 202
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 203
    .line 204
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/z3$b;->s(I)Z

    .line 208
    move-result v4

    .line 209
    .line 210
    aput-boolean v4, v3, v11

    .line 211
    .line 212
    add-int/lit8 v11, v11, 0x1

    .line 213
    .line 214
    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 215
    const/4 v4, 0x1

    .line 216
    goto :goto_5

    .line 217
    .line 218
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 219
    const/4 v4, 0x1

    .line 220
    goto :goto_4

    .line 221
    .line 222
    :cond_c
    iget-wide v3, v13, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 223
    add-long/2addr v9, v3

    .line 224
    .line 225
    add-int/lit8 v8, v8, 0x1

    .line 226
    const/4 v4, 0x1

    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    :cond_d
    :goto_8
    move-wide v5, v9

    .line 230
    goto :goto_9

    .line 231
    :cond_e
    const/4 v11, 0x0

    .line 232
    .line 233
    .line 234
    :goto_9
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 235
    move-result-wide v1

    .line 236
    .line 237
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->durationView:Landroid/widget/TextView;

    .line 238
    .line 239
    if-eqz v3, :cond_f

    .line 240
    .line 241
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->formatBuilder:Ljava/lang/StringBuilder;

    .line 242
    .line 243
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/c0;->formatter:Ljava/util/Formatter;

    .line 244
    .line 245
    .line 246
    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/o0;->b0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 247
    move-result-object v4

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    .line 253
    .line 254
    if-eqz v3, :cond_11

    .line 255
    .line 256
    .line 257
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/b1;->setDuration(J)V

    .line 258
    .line 259
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/c0;->extraAdGroupTimesMs:[J

    .line 260
    array-length v1, v1

    .line 261
    .line 262
    add-int v2, v11, v1

    .line 263
    .line 264
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 265
    array-length v4, v3

    .line 266
    .line 267
    if-le v2, v4, :cond_10

    .line 268
    .line 269
    .line 270
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 271
    move-result-object v3

    .line 272
    .line 273
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 274
    .line 275
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 276
    .line 277
    .line 278
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 279
    move-result-object v3

    .line 280
    .line 281
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 282
    .line 283
    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->extraAdGroupTimesMs:[J

    .line 284
    .line 285
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 286
    const/4 v5, 0x0

    .line 287
    .line 288
    .line 289
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    .line 291
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->extraPlayedAdGroups:[Z

    .line 292
    .line 293
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 294
    .line 295
    .line 296
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    .line 298
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    .line 299
    .line 300
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/c0;->adGroupTimesMs:[J

    .line 301
    .line 302
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/c0;->playedAdGroups:[Z

    .line 303
    .line 304
    .line 305
    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/b1;->setAdGroupTimesMs([J[ZI)V

    .line 306
    .line 307
    .line 308
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/c0;->A0()V

    .line 309
    return-void
.end method

.method static synthetic G(Lcom/google/android/exoplayer2/ui/c0;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->l0(I)V

    .line 4
    return-void
.end method

.method private G0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->d0()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0$l;->getItemCount()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 20
    return-void
.end method

.method static synthetic H(Lcom/google/android/exoplayer2/ui/c0;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->setPlaybackSpeed(F)V

    .line 4
    return-void
.end method

.method static synthetic I(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 3
    return-object p0
.end method

.method static synthetic J(Lcom/google/android/exoplayer2/ui/c0;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method static synthetic K(Lcom/google/android/exoplayer2/ui/c0;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object p0
.end method

.method static synthetic L(Lcom/google/android/exoplayer2/ui/c0;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleOnContentDescription:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic M(Lcom/google/android/exoplayer2/ui/c0;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleOffContentDescription:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->B0()V

    .line 4
    return-void
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->E0()V

    .line 4
    return-void
.end method

.method static synthetic P(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->x0()V

    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->F0()V

    .line 4
    return-void
.end method

.method static synthetic R(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->z0()V

    .line 4
    return-void
.end method

.method private static T(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3$d;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    return v2

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 14
    move-result v0

    .line 15
    move v1, v2

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    iget-wide v3, v3, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    cmp-long v3, v3, v5

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    return v2

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method private V(Lcom/google/android/exoplayer2/d3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->pause()V

    .line 4
    return-void
.end method

.method private W(Lcom/google/android/exoplayer2/d3;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->prepare()V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->x()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/c0;->o0(Lcom/google/android/exoplayer2/d3;IJ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->play()V

    .line 30
    return-void
.end method

.method private X(Lcom/google/android/exoplayer2/d3;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x4

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->V(Lcom/google/android/exoplayer2/d3;)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->W(Lcom/google/android/exoplayer2/d3;)V

    .line 25
    :goto_1
    return-void
.end method

.method private Y(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->D0()V

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c0;->needToHideBars:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c0;->needToHideBars:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    move-result p1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 29
    move-result v0

    .line 30
    sub-int/2addr p1, v0

    .line 31
    .line 32
    iget v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 33
    sub-int/2addr p1, v0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 39
    move-result v0

    .line 40
    neg-int v0, v0

    .line 41
    .line 42
    iget v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 43
    sub-int/2addr v0, v1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 49
    return-void
.end method

.method private Z(Lcom/google/android/exoplayer2/e4;I)Lcom/google/common/collect/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/e4;",
            "I)",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/ui/c0$k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/a0$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/collect/a0$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e4;->b()Lcom/google/common/collect/a0;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    move-result v4

    .line 16
    .line 17
    if-ge v3, v4, :cond_4

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    check-cast v4, Lcom/google/android/exoplayer2/e4$a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/e4$a;->d()I

    .line 27
    move-result v5

    .line 28
    .line 29
    if-eq v5, p2, :cond_0

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    move v5, v2

    .line 32
    .line 33
    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/e4$a;->length:I

    .line 34
    .line 35
    if-ge v5, v6, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/e4$a;->g(I)Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/e4$a;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    iget v7, v6, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 49
    .line 50
    and-int/lit8 v7, v7, 0x2

    .line 51
    .line 52
    if-eqz v7, :cond_2

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/c0;->trackNameProvider:Lcom/google/android/exoplayer2/ui/c1;

    .line 56
    .line 57
    .line 58
    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/ui/c1;->a(Lcom/google/android/exoplayer2/a2;)Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    new-instance v7, Lcom/google/android/exoplayer2/ui/c0$k;

    .line 62
    .line 63
    .line 64
    invoke-direct {v7, p1, v3, v5, v6}, Lcom/google/android/exoplayer2/ui/c0$k;-><init>(Lcom/google/android/exoplayer2/e4;IILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v7}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 68
    .line 69
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/c0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->j0(Landroid/view/View;)V

    return-void
.end method

.method private static a0(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/ui/v;->StyledPlayerControlView_repeat_toggle_modes:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->A0()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/ui/c0;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/c0;->k0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->G0()V

    .line 4
    return-void
.end method

.method private d0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0$l;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c0$l;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x1e

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 25
    .line 26
    const/16 v1, 0x1d

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->e()Lcom/google/android/exoplayer2/e4;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$b;

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/c0;->Z(Lcom/google/android/exoplayer2/e4;I)Lcom/google/common/collect/a0;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/c0$b;->o(Ljava/util/List;)V

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/v0;->A(Landroid/view/View;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

    .line 62
    const/4 v2, 0x3

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/c0;->Z(Lcom/google/android/exoplayer2/e4;I)Lcom/google/common/collect/a0;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/c0$j;->n(Ljava/util/List;)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$j;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/c0$j;->n(Ljava/util/List;)V

    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/c0;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c0;->scrubbing:Z

    .line 3
    return p1
.end method

.method private static e0(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const/16 v0, 0x8

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/TextView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->positionView:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/c0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->formatBuilder:Ljava/lang/StringBuilder;

    .line 3
    return-object p0
.end method

.method private static g0(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/c0;)Ljava/util/Formatter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->formatter:Ljava/util/Formatter;

    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/v0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/d3;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    return-object p0
.end method

.method private j0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/c0$d;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c0;->isFullScreen:Z

    .line 8
    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c0;->isFullScreen:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->fullScreenButton:Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/c0;->v0(Landroid/widget/ImageView;Z)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->minimalFullScreenButton:Landroid/widget/ImageView;

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isFullScreen:Z

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->v0(Landroid/widget/ImageView;Z)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/c0$d;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isFullScreen:Z

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ui/c0$d;->j(Z)V

    .line 33
    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/d3;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/c0;->p0(Lcom/google/android/exoplayer2/d3;J)V

    .line 4
    return-void
.end method

.method private k0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    sub-int/2addr p8, p6

    .line 4
    sub-int/2addr p9, p7

    .line 5
    .line 6
    if-ne p4, p8, :cond_0

    .line 7
    .line 8
    if-eq p5, p9, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->D0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    move-result p2

    .line 24
    .line 25
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    .line 29
    move-result p3

    .line 30
    sub-int/2addr p2, p3

    .line 31
    .line 32
    iget p3, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 33
    .line 34
    sub-int p6, p2, p3

    .line 35
    .line 36
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    .line 40
    move-result p2

    .line 41
    neg-int p2, p2

    .line 42
    .line 43
    iget p3, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindowMargin:I

    .line 44
    .line 45
    sub-int p7, p2, p3

    .line 46
    .line 47
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 48
    const/4 p8, -0x1

    .line 49
    const/4 p9, -0x1

    .line 50
    move-object p5, p1

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 54
    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/c0;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/c0;->needToHideBars:Z

    .line 3
    return p0
.end method

.method private l0(I)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/c0$e;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsButton:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->Y(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/c0$b;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsButton:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/view/View;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->Y(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsWindow:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 39
    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->nextButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->previousButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private o0(Lcom/google/android/exoplayer2/d3;IJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/d3;->seekTo(IJ)V

    .line 4
    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->rewindButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private p0(Lcom/google/android/exoplayer2/d3;J)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/c0;->multiWindowTimeBar:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c0;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3$d;->g()J

    .line 29
    move-result-wide v3

    .line 30
    .line 31
    cmp-long v5, p2, v3

    .line 32
    .line 33
    if-gez v5, :cond_0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 37
    .line 38
    if-ne v2, v5, :cond_1

    .line 39
    move-wide p2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-long/2addr p2, v3

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->x()I

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/c0;->o0(Lcom/google/android/exoplayer2/d3;IJ)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->A0()V

    .line 55
    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private q0()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/c0;Lcom/google/android/exoplayer2/d3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->X(Lcom/google/android/exoplayer2/d3;)V

    .line 4
    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/c3;->e(F)Lcom/google/android/exoplayer2/c3;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/d3;->b(Lcom/google/android/exoplayer2/c3;)V

    .line 17
    return-void
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/c0;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    .line 3
    return p0
.end method

.method private t0(ZLandroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/exoplayer2/ui/c0;->buttonAlphaEnabled:F

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/c0;->buttonAlphaDisabled:F

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/c0;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method private u0()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->j()J

    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-wide/16 v0, 0x3a98

    .line 12
    .line 13
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButtonTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButton:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    .line 33
    .line 34
    sget v3, Lcom/google/android/exoplayer2/ui/s;->exo_controls_fastforward_by_amount_description:I

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    new-array v4, v4, [Ljava/lang/Object;

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    aput-object v6, v4, v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    :cond_2
    return-void
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private v0(Landroid/widget/ImageView;Z)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0;->fullScreenExitContentDescription:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/c0;->fullScreenEnterContentDescription:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 27
    :goto_0
    return-void
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/c0;)Lcom/google/android/exoplayer2/ui/c0$h;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsAdapter:Lcom/google/android/exoplayer2/ui/c0$h;

    .line 3
    return-object p0
.end method

.method private static w0(Landroid/view/View;Z)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_1
    const/16 p1, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_0
    return-void
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/c0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->y0()V

    .line 4
    return-void
.end method

.method private x0()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->h0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    const/4 v1, 0x5

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x7

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    const/16 v3, 0xb

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    const/16 v4, 0xc

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    const/16 v5, 0x9

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/d3;->g(I)Z

    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    move v0, v1

    .line 47
    move v2, v0

    .line 48
    move v3, v2

    .line 49
    move v4, v3

    .line 50
    .line 51
    :goto_0
    if-eqz v3, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->C0()V

    .line 55
    .line 56
    :cond_2
    if-eqz v4, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->u0()V

    .line 60
    .line 61
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/c0;->previousButton:Landroid/view/View;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v2, v5}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->rewindButton:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButton:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/c0;->nextButton:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->timeBar:Lcom/google/android/exoplayer2/ui/b1;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/b1;->setEnabled(Z)V

    .line 87
    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/c0;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/c0;->Y(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 4
    return-void
.end method

.method private y0()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->h0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->q0()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    .line 28
    .line 29
    sget v2, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_pause:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    .line 41
    .line 42
    sget v2, Lcom/google/android/exoplayer2/ui/t;->exo_controls_pause_description:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 53
    .line 54
    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    .line 57
    .line 58
    sget v2, Lcom/google/android/exoplayer2/ui/n;->exo_styled_controls_play:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->resources:Landroid/content/res/Resources;

    .line 70
    .line 71
    sget v2, Lcom/google/android/exoplayer2/ui/t;->exo_controls_play_description:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/ui/c0;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedButton:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method private z0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/c0$e;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/c0$e;->l(F)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->settingsAdapter:Lcom/google/android/exoplayer2/ui/c0$h;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/c0$e;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/c0$e;->h()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/ui/c0$h;->i(ILjava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public S(Lcom/google/android/exoplayer2/ui/c0$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public U(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 7
    .line 8
    if-eqz v1, :cond_9

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c0;->g0(I)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v2, :cond_8

    .line 22
    .line 23
    const/16 v2, 0x5a

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x4

    .line 31
    .line 32
    if-eq p1, v0, :cond_8

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->m()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    const/16 v2, 0x59

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->y()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_8

    .line 51
    .line 52
    const/16 p1, 0x4f

    .line 53
    .line 54
    if-eq v0, p1, :cond_7

    .line 55
    .line 56
    const/16 p1, 0x55

    .line 57
    .line 58
    if-eq v0, p1, :cond_7

    .line 59
    .line 60
    const/16 p1, 0x57

    .line 61
    .line 62
    if-eq v0, p1, :cond_6

    .line 63
    .line 64
    const/16 p1, 0x58

    .line 65
    .line 66
    if-eq v0, p1, :cond_5

    .line 67
    .line 68
    const/16 p1, 0x7e

    .line 69
    .line 70
    if-eq v0, p1, :cond_4

    .line 71
    .line 72
    const/16 p1, 0x7f

    .line 73
    .line 74
    if-eq v0, p1, :cond_3

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/c0;->V(Lcom/google/android/exoplayer2/d3;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/c0;->W(Lcom/google/android/exoplayer2/d3;)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->o()V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/d3;->t()V

    .line 91
    goto :goto_0

    .line 92
    .line 93
    .line 94
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/c0;->X(Lcom/google/android/exoplayer2/d3;)V

    .line 95
    :cond_8
    :goto_0
    const/4 p1, 0x1

    .line 96
    return p1

    .line 97
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 98
    return p1
.end method

.method public b0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->C()V

    .line 6
    return-void
.end method

.method public c0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->F()V

    .line 6
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/c0;->U(Landroid/view/KeyEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.google.android.exoplayer"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public f0()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->I()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/d3;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/v0;->A(Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/v0;->A(Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ui/c0;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->vrButton:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/v0;->A(Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method i0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/exoplayer2/ui/c0$m;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/c0$m;->onVisibilityChange(I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public m0(Lcom/google/android/exoplayer2/ui/c0$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method n0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->playPauseButton:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 8
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->O()V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->W()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->s0()V

    .line 26
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->P()V

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/c0;->isAttachedToWindow:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->updateProgressAction:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->V()V

    .line 22
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/v0;->Q(ZIIII)V

    .line 14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "com.google.android.exoplayer"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/ui/c0;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public r0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/v0;->b0()V

    .line 6
    return-void
.end method

.method s0()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->y0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->x0()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->B0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->E0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->G0()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->z0()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->F0()V

    .line 22
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/v0;->X(Z)V

    .line 6
    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/c0$d;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/ui/c0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/c0$d;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->fullScreenButton:Landroid/widget/ImageView;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/c0;->w0(Landroid/view/View;Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->minimalFullScreenButton:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    move v1, v2

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/c0;->w0(Landroid/view/View;Z)V

    .line 23
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/d3;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/d3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->s()Landroid/os/Looper;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    :cond_1
    move v2, v3

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 37
    .line 38
    if-ne v0, p1, :cond_3

    .line 39
    return-void

    .line 40
    .line 41
    :cond_3
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->componentListener:Lcom/google/android/exoplayer2/ui/c0$c;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->B(Lcom/google/android/exoplayer2/d3$d;)V

    .line 47
    .line 48
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->componentListener:Lcom/google/android/exoplayer2/ui/c0$c;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3;->F(Lcom/google/android/exoplayer2/d3$d;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->s0()V

    .line 59
    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/c0$f;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/c0$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleModes:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/d3;->getRepeatMode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d3;->setRepeatMode(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x2

    .line 24
    .line 25
    if-ne p1, v2, :cond_1

    .line 26
    .line 27
    if-ne v0, v3, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/d3;->setRepeatMode(I)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    if-ne p1, v3, :cond_2

    .line 36
    .line 37
    if-ne v0, v2, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->player:Lcom/google/android/exoplayer2/d3;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/d3;->setRepeatMode(I)V

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/c0;->repeatToggleButton:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    move v1, v2

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->B0()V

    .line 56
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->fastForwardButton:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->x0()V

    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/c0;->showMultiWindowTimeBar:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->F0()V

    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->nextButton:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->x0()V

    .line 11
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->previousButton:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->x0()V

    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->rewindButton:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->x0()V

    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->shuffleButton:Landroid/widget/ImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/c0;->E0()V

    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->subtitleButton:Landroid/widget/ImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/ui/c0;->showTimeoutMs:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/c0;->f0()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/v0;->W()V

    .line 14
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/v0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/c0;->vrButton:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/v0;->Y(Landroid/view/View;Z)V

    .line 8
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    const/16 v1, 0x3e8

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/o0;->p(III)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/ui/c0;->timeBarMinUpdateIntervalMs:I

    .line 11
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->vrButton:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/c0;->vrButton:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/c0;->t0(ZLandroid/view/View;)V

    .line 18
    :cond_1
    return-void
.end method
