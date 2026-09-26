.class public Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/VideoController;
.implements Lcom/narvii/chat/screenroom/VideoPlayListener;
.implements Lcom/narvii/widget/NVViewPager$ScrollCheckListener;
.implements Lcom/narvii/chat/screenroom/SRHostStatusListener;
.implements Lcom/narvii/permisson/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;,
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;,
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;,
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;
    }
.end annotation


# static fields
.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field bottomGradient:Landroid/view/View;

.field private controllerBottomContainer:Landroid/view/View;

.field public isHost:Z

.field public isVolumeDragging:Z

.field landScape:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private final mFadeOut:Ljava/lang/Runnable;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field public mFullscreen:Landroid/widget/ImageView;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mNextButton:Landroid/widget/ImageView;

.field private mPauseButton:Landroid/widget/ImageView;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

.field mPlaylistButton:Landroid/widget/ImageView;

.field private mPrevButton:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mShowProgress:Ljava/lang/Runnable;

.field private mShowing:Z

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field onSeekPositionChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;

.field onSizeChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;

.field playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

.field public playButtonsLayout:Landroid/view/View;

.field progressLayout:Landroid/view/View;

.field public root:Landroid/view/View;

.field public screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field statusBarPlaceholder:Landroid/view/View;

.field topGradient:Landroid/view/View;

.field public verticalSeekBar:Lcom/narvii/widget/VerticalSeekBar;

.field videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

.field videoDuration:D

.field public videoName:Landroid/widget/TextView;

.field public videoPlayingIcon:Landroid/widget/ImageView;

.field videoTimeProgress:Landroid/widget/TextView;

.field videoTimeProgressContainer:Landroid/widget/LinearLayout;

.field visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public volume:Landroid/widget/ImageView;

.field volumeWrapper:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 2
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 4
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 5
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 8
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mContext:Landroid/content/Context;

    .line 9
    sget-object v1, Lcom/narvii/amino/R$styleable;->SRVideoController:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d06f0

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initControllerView()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "screenRoom"

    .line 15
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 17
    new-instance p2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 18
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 19
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 20
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 21
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 22
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 23
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->canSeekBackward()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->canSeekForward()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    :cond_1
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->resetDragFlag()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->isLocalMedia()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionUtilsV2;->hasSelfPermissionReadVideos(Landroid/content/Context;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_6

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    instance-of v1, v1, Lcom/narvii/chat/ChatActivity;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/chat/ChatActivity;

    .line 62
    const/4 v2, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    move-object v2, v1

    .line 79
    .line 80
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 88
    move-result-object v2

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_2
    instance-of v2, v1, Lcom/narvii/app/NVActivity;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    move-object v2, v1

    .line 95
    .line 96
    check-cast v2, Landroid/app/Activity;

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 100
    move-result-object v2

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const/4 v2, 0x0

    .line 103
    .line 104
    :goto_0
    instance-of v3, v1, Lcom/narvii/app/IPermissionResultDispatcher;

    .line 105
    .line 106
    const/16 v4, 0xca

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    check-cast v1, Lcom/narvii/app/IPermissionResultDispatcher;

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v4, p0}, Lcom/narvii/app/IPermissionResultDispatcher;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    .line 114
    .line 115
    :cond_4
    if-eqz v2, :cond_5

    .line 116
    .line 117
    sget-object v1, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 137
    :cond_5
    return-void

    .line 138
    .line 139
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 140
    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/PlayActionListener;->startPlay()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 152
    :cond_7
    return-void

    .line 153
    .line 154
    .line 155
    :cond_8
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    .line 156
    move-result v0

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    .line 161
    .line 162
    if-eqz v0, :cond_9

    .line 163
    .line 164
    .line 165
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/PlayActionListener;->pause()V

    .line 166
    .line 167
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 173
    .line 174
    .line 175
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->pause()V

    .line 176
    goto :goto_1

    .line 177
    .line 178
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    .line 179
    .line 180
    if-eqz v0, :cond_b

    .line 181
    .line 182
    .line 183
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/PlayActionListener;->start()V

    .line 184
    .line 185
    :cond_b
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 186
    .line 187
    .line 188
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->start()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 192
    .line 193
    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 195
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    return-void
.end method

.method static gainToVolume(F)F
    .locals 0

    return p0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->doPauseResume()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->requestOrientation(I)V

    return-void
.end method

