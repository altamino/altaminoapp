.class public Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/Timer;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->t:Ljava/util/Timer;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 17
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->animating:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private changeOrientation()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 19
    const/4 v1, 0x6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 23
    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    return p0
.end method

.method static bridge synthetic e(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mParentLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private enterPIPMode()V
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mParentLayout:Landroid/widget/FrameLayout;

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/nvplayerview/controller/d;->a()Landroid/app/PictureInPictureParams$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/b;->a(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    check-cast v1, Landroid/app/Activity;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/narvii/nvplayerview/controller/c;->a(Landroid/app/Activity;Landroid/app/PictureInPictureParams;)Z

    .line 28
    :cond_0
    return-void
.end method

.method private enterPIPSetting()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "package:"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayerview/NVVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/widget/EasyButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    return-object p0
.end method

.method private handleClickBack()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 22
    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    return p0
.end method

.method private isPIPEnabled()Z
    .locals 5

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "appops"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/app/AppOpsManager;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 21
    move-result v1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    const-string v4, "android:picture_in_picture"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4, v1, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    const/4 v2, 0x1

    .line 37
    :cond_0
    return v2
.end method

.method static bridge synthetic j(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->enterPIPSetting()V

    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setControllerVisibility()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    sget v2, Lcom/narvii/lib/R$anim;->fade_out:I

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    sget v2, Lcom/narvii/lib/R$anim;->fade_in:I

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    :goto_0
    return-void
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p2, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 14
    div-long/2addr p2, v0

    .line 15
    .line 16
    const-wide/16 v0, 0xe10

    .line 17
    .line 18
    div-long v0, p2, v0

    .line 19
    long-to-int v0, v0

    .line 20
    .line 21
    const-wide/16 v1, 0x3c

    .line 22
    .line 23
    div-long v3, p2, v1

    .line 24
    rem-long/2addr v3, v1

    .line 25
    long-to-int v3, v3

    .line 26
    rem-long/2addr p2, v1

    .line 27
    long-to-int p2, p2

    .line 28
    const/4 p3, 0x2

    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    const/4 v5, 0x3

    .line 36
    .line 37
    new-array v5, v5, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    aput-object v0, v5, v2

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    aput-object v0, v5, v1

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    aput-object p2, v5, p3

    .line 56
    .line 57
    const-string p2, "%d:%02d:%02d"

    .line 58
    .line 59
    .line 60
    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 68
    .line 69
    new-array p3, p3, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    aput-object v3, p3, v2

    .line 76
    .line 77
    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    aput-object p2, p3, v1

    .line 82
    .line 83
    const-string p2, "%02d:%02d"

    .line 84
    .line 85
    .line 86
    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    return-void
.end method

.method private setupBtnFullscreen()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$string;->ion_android_contract:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 22
    .line 23
    sget v1, Lcom/narvii/lib/R$string;->ion_android_expand:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic closeVoice()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->a(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->t:Ljava/util/Timer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->activity_exo_full_screen_controller:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public init()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->inited:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->getLayoutId()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 24
    .line 25
    sget v1, Lcom/narvii/lib/R$id;->parent:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mParentLayout:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 36
    .line 37
    sget v1, Lcom/narvii/lib/R$id;->controllers:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mControllerView:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 48
    .line 49
    sget v1, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->backActionBar:Landroid/widget/ImageView;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 60
    .line 61
    sget v1, Lcom/narvii/lib/R$id;->actionbar_ops:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optActionBar:Lcom/narvii/widget/FontAwesomeView;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 72
    .line 73
    sget v1, Lcom/narvii/lib/R$id;->time_current:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->currentTimeText:Landroid/widget/TextView;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 84
    .line 85
    sget v1, Lcom/narvii/lib/R$id;->time_total:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    check-cast v0, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->totalTimeText:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 96
    .line 97
    sget v1, Lcom/narvii/lib/R$id;->seek_bar:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    check-cast v0, Landroid/widget/SeekBar;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 108
    .line 109
    sget v1, Lcom/narvii/lib/R$id;->mini:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->miniImg:Landroid/widget/ImageView;

    .line 118
    .line 119
    iput-boolean v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->showPIPEntry:Z

    .line 120
    .line 121
    const/16 v1, 0x8

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 127
    .line 128
    sget v1, Lcom/narvii/lib/R$id;->video_fullscreen:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Lcom/narvii/widget/FontAwesomeView;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 139
    .line 140
    sget v1, Lcom/narvii/lib/R$id;->play:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    check-cast v0, Lcom/narvii/widget/EasyButton;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 151
    .line 152
    sget v1, Lcom/narvii/lib/R$id;->video_loading:I

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 163
    .line 164
    sget v1, Lcom/narvii/lib/R$id;->option_menu_container:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    check-cast v0, Landroid/widget/FrameLayout;

    .line 171
    .line 172
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optionMenuContainer:Landroid/widget/FrameLayout;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x1

    .line 181
    .line 182
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->inited:Z

    .line 183
    .line 184
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 185
    .line 186
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->backActionBar:Landroid/widget/ImageView;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optActionBar:Lcom/narvii/widget/FontAwesomeView;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->miniImg:Landroid/widget/ImageView;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->fullScreenBar:Lcom/narvii/widget/FontAwesomeView;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 215
    .line 216
    new-instance v0, Landroid/os/Handler;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    .line 227
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mHandler:Landroid/os/Handler;

    .line 228
    .line 229
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 240
    .line 241
    iput v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 242
    .line 243
    iget-object v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->t:Ljava/util/Timer;

    .line 244
    .line 245
    new-instance v4, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    .line 246
    .line 247
    .line 248
    invoke-direct {v4, p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V

    .line 249
    .line 250
    const-wide/16 v5, 0x0

    .line 251
    .line 252
    const-wide/16 v7, 0x3e8

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 256
    .line 257
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 258
    .line 259
    const/high16 v1, 0x3f800000    # 1.0f

    .line 260
    .line 261
    .line 262
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 263
    .line 264
    new-instance v0, Landroid/view/GestureDetector;

    .line 265
    .line 266
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 267
    .line 268
    new-instance v3, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;

    .line 269
    .line 270
    .line 271
    invoke-direct {v3, p0, v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$SingleTapConfirm;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;Lcom/narvii/nvplayerview/controller/e;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 275
    .line 276
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->gestureDetector:Landroid/view/GestureDetector;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/NVVideoView;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    .line 283
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->view:Landroid/view/View;

    .line 284
    .line 285
    sget v1, Lcom/narvii/lib/R$id;->video_error:I

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    check-cast v0, Landroid/widget/LinearLayout;

    .line 292
    .line 293
    iput-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method public synthetic onActiveChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/a;->d(Lcom/narvii/nvplayerview/controller/IVideoController;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->handleClickBack()V

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->actionbar_ops:I

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->mini:I

    .line 22
    .line 23
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->isPIPEnabled()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->enterPIPMode()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    sget v0, Lcom/narvii/lib/R$string;->pip_permission:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 46
    .line 47
    const/high16 v0, 0x1040000

    .line 48
    const/4 v1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$2;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$2;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V

    .line 57
    .line 58
    .line 59
    const v1, 0x104000a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    sget v0, Lcom/narvii/lib/R$id;->video_fullscreen:I

    .line 69
    .line 70
    if-ne p1, v0, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->changeOrientation()V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_4
    sget v0, Lcom/narvii/lib/R$id;->play:I

    .line 77
    .line 78
    if-ne p1, v0, :cond_6

    .line 79
    .line 80
    iget-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 81
    .line 82
    xor-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->start()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->pause()V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_6
    sget v0, Lcom/narvii/lib/R$id;->controllers:I

    .line 97
    .line 98
    if-ne p1, v0, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setControllerVisibility()V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_7
    sget v0, Lcom/narvii/lib/R$id;->parent:I

    .line 105
    .line 106
    if-ne p1, v0, :cond_8

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setControllerVisibility()V

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_8
    sget v0, Lcom/narvii/lib/R$id;->video_error:I

    .line 113
    .line 114
    if-ne p1, v0, :cond_9

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 117
    .line 118
    if-eqz p1, :cond_9

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    .line 122
    move-result p1

    .line 123
    .line 124
    if-nez p1, :cond_9

    .line 125
    .line 126
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->retry()V

    .line 130
    :cond_9
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mOrientation:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setupBtnFullscreen()V

    .line 6
    return-void
.end method

.method public onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isPlaying()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 17
    const/4 v1, 0x4

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVVideoException;->getFailType()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVVideoException;->getFailUrl()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVVideoException;->getFailUrl()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/narvii/util/YoutubeUtils;->openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    .line 5
    if-eq p2, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x3

    .line 11
    .line 12
    if-ne p2, v0, :cond_4

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playing:Z

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    sget p1, Lcom/narvii/lib/R$drawable;->video_pause:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    sget p1, Lcom/narvii/lib/R$drawable;->video_play:I

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eq p1, v2, :cond_4

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->loadingView:Lcom/narvii/widget/SpinningView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->playBtn:Lcom/narvii/widget/EasyButton;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 69
    move-result p1

    .line 70
    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mErrorView:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_4
    :goto_2
    return-void
.end method

.method public onPressBack()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->handleClickBack()V

    .line 4
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->i(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->seekBarTouching:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->seekBarTouching:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 13
    move-result v3

    .line 14
    int-to-long v3, v3

    .line 15
    mul-long/2addr v1, v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 19
    move-result p1

    .line 20
    int-to-long v3, p1

    .line 21
    div-long/2addr v1, v3

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Lcom/narvii/nvplayer/INVPlayer;->seekTo(J)V

    .line 25
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 22
    int-to-float v0, v0

    .line 23
    .line 24
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 25
    int-to-float v1, v1

    .line 26
    .line 27
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 28
    int-to-float v2, v2

    .line 29
    .line 30
    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 31
    int-to-float v3, v3

    .line 32
    .line 33
    const/high16 v4, 0x42c80000    # 100.0f

    .line 34
    .line 35
    cmpl-float v0, v0, v4

    .line 36
    .line 37
    if-gtz v0, :cond_1

    .line 38
    .line 39
    cmpl-float v0, v1, v4

    .line 40
    .line 41
    if-gtz v0, :cond_1

    .line 42
    .line 43
    cmpl-float v0, v2, v4

    .line 44
    .line 45
    if-gtz v0, :cond_1

    .line 46
    .line 47
    cmpl-float v0, v3, v4

    .line 48
    .line 49
    if-lez v0, :cond_0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/nvplayerview/NVVideoView;->getContainer()Lcom/narvii/nvplayerview/NVVideoContainer;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mVideoView:Lcom/narvii/nvplayerview/NVVideoView;

    .line 66
    .line 67
    const-string v0, "#ff000000"

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    move-result v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->handleClickBack()V

    .line 79
    .line 80
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->gestureDetector:Landroid/view/GestureDetector;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method public synthetic openVoice()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayerview/controller/a;->j(Lcom/narvii/nvplayerview/controller/IVideoController;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/nvplayer/INVPlayer;->isError()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->animating:Z

    return-void
.end method

.method public setCurrentTime()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->currentTimeText:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setTime(Landroid/widget/TextView;J)V

    .line 12
    return-void
.end method

.method public setOptionMenu()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    const-string v1, "clz"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "media"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    const-string v3, "__communityId"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVActivity;->getIntParam(Ljava/lang/String;)I

    .line 39
    move-result v3

    .line 40
    .line 41
    if-lez v3, :cond_1

    .line 42
    .line 43
    const-string v3, "preview"

    .line 44
    const/4 v4, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3, v4}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    new-instance v3, Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    const-string v2, "parent"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    const-string v5, "parentClass"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    .line 95
    iget-object v2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->optionMenuContainer:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    sget v2, Lcom/narvii/lib/R$id;->option_menu_container:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 116
    nop

    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->progressSeekBar:Landroid/widget/SeekBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    return-void
.end method

.method public setTotalTime()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->totalTimeText:Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setTime(Landroid/widget/TextView;J)V

    .line 12
    return-void
.end method

.method public synthetic setUIVisibility(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nvplayerview/controller/a;->r(Lcom/narvii/nvplayerview/controller/IVideoController;I)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->mPlayer:Lcom/narvii/nvplayer/INVPlayer;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/INVPlayer;->setPlayWhenReady(Z)V

    .line 7
    return-void
.end method
