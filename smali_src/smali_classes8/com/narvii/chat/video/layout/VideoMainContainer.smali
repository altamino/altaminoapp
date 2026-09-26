.class public Lcom/narvii/chat/video/layout/VideoMainContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FLOATING_MODE_RATIO:F = 0.2f


# instance fields
.field private curChannelUid:I

.field private enterFocusAnimation:Landroid/animation/AnimatorSet;

.field focusContainer:Landroid/widget/FrameLayout;

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private screenHeight:I

.field private screenWidth:I

.field videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoMainContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 4
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p2, v0, Landroid/graphics/Point;->x:I

    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenWidth:I

    iget p2, v0, Landroid/graphics/Point;->y:I

    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenHeight:I

    .line 7
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "rtc"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    return-void
.end method

.method private enterFocusMode()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0701c8

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    const v2, 0x7f0701c7

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    move-result v1

    .line 40
    add-int/2addr v0, v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    move-result v1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 55
    const/4 v3, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setFloatingMode(Z)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    iget v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenWidth:I

    .line 69
    int-to-float v3, v3

    .line 70
    .line 71
    .line 72
    const v4, 0x3e4ccccd    # 0.2f

    .line 73
    mul-float/2addr v3, v4

    .line 74
    float-to-int v3, v3

    .line 75
    .line 76
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 77
    .line 78
    iget v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenHeight:I

    .line 79
    int-to-float v3, v3

    .line 80
    mul-float/2addr v3, v4

    .line 81
    float-to-int v3, v3

    .line 82
    .line 83
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 84
    .line 85
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 86
    .line 87
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 88
    .line 89
    .line 90
    const v0, 0x800005

    .line 91
    .line 92
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method private resetFocusId()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 11
    .line 12
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setUnFocusId(I)V

    .line 16
    return-void
.end method

.method private restoreMainLayout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->setFloatingMode(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 17
    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenWidth:I

    .line 29
    .line 30
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->screenHeight:I

    .line 33
    .line 34
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 35
    .line 36
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 37
    .line 38
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 39
    .line 40
    const/16 v1, 0x11

    .line 41
    .line 42
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->resetFocusId()V

    .line 51
    return-void
.end method


# virtual methods
.method public enterBeautyMode()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 21
    .line 22
    iget v1, v1, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->restoreMainLayout()V

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 33
    .line 34
    iget v1, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 35
    .line 36
    iput v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setFocusedId(I)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->stripView(Landroid/view/View;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 57
    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusMode()V

    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->restoreMainLayout()V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a05e1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f83

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setItemClickListener(Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 38
    const/4 v1, 0x2

    .line 39
    .line 40
    new-array v2, v1, [F

    .line 41
    .line 42
    .line 43
    fill-array-data v2, :array_0

    .line 44
    .line 45
    const-string v3, "scaleX"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 52
    .line 53
    new-array v3, v1, [F

    .line 54
    .line 55
    .line 56
    fill-array-data v3, :array_1

    .line 57
    .line 58
    const-string v4, "scaleY"

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 68
    .line 69
    iput-object v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    .line 70
    .line 71
    const-wide/16 v4, 0x12c

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    .line 77
    .line 78
    new-array v1, v1, [Landroid/animation/Animator;

    .line 79
    const/4 v4, 0x0

    .line 80
    .line 81
    aput-object v0, v1, v4

    .line 82
    const/4 v0, 0x1

    .line 83
    .line 84
    aput-object v2, v1, v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    return-void

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public onItemClicked(I)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_5

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_5

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusAnimation:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 19
    .line 20
    if-eq v1, v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->restoreMainLayout()V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_1
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->setFocusedId(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/layout/VideoMainContainer;->stripView(Landroid/view/View;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 49
    .line 50
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->focusContainer:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->videoParticipantLayout:Lcom/narvii/chat/video/layout/VideoParticipantLayout;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->getUserList()Landroid/util/SparseArray;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 72
    move-result v0

    .line 73
    .line 74
    if-ge v1, v0, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/narvii/chat/rtc/RtcService;->getRtcManager()Lcom/narvii/chat/video/RtcChatManager;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    iget v0, v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    iget v4, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->curChannelUid:I

    .line 97
    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v3

    .line 105
    .line 106
    xor-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0, v3}, Lcom/narvii/chat/video/RtcChatManager;->setLowerStreamMode(IZ)V

    .line 110
    .line 111
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_0

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoMainContainer;->enterFocusMode()V

    .line 116
    :cond_5
    :goto_1
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
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->viewWidth:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/chat/video/layout/VideoMainContainer;->viewHeight:I

    .line 8
    return-void
.end method

.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_0
    return-void
.end method