.method private initControllerView()V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0f7c

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0ad5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const v0, 0x7f0a0b93

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->progressLayout:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0d95

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->statusBarPlaceholder:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0a0af8

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playButtonsLayout:Landroid/view/View;

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0a0b07

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlaylistButton:Landroid/widget/ImageView;

    .line 76
    .line 77
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$3;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$3;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a0ed9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->topGradient:Landroid/view/View;

    .line 93
    .line 94
    .line 95
    const v0, 0x7f0a01f3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->bottomGradient:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a09f2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mNextButton:Landroid/widget/ImageView;

    .line 113
    .line 114
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$4;

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$4;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    const v0, 0x7f0a0b7f

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPrevButton:Landroid/widget/ImageView;

    .line 132
    .line 133
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    const v0, 0x7f0a03b1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    .line 149
    .line 150
    .line 151
    const v0, 0x7f0a0b8d

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    check-cast v0, Landroid/widget/ProgressBar;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 160
    .line 161
    if-eqz v0, :cond_2

    .line 162
    .line 163
    instance-of v1, v0, Landroid/widget/SeekBar;

    .line 164
    .line 165
    if-eqz v1, :cond_1

    .line 166
    .line 167
    check-cast v0, Landroid/widget/SeekBar;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    .line 174
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 175
    .line 176
    const/16 v1, 0x3e8

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    instance-of v0, v0, Landroid/view/View;

    .line 188
    .line 189
    if-eqz v0, :cond_2

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    check-cast v0, Landroid/view/View;

    .line 198
    .line 199
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;

    .line 200
    const/4 v2, 0x0

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Lcom/narvii/chat/screenroom/widgets/b;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    .line 208
    .line 209
    :cond_2
    const v0, 0x7f0a0f88

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    check-cast v0, Landroid/widget/TextView;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 218
    .line 219
    .line 220
    const v0, 0x7f0a0f97

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    move-result-object v0

    .line 225
    .line 226
    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 236
    move-result-object v0

    .line 237
    .line 238
    const-string v1, "gifLoader"

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 245
    .line 246
    const-string v1, "assets://media_playing.gif"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    .line 257
    .line 258
    const v0, 0x7f0a0fb2

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object v0

    .line 263
    .line 264
    check-cast v0, Landroid/widget/TextView;

    .line 265
    .line 266
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    .line 267
    .line 268
    .line 269
    const v0, 0x7f0a0fb3

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    check-cast v0, Landroid/widget/LinearLayout;

    .line 276
    .line 277
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    .line 278
    .line 279
    .line 280
    const v0, 0x7f0a0609

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 284
    move-result-object v0

    .line 285
    .line 286
    check-cast v0, Landroid/widget/ImageView;

    .line 287
    .line 288
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V

    .line 292
    .line 293
    .line 294
    const v0, 0x7f0a0e78

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    check-cast v0, Landroid/widget/TextView;

    .line 301
    .line 302
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mEndTime:Landroid/widget/TextView;

    .line 303
    .line 304
    .line 305
    const v0, 0x7f0a0e7a

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    check-cast v0, Landroid/widget/TextView;

    .line 312
    .line 313
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    .line 314
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 321
    .line 322
    new-instance v0, Ljava/util/Formatter;

    .line 323
    .line 324
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 328
    move-result-object v2

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 332
    .line 333
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatter:Ljava/util/Formatter;

    .line 334
    .line 335
    .line 336
    const v0, 0x7f0a0fe3

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    move-result-object v0

    .line 341
    .line 342
    check-cast v0, Landroid/widget/ImageView;

    .line 343
    .line 344
    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    .line 345
    .line 346
    iget-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 350
    .line 351
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    .line 352
    .line 353
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    .line 354
    .line 355
    .line 356
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    .line 361
    .line 362
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateVolumeIcon()V

    .line 363
    return-void
.end method

