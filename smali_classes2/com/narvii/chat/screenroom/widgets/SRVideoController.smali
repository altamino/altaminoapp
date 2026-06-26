.class public Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.super Landroid/widget/FrameLayout;
.source "SRVideoController.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/VideoController;
.implements Lcom/narvii/chat/screenroom/VideoPlayListener;
.implements Lcom/narvii/widget/NVViewPager$ScrollCheckListener;
.implements Lcom/narvii/chat/screenroom/SRHostStatusListener;
.implements Lcom/narvii/permisson/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;,
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;,
        Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;,
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

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 204
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 134
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 237
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 248
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 631
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 638
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 856
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 953
    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 205
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mContext:Landroid/content/Context;

    .line 207
    sget-object v1, Lcom/narvii/amino/R$styleable;->SRVideoController:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 208
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    .line 209
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0638

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 212
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initControllerView()V

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "screenRoom"

    .line 214
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 72
    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 134
    new-instance p2, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p2}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 237
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 248
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$2;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 631
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$11;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    .line 638
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$12;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    .line 856
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$13;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 953
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$14;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 228
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateVolumeIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/chat/screenroom/widgets/SRVideoController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->requestOrientation(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setProgress()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Lcom/narvii/chat/screenroom/MediaPlayerControl;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->doPauseResume()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .line 889
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->resetDragFlag()V

    .line 892
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_6

    .line 893
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 894
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 895
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getCurrentPlayListItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/PlayListItem;->isLocalMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 896
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 897
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatActivity;

    invoke-virtual {v0, v3}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 901
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    .line 902
    instance-of v3, v1, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_2

    .line 903
    move-object v0, v1

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-static {v0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_2
    instance-of v3, v1, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_3

    .line 905
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/app/Activity;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 908
    :cond_3
    :goto_0
    instance-of v3, v1, Lcom/narvii/app/IPermissionResultDispatcher;

    const/16 v4, 0xca

    if-eqz v3, :cond_4

    .line 909
    check-cast v1, Lcom/narvii/app/IPermissionResultDispatcher;

    invoke-interface {v1, v4, p0}, Lcom/narvii/app/IPermissionResultDispatcher;->registerPermissionResult(ILcom/narvii/permisson/PermissionListener;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 913
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :cond_5
    return-void

    .line 918
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-nez v0, :cond_8

    .line 919
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    if-eqz v0, :cond_7

    .line 920
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/PlayActionListener;->startPlay()V

    .line 921
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    :cond_7
    return-void

    .line 926
    :cond_8
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 927
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    if-eqz v0, :cond_9

    .line 928
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/PlayActionListener;->pause()V

    .line 930
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 931
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->pause()V

    goto :goto_1

    .line 933
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    if-eqz v0, :cond_b

    .line 934
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/PlayActionListener;->start()V

    .line 936
    :cond_b
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->start()V

    .line 937
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    .line 939
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    return-void
.end method

.method static gainToVolume(F)F
    .locals 0

    return p0
.end method

.method private initControllerView()V
    .locals 3

    const v0, 0x7f090c56

    .line 286
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const v0, 0x7f090825

    .line 289
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    .line 290
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 292
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0908d0

    .line 295
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->progressLayout:Landroid/view/View;

    const v0, 0x7f090a9c

    .line 297
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->statusBarPlaceholder:Landroid/view/View;

    const v0, 0x7f090841

    .line 299
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playButtonsLayout:Landroid/view/View;

    const v0, 0x7f090851

    .line 301
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlaylistButton:Landroid/widget/ImageView;

    .line 302
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlaylistButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$3;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$3;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090bbc

    .line 312
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->topGradient:Landroid/view/View;

    const v0, 0x7f090157

    .line 313
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->bottomGradient:Landroid/view/View;

    const v0, 0x7f09075c

    .line 317
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mNextButton:Landroid/widget/ImageView;

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mNextButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$4;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$4;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0908c0

    .line 326
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPrevButton:Landroid/widget/ImageView;

    .line 327
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPrevButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$5;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902e2

    .line 337
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    const v0, 0x7f0908cc

    .line 338
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    .line 339
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 340
    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 341
    check-cast v0, Landroid/widget/SeekBar;

    .line 342
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 345
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Lcom/narvii/chat/screenroom/widgets/SRVideoController$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    const v0, 0x7f090c62

    .line 350
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    const v0, 0x7f090c72

    .line 352
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    .line 353
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "gifLoader"

    .line 354
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v1, "assets://media_playing.gif"

    .line 355
    invoke-virtual {v0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090c8d

    .line 358
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    const v0, 0x7f090c8e

    .line 359
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0904c2

    .line 361
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    .line 362
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V

    const v0, 0x7f090b73

    .line 364
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mEndTime:Landroid/widget/TextView;

    const v0, 0x7f090b75

    .line 365
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 367
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatter:Ljava/util/Formatter;

    const v0, 0x7f090cbd

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    .line 370
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 371
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$6;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateVolumeIcon()V

    return-void
.end method

.method private initProgress(Lcom/narvii/model/PlayListItem;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 704
    iget-wide v0, p1, Lcom/narvii/model/PlayListItem;->duration:D

    double-to-int p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    .line 706
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 708
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 709
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mEndTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 713
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 715
    invoke-direct {p0, v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private requestOrientation(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/VideoButtonClickListener;->requestOrientation(I)V

    :cond_0
    return-void
.end method

.method private resetDragFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    .line 615
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isVolumeDragging:Z

    return-void
.end method

.method private setProgress()I
    .locals 7

    .line 664
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mDragging:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 669
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {v2}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getDuration()I

    move-result v2

    if-gtz v2, :cond_1

    return v1

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    if-lez v2, :cond_2

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long v5, v5, v3

    int-to-long v3, v2

    .line 679
    div-long/2addr v5, v3

    long-to-int v3, v5

    .line 680
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {v1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 683
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 686
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mEndTime:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 687
    invoke-direct {p0, v2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 689
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 7

    .line 649
    div-int/lit16 p1, p1, 0x3e8

    .line 651
    rem-int/lit8 v0, p1, 0x3c

    .line 652
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 653
    div-int/lit16 p1, p1, 0xe10

    .line 655
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-lez p1, :cond_0

    .line 657
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatter:Ljava/util/Formatter;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    const-string p1, "%d:%02d:%02d"

    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {p1, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateVolumeIcon()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->getVolume()F

    move-result v0

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volume:Landroid/widget/ImageView;

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    const v0, 0x7f0803d9

    goto :goto_1

    :cond_2
    const v0, 0x7f0803d1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static volumeToGain(F)F
    .locals 0

    return p0
.end method


# virtual methods
.method public addControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 809
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 812
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 813
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 814
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_d

    const/16 v3, 0x55

    if-eq v0, v3, :cond_d

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_2

    goto :goto_4

    :cond_2
    const/16 v3, 0x7e

    const/16 v4, 0xbb8

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_3

    .line 826
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 827
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->start()V

    .line 828
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 829
    invoke-virtual {p0, v4}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    :cond_3
    return v1

    :cond_4
    const/16 v3, 0x56

    if-eq v0, v3, :cond_b

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v3, 0x19

    if-eq v0, v3, :cond_a

    const/16 v3, 0x18

    if-eq v0, v3, :cond_a

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_a

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x4

    if-eq v0, v3, :cond_8

    const/16 v3, 0x52

    if-ne v0, v3, :cond_7

    goto :goto_1

    .line 853
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 848
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    :cond_9
    return v1

    .line 845
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    .line 834
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 835
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {p1}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->pause()V

    .line 836
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 837
    invoke-virtual {p0, v4}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    :cond_c
    return v1

    :cond_d
    :goto_4
    if-eqz v2, :cond_e

    .line 819
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->doPauseResume()V

    .line 820
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    .line 821
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestFocus()Z

    :cond_e
    return v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1018
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 5

    .line 580
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f01002a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 584
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 589
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->resetDragFlag()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "VideoController"

    const-string v3, "already removed"

    .line 592
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 596
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 598
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 600
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$10;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .line 732
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 733
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 734
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 737
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 112
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

    .line 573
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 721
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 722
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sr"

    const-string v1, "in scrolling container will cause video controller progress seek bar scroll conflict with viewpager, are you using flexlayout, try override shouldDelayChildPressedState to false "

    .line 727
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onBuffering(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 745
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 746
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removeSRHostStatusListener(Lcom/narvii/chat/screenroom/SRHostStatusListener;)V

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
    .locals 5

    .line 761
    iget-wide v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoDuration:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    float-to-double v2, p1

    .line 762
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 763
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoDuration:D

    double-to-int p1, v2

    mul-int/lit16 p1, p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->showDeniedDialog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 1

    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->doPauseResume()V

    :cond_0
    return-void
.end method

.method public onPlayItemChangedForViewer(Lcom/narvii/model/PlayListItem;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    .line 150
    :cond_1
    iget-wide v1, p1, Lcom/narvii/model/PlayListItem;->duration:D

    :goto_1
    iput-wide v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoDuration:D

    .line 151
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgress:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoPlayingIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;ZZ)V
    .locals 3

    .line 1024
    iget v0, p1, Lcom/narvii/model/PlayList;->currentItemStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1027
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPrevButton:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 1033
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mNextButton:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 1034
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v1

    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 1035
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 1036
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPreparing()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 1039
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setProgress()I

    goto :goto_2

    .line 1037
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->initProgress(Lcom/narvii/model/PlayListItem;)V

    .line 1041
    :goto_2
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->progressLayout:Landroid/view/View;

    iget-boolean p3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->itemList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 773
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 774
    iget-object p3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSizeChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;

    if-eqz p3, :cond_0

    .line 775
    invoke-interface {p3, p1, p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->hide()V

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    :cond_2
    :goto_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0xbb8

    .line 803
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onUserSeeked(Z)V
    .locals 0

    return-void
.end method

.method public removeControllerVisibleChangeListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$VideoControllerVisibleChangeListener;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->progressLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v1, 0x3f19999a    # 0.6f

    .line 1010
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1012
    :cond_2
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->disableUnsupportedButtons()V

    .line 1013
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setLandScape(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    .line 219
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateViews()V

    return-void
.end method

.method public setMediaPlayer(Lcom/narvii/chat/screenroom/MediaPlayerControl;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    .line 262
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 264
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-nez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show()V

    :cond_0
    return-void
.end method

.method public setOnSeekPositionChangedListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSeekPositionChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnUserSeekPositionListener;

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->onSizeChangedListener:Lcom/narvii/chat/screenroom/widgets/SRVideoController$OnSizeChangedListener;

    return-void
.end method

.method public setPlayActionListener(Lcom/narvii/chat/screenroom/PlayActionListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->playActionListener:Lcom/narvii/chat/screenroom/PlayActionListener;

    return-void
.end method

.method public setVideoButtonClickListener(Lcom/narvii/chat/screenroom/VideoButtonClickListener;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoButtonClickListener:Lcom/narvii/chat/screenroom/VideoButtonClickListener;

    return-void
.end method

.method public setVolumeWrapper(Landroid/view/View;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->volumeWrapper:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbb8

    .line 492
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    .line 494
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    :goto_0
    return-void
.end method

.method public show(I)V
    .locals 3

    .line 538
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    if-nez v0, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->setProgress()I

    .line 540
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->disableUnsupportedButtons()V

    .line 541
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->root:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 543
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0, v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updateStatusBar(Z)V

    .line 546
    :cond_0
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowing:Z

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->visibleChangeEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$9;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 556
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    if-eqz v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    if-nez v0, :cond_2

    return-void

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->updatePausePlay()V

    .line 561
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_4

    .line 565
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 567
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 568
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFadeOut:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public showAndAutoHide()V
    .locals 1

    const/16 v0, 0xbb8

    .line 499
    invoke-virtual {p0, v0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->show(I)V

    return-void
.end method

.method public updatePausePlay()V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    const/4 v1, 0x0

    const v2, 0x7f080501

    if-nez v0, :cond_2

    .line 868
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    .line 876
    :cond_2
    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPlayer:Lcom/narvii/chat/screenroom/MediaPlayerControl;

    invoke-interface {v0}, Lcom/narvii/chat/screenroom/MediaPlayerControl;->isTargetPaused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 880
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 882
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public updateProgress()V
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 697
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mShowProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateStatusBar(Z)V
    .locals 2

    .line 619
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 623
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x504

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateViews()V
    .locals 5

    .line 423
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 426
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    if-eqz v2, :cond_1

    const v2, 0x7f080750

    goto :goto_0

    :cond_1
    const v2, 0x7f08074f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->mFullscreen:Landroid/widget/ImageView;

    new-instance v2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;

    invoke-direct {v2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$7;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->statusBarPlaceholder:Landroid/view/View;

    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    invoke-static {v0, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 441
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->topGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    const v4, 0x7f070294

    if-eqz v3, :cond_2

    const v3, 0x7f070296

    goto :goto_1

    :cond_2
    const v3, 0x7f070294

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->topGradient:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->bottomGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    if-eqz v3, :cond_3

    const v4, 0x7f070295

    :cond_3
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->bottomGradient:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->isHost:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const v0, 0x7f090523

    .line 452
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoTimeProgressContainer:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    if-eqz v2, :cond_5

    const v2, 0x800005

    goto :goto_2

    :cond_5
    const v2, 0x800003

    :goto_2
    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 458
    :goto_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->videoName:Landroid/widget/TextView;

    new-instance v2, Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;

    invoke-direct {v2, p0}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$8;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 465
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->landScape:Z

    if-eqz v0, :cond_7

    .line 466
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070316

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 468
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 469
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 470
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    .line 472
    :cond_6
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 473
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 475
    :goto_4
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 478
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 479
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 480
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 481
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->controllerBottomContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    return-void
.end method
