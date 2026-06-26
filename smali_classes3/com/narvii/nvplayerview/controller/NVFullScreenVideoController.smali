.class public Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;
.super Ljava/lang/Object;
.source "NVFullScreenVideoController.java"

# interfaces
.implements Lcom/narvii/nvplayerview/controller/IVideoController;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;
    }
.end annotation


# instance fields
.field private animating:Z

.field private backActionBar:Landroid/widget/ImageView;

.field private currentTimeText:Landroid/widget/TextView;

.field private fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private inited:Z

.field private loadingView:Lcom/narvii/widget/SpinningView;

.field private mContext:Landroid/content/Context;

.field private mControllerView:Landroid/widget/RelativeLayout;

.field private mErrorView:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field private mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

.field private miniImg:Landroid/widget/ImageView;

.field private optActionBar:Lcom/narvii/widget/FontAwesomeView;

.field private optionMenuContainer:Landroid/widget/FrameLayout;

.field private playBtn:Lcom/narvii/widget/EasyButton;

.field private playing:Z

.field private progressSeekBar:Landroid/widget/SeekBar;

.field private seekBarTouching:Z

.field private showPIPEntry:Z

.field private t:Ljava/util/Timer;

.field private totalTimeText:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/nvplayerview/NVVideoView;Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->t:Ljava/util/Timer;

    .line 79
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 80
    iput-object p2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->animating:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/SeekBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->enterPIPSetting()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mParentLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/widget/EasyButton;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    return p0
.end method

.method private changeOrientation()V
    .locals 2

    .line 392
    iget v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private enterPIPMode()V
    .locals 2

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mParentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 347
    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    :cond_0
    return-void
.end method