.method private initProgress(Lcom/narvii/model/PlayListItem;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-wide v0, p1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 5
    double-to-int p1, v0

    .line 6
    .line 7
    mul-int/lit16 p1, p1, 0x3e8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mEndTime:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_2
    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setProgress()I

    move-result p0

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateVolumeIcon()V

    return-void
.end method

.method private requestOrientation(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/VideoButtonClickListener;->requestOrientation(I)V

    .line 8
    :cond_0
    return-void
.end method

.method private resetDragFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getCurrentPosition()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getDuration()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-gtz v2, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    if-lez v2, :cond_2

    .line 30
    .line 31
    const-wide/16 v3, 0x3e8

    .line 32
    int-to-long v5, v0

    .line 33
    mul-long/2addr v5, v3

    .line 34
    int-to-long v3, v2

    .line 35
    div-long/2addr v5, v3

    .line 36
    long-to-int v3, v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    .line 41
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getBufferPercentage()I

    .line 45
    move-result v1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    mul-int/lit8 v1, v1, 0xa

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 53
    .line 54
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mEndTime:Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_5
    return v0

    .line 76
    :cond_6
    :goto_0
    return v1
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    div-int/lit16 p1, p1, 0x3e8

    .line 3
    .line 4
    rem-int/lit8 v0, p1, 0x3c

    .line 5
    .line 6
    div-int/lit8 v1, p1, 0x3c

    .line 7
    .line 8
    rem-int/lit8 v1, v1, 0x3c

    .line 9
    .line 10
    div-int/lit16 p1, p1, 0xe10

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v4, 0x1

    .line 19
    .line 20
    if-lez p1, :cond_0

    .line 21
    .line 22
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatter:Ljava/util/Formatter;

    .line 23
    const/4 v6, 0x3

    .line 24
    .line 25
    new-array v6, v6, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    aput-object p1, v6, v3

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    aput-object p1, v6, v4

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    aput-object p1, v6, v2

    .line 44
    .line 45
    const-string p1, "%d:%02d:%02d"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatter:Ljava/util/Formatter;

    .line 57
    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    aput-object v1, v2, v3

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    aput-object v0, v2, v4

    .line 71
    .line 72
    const-string v0, "%02d:%02d"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method private updateVolumeIcon()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getVolume()F

    .line 16
    move-result v0

    .line 17
    .line 18
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    cmpl-float v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0804fc

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_2
    const v0, 0x7f0804f4

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    return-void
.end method

.method static volumeToGain(F)F
    .locals 0

    return p0
.end method


# virtual methods
.method public addControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    move v2, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    .line 27
    :goto_0
    const/16 v3, 0x4f

    .line 28
    .line 29
    if-eq v0, v3, :cond_d

    .line 30
    .line 31
    const/16 v3, 0x55

    .line 32
    .line 33
    if-eq v0, v3, :cond_d

    .line 34
    .line 35
    const/16 v3, 0x3e

    .line 36
    .line 37
    if-ne v0, v3, :cond_2

    .line 38
    goto :goto_4

    .line 39
    .line 40
    :cond_2
    const/16 v3, 0x7e

    .line 41
    .line 42
    const/16 v4, 0xbb8

    .line 43
    .line 44
    if-ne v0, v3, :cond_4

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->start()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v4}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 66
    :cond_3
    return v1

    .line 67
    .line 68
    :cond_4
    const/16 v3, 0x56

    .line 69
    .line 70
    if-eq v0, v3, :cond_b

    .line 71
    .line 72
    const/16 v3, 0x7f

    .line 73
    .line 74
    if-ne v0, v3, :cond_5

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_5
    const/16 v3, 0x19

    .line 78
    .line 79
    if-eq v0, v3, :cond_a

    .line 80
    .line 81
    const/16 v3, 0x18

    .line 82
    .line 83
    if-eq v0, v3, :cond_a

    .line 84
    .line 85
    const/16 v3, 0xa4

    .line 86
    .line 87
    if-eq v0, v3, :cond_a

    .line 88
    .line 89
    const/16 v3, 0x1b

    .line 90
    .line 91
    if-ne v0, v3, :cond_6

    .line 92
    goto :goto_2

    .line 93
    :cond_6
    const/4 v3, 0x4

    .line 94
    .line 95
    if-eq v0, v3, :cond_8

    .line 96
    .line 97
    const/16 v3, 0x52

    .line 98
    .line 99
    if-ne v0, v3, :cond_7

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    move-result p1

    .line 105
    return p1

    .line 106
    .line 107
    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    .line 111
    :cond_9
    return v1

    .line 112
    .line 113
    .line 114
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 115
    move-result p1

    .line 116
    return p1

    .line 117
    .line 118
    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    .line 124
    move-result p1

    .line 125
    .line 126
    if-eqz p1, :cond_c

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->pause()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v4}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 138
    :cond_c
    return v1

    .line 139
    .line 140
    :cond_d
    :goto_4
    if-eqz v2, :cond_e

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->doPauseResume()V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 146
    .line 147
    if-eqz p1, :cond_e

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 151
    :cond_e
    return v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroid/widget/MediaController;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hide()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x4

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    const v4, 0x7f010038

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 35
    .line 36
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->resetDragFlag()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :catch_0
    const-string v2, "VideoController"

    .line 46
    .line 47
    const-string v3, "already removed"

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 62
    .line 63
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 70
    :cond_2
    return-void
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :goto_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    move-object v1, v0

    .line 12
    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isInScrollingContainer()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "sr"

    .line 23
    .line 24
    const-string v1, "in scrolling container will cause video controller progress seek bar scroll conflict with viewpager, are you using flexlayout, try override shouldDelayChildPressedState to false "

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    return-void
.end method

