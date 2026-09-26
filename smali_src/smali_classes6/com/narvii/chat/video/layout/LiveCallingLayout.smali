.class public Lcom/narvii/chat/video/layout/LiveCallingLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;,
        Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final CALL_TYPE_AVATAR:I = 0x2

.field private static final CALL_TYPE_VIDEO:I = 0x1

.field private static final CALL_TYPE_VOICE:I = 0x0

.field private static final STATUS_UPDATE_INTERVAL:I = 0x1f4


# instance fields
.field private avatar:Lcom/narvii/widget/UserAvatarLayout;

.field private blurBgView:Lcom/narvii/widget/BlurImageView;

.field private btnCallCancel:Landroid/view/View;

.field private callText:Ljava/lang/String;

.field private callType:I

.field private callingAnimation:Landroid/animation/ValueAnimator;

.field cancelClickListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;

.field private curStatus:I

.field enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

.field private hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

.field private isFloatingMode:Z

.field private loadingView:Landroid/view/View;

.field private membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

.field private statusUpdateCount:I

.field private targetUser:Lcom/narvii/model/User;

.field private tvHintInfo:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private viewHeight:I

.field private viewWidth:I

.field private voiceLayoutHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->curStatus:I

    .line 3
    new-instance v0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 4
    sget-object v0, Lcom/narvii/amino/R$styleable;->LiveCallingLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callType:I

    .line 7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callType:I

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0d006a

    goto :goto_0

    :cond_0
    const p2, 0x7f0d0794

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121278

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callText:Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_3

    iget-boolean p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz p2, :cond_2

    const p2, 0x7f0d0785

    goto :goto_1

    :cond_2
    const p2, 0x7f0d0784

    .line 9
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callText:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const p2, 0x7f0d0069

    .line 10
    :goto_2
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->voiceLayoutHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->blurBgView:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/chat/video/VVChatMembershipNameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->starAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method private showStatusView(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private starAlphaAnimation(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    const-string v1, "alpha"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-wide/16 v0, 0x190

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 21
    return-void

    .line 22
    nop

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
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startCallingAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    .line 16
    filled-new-array {v0, v1}, [I

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 30
    const/4 v1, -0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    const-wide/16 v1, 0x4b0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    return-void
.end method

.method private updateHintInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 52
    .line 53
    const-wide/16 v0, 0x1388

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public disableCancelButton()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    return-void
.end method

.method public enterConversation()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->loadingView:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callType:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 24
    move-result v0

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
    const v2, 0x7f0700bb

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    move-result v1

    .line 40
    int-to-float v0, v0

    .line 41
    .line 42
    const/high16 v2, 0x40000000    # 2.0f

    .line 43
    .line 44
    div-float v2, v0, v2

    .line 45
    .line 46
    .line 47
    const v3, 0x3ee66666    # 0.45f

    .line 48
    mul-float/2addr v2, v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v3

    .line 53
    int-to-double v3, v3

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v5, -0x4046666666666666L    # -0.1

    .line 59
    mul-double/2addr v3, v5

    .line 60
    double-to-int v3, v3

    .line 61
    .line 62
    .line 63
    const v4, 0x3e051eb8    # 0.13f

    .line 64
    mul-float/2addr v4, v0

    .line 65
    .line 66
    const/high16 v5, 0x3e800000    # 0.25f

    .line 67
    mul-float/2addr v0, v5

    .line 68
    sub-float/2addr v0, v4

    .line 69
    float-to-int v0, v0

    .line 70
    int-to-float v1, v1

    .line 71
    .line 72
    const/high16 v4, 0x3f800000    # 1.0f

    .line 73
    mul-float/2addr v1, v4

    .line 74
    div-float/2addr v2, v1

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    new-instance v4, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;

    .line 83
    .line 84
    .line 85
    invoke-direct {v4, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 96
    move-result-object v1

    .line 97
    int-to-float v2, v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 101
    move-result-object v1

    .line 102
    int-to-float v0, v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-wide/16 v1, 0x190

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 116
    return-void

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;->onAnimationFinished()V

    .line 127
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a024a

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->cancelClickListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;->onCancelClicked()V

    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a095b

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setForceHideBadge(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const v0, 0x7f0a0d90

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0242

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    .line 60
    .line 61
    .line 62
    const v0, 0x7f0a081d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->loadingView:Landroid/view/View;

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a0241

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/widget/BlurImageView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->blurBgView:Lcom/narvii/widget/BlurImageView;

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a024a

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->blurBgView:Lcom/narvii/widget/BlurImageView;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    new-instance v1, Lcom/narvii/chat/video/layout/LiveCallingLayout$1;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$1;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 119
    .line 120
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    .line 123
    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    const/high16 v1, 0x41200000    # 10.0f

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_3
    const/high16 v1, 0x41400000    # 12.0f

    .line 130
    .line 131
    .line 132
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewWidth:I

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    move-result p1

    .line 14
    .line 15
    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewHeight:I

    .line 16
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewWidth:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewHeight:I

    .line 8
    return-void
.end method

.method public setCallCancelClickListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->cancelClickListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;

    return-void
.end method

.method public setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    return-void
.end method

.method public updateStatus(I)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->curStatus:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->curStatus:I

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-eq p1, v0, :cond_7

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    :cond_2
    const/4 v0, 0x4

    .line 27
    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    const v2, 0x7f12122d

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 v0, 0x3

    .line 45
    .line 46
    if-ne p1, v0, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    const v2, 0x7f1201d2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    const/4 v0, 0x7

    .line 63
    .line 64
    if-ne p1, v0, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    const v2, 0x7f1201d3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_5
    const/16 v0, 0xa

    .line 82
    .line 83
    if-ne p1, v0, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    const v2, 0x7f1201d6

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_6
    if-ne p1, v3, :cond_8

    .line 101
    .line 102
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    const v4, 0x7f120234

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 129
    .line 130
    iget-object v4, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callText:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->startCallingAnimation(Landroid/view/View;)V

    .line 147
    .line 148
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->showStatusView(I)Z

    .line 152
    move-result p1

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    goto :goto_2

    .line 156
    :cond_9
    move v1, v3

    .line 157
    .line 158
    .line 159
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public updateViews(Lcom/narvii/model/User;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->targetUser:Lcom/narvii/model/User;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 16
    .line 17
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setUser(Lcom/narvii/model/User;)V

    .line 21
    return-void
.end method