.method private enterPIPSetting()V
    .locals 3

    .line 339
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 341
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleClickBack()V
    .locals 2

    .line 367
    iget v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private isPIPEnabled()Z
    .locals 5

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 332
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:picture_in_picture"

    .line 331
    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setControllerVisibility()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    sget v2, Lcom/narvii/lib/R$anim;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    sget v2, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    const/4 p2, 0x0

    .line 315
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 317
    div-long/2addr p2, v0

    const-wide/16 v0, 0xe10

    div-long v0, p2, v0

    long-to-int v1, v0

    const-wide/16 v2, 0x3c

    .line 318
    div-long v4, p2, v2

    rem-long/2addr v4, v2

    long-to-int v0, v4

    .line 319
    rem-long/2addr p2, v2

    long-to-int p3, p2

    const/4 p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v1, :cond_1

    .line 321
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v3

    const-string p2, "%d:%02d:%02d"

    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p2

    const-string p2, "%02d:%02d"

    invoke-static {v1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setupBtnFullscreen()V
    .locals 3

    .line 353
    iget v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 354
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    sget v2, Lcom/narvii/lib/R$string;->ion_android_contract:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 355
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    sget v2, Lcom/narvii/lib/R$string;->ion_android_expand:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic closeVoice()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$closeVoice(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 86
    sget v0, Lcom/narvii/lib/R$layout;->activity_exo_full_screen_controller:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 9

    .line 91
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->inited:Z

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mParentLayout:Landroid/widget/FrameLayout;

    .line 96
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->controllers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 97
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->backActionBar:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->actionbar_ops:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optActionBar:Lcom/narvii/widget/FontAwesomeView;

    .line 99
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->time_current:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->currentTimeText:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->time_total:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->totalTimeText:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    .line 102
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->mini:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->miniImg:Landroid/widget/ImageView;

    .line 104
    iput-boolean v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->showPIPEntry:Z

    .line 105
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->miniImg:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->showPIPEntry:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->video_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 107
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/EasyButton;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    .line 108
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->video_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 109
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->option_menu_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optionMenuContainer:Landroid/widget/FrameLayout;

    .line 110
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->inited:Z

    .line 112
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 116
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->backActionBar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optActionBar:Lcom/narvii/widget/FontAwesomeView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->miniImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 122
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mHandler:Landroid/os/Handler;

    .line 123
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 124
    iget-object v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->t:Ljava/util/Timer;

    new-instance v4, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    invoke-direct {v4, p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 139
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 141
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;

    invoke-direct {v3, p0, v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->gestureDetector:Landroid/view/GestureDetector;

    .line 142
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/NVVideoView;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->video_error:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    .line 144
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic onActiveChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onActiveChanged(Lcom/narvii/nvplayerview/controller/IVideoController;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 258
    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    if-ne p1, v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->handleClickBack()V

    goto/16 :goto_0

    .line 260
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->actionbar_ops:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_0

    .line 262
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->mini:I

    if-ne p1, v0, :cond_3

    .line 263
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->isPIPEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->enterPIPMode()V

    goto :goto_0

    .line 266
    :cond_2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 267
    sget v0, Lcom/narvii/lib/R$string;->pip_permission:I

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 268
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x104000a

    .line 269
    new-instance v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$2;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$2;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 275
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 277
    :cond_3
    sget v0, Lcom/narvii/lib/R$id;->video_fullscreen:I

    if-ne p1, v0, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->changeOrientation()V

    goto :goto_0

    .line 279
    :cond_4
    sget v0, Lcom/narvii/lib/R$id;->play:I

    if-ne p1, v0, :cond_6

    .line 280
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 281
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    if-eqz p1, :cond_5

    .line 282
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->start()V

    goto :goto_0

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->pause()V

    goto :goto_0

    .line 286
    :cond_6
    sget v0, Lcom/narvii/lib/R$id;->controllers:I

    if-ne p1, v0, :cond_7

    .line 287
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setControllerVisibility()V

    goto :goto_0

    .line 288
    :cond_7
    sget v0, Lcom/narvii/lib/R$id;->parent:I

    if-ne p1, v0, :cond_8

    .line 289
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setControllerVisibility()V

    goto :goto_0

    .line 290
    :cond_8
    sget v0, Lcom/narvii/lib/R$id;->video_error:I

    if-ne p1, v0, :cond_9

    .line 291
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_9

    .line 292
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->retry()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 247
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setupBtnFullscreen()V

    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVVideoException;->getFailType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVVideoException;->getFailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVVideoException;->getFailUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/YoutubeUtils;->openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 202
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 203
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    iget-boolean p2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    if-eqz p2, :cond_1

    sget p2, Lcom/narvii/lib/R$drawable;->video_pause:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/narvii/lib/R$drawable;->video_play:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 205
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 194
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onPressBack()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->handleClickBack()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$onRenderedFirstFrame(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->seekBarTouching:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->seekBarTouching:Z

    .line 310
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-long v3, v3

    mul-long v1, v1, v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/narvii/nvplayer/INVPlayer;->seekTo(J)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 401
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    .line 402
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    .line 404
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v1, v1

    .line 405
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    .line 406
    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_1

    cmpl-float v0, v1, v4

    if-gtz v0, :cond_1

    cmpl-float v0, v2, v4

    if-gtz v0, :cond_1

    cmpl-float v0, v3, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 410
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 411
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    const-string v0, "#ff000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 408
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->handleClickBack()V

    .line 415
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic openVoice()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$openVoice(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->animating:Z

    return-void
.end method

.method public setCurrentTime()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->currentTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method public setOptionMenu()V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 226
    check-cast v0, Lcom/narvii/app/NVActivity;

    const-string v1, "clz"

    .line 227
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "media"

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "__communityId"

    .line 231
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    const-string v4, "preview"

    invoke-virtual {v0, v4, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    iget-object v4, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 233
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 234
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parent"

    .line 235
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "parentClass"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 237
    invoke-virtual {v1, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 238
    iget-object v2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optionMenuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$id;->option_menu_container:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setTotalTime()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->totalTimeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method public synthetic setUIVisibility(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/IVideoController$-CC;->$default$setUIVisibility(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    return-void
.end method