.method public onBuffering(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onHostMicIndicatorLevelChanged(F)V
    .locals 0

    return-void
.end method

.method public onHostMutedChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHostVideoProgress(F)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoDuration:D

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmpl-double v2, v0, v2

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    float-to-double v2, p1

    .line 10
    mul-double/2addr v0, v2

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 16
    mul-double/2addr v0, v2

    .line 17
    double-to-int p1, v0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, " / "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoDuration:D

    .line 39
    double-to-int p1, v2

    .line 40
    .line 41
    mul-int/lit16 p1, p1, 0x3e8

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    .line 65
    const/4 v0, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    .line 71
    .line 72
    const/16 v0, 0x8

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_0
    return-void
.end method

.method public onPermissionDenied(IZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->showDeniedDialog(Landroid/content/Context;)V

    .line 10
    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xca

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->doPauseResume()V

    .line 8
    :cond_0
    return-void
.end method

.method public onPlayItemChangedForViewer(Lcom/narvii/model/PlayListItem;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    iget-wide v1, p1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 24
    .line 25
    :goto_1
    iput-wide v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoDuration:D

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    iget-object v2, v2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPrevButton:Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mNextButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 54
    move-result p3

    .line 55
    xor-int/2addr p3, v1

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPreparing()Z

    .line 69
    move-result p2

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setProgress()I

    .line 76
    goto :goto_2

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initProgress(Lcom/narvii/model/PlayListItem;)V

    .line 84
    .line 85
    :goto_2
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->progressLayout:Landroid/view/View;

    .line 86
    .line 87
    iget-boolean p3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 88
    .line 89
    if-eqz p3, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-nez p1, :cond_4

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/4 v1, 0x0

    .line 102
    .line 103
    .line 104
    :goto_3
    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 105
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSizeChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;->onSizeChanged(II)V

    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 22
    :goto_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    const/16 p1, 0xbb8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public onUserSeeked(Z)V
    .locals 0

    return-void
.end method

.method public removeControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->progressLayout:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_1
    const v1, 0x3f19999a    # 0.6f

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->disableUnsupportedButtons()V

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 29
    return-void
.end method

.method public setLandScape(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V

    .line 6
    return-void
.end method

.method public setMediaPlayer(Lcom/narvii/chat/screenroom/MediaPlayerControl;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 13
    :cond_0
    return-void
.end method

.method public setOnSeekPositionChangedListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSeekPositionChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSizeChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;

    return-void
.end method

.method public setPlayActionListener(Lcom/narvii/chat/screenroom/PlayActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    return-void
.end method

.method public setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    return-void
.end method

.method public setVolumeWrapper(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbb8

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    :goto_0
    return-void
.end method

.method public show(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setProgress()I

    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->disableUnsupportedButtons()V

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010037

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 9
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    int-to-long v1, p1

    .line 14
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public showAndAutoHide()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xbb8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    .line 6
    return-void
.end method

.method public updatePausePlay()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f080630

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    :goto_0
    return-void

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 42
    .line 43
    .line 44
    const v1, 0x7f08062f

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isTargetPaused()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    :goto_1
    return-void
.end method

.method public updateProgress()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    :cond_0
    return-void
.end method

.method public updateStatusBar(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/app/Activity;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    const/16 v0, 0x504

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const/16 v0, 0x500

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateViews()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    .line 18
    const v2, 0x7f08094d

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    const v2, 0x7f08094c

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->statusBarPlaceholder:Landroid/view/View;

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->topGradient:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 59
    .line 60
    .line 61
    const v4, 0x7f0704c8

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    .line 66
    const v3, 0x7f0704ca

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v3, v4

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v2

    .line 73
    .line 74
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->topGradient:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->bottomGradient:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    .line 100
    const v4, 0x7f0704c9

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    move-result v2

    .line 105
    .line 106
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    .line 108
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->bottomGradient:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 114
    .line 115
    const/16 v2, 0x8

    .line 116
    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    goto :goto_3

    .line 124
    .line 125
    .line 126
    :cond_4
    const v0, 0x7f0a067f

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    .line 136
    .line 137
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 138
    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    .line 142
    const v2, 0x800005

    .line 143
    goto :goto_2

    .line 144
    .line 145
    .line 146
    :cond_5
    const v2, 0x800003

    .line 147
    .line 148
    :goto_2
    or-int/lit8 v2, v2, 0x10

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 152
    .line 153
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    .line 154
    .line 155
    new-instance v2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;

    .line 156
    .line 157
    .line 158
    invoke-direct {v2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 164
    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    .line 180
    const v3, 0x7f07054e

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 184
    move-result v2

    .line 185
    .line 186
    .line 187
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 188
    move-result v3

    .line 189
    .line 190
    if-eqz v3, :cond_6

    .line 191
    .line 192
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 193
    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 195
    goto :goto_4

    .line 196
    .line 197
    :cond_6
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 198
    .line 199
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 200
    .line 201
    :goto_4
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    goto :goto_5

    .line 206
    .line 207
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    .line 215
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 216
    .line 217
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 218
    .line 219
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :goto_5
    return-void
.end method
