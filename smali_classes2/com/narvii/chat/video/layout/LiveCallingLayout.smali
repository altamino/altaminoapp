.class public Lcom/narvii/chat/video/layout/LiveCallingLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "LiveCallingLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;,
        Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;
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

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->curStatus:I

    .line 326
    new-instance v0, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$4;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    .line 87
    sget-object v0, Lcom/narvii/amino/R$styleable;->LiveCallingLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callType:I

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callType:I

    if-nez p2, :cond_1

    .line 93
    iget-boolean p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0b0054

    goto :goto_0

    :cond_0
    const p2, 0x7f0b06e1

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1171

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callText:Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-ne p2, v1, :cond_3

    .line 96
    iget-boolean p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz p2, :cond_2

    const p2, 0x7f0b06d0

    goto :goto_1

    :cond_2
    const p2, 0x7f0b06cf

    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f101e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callText:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const p2, 0x7f0b0053

    .line 99
    :goto_2
    invoke-static {p1, p2, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    new-instance p2, Lcom/narvii/chat/video/view/VoiceCallHelper;

    invoke-direct {p2, p1}, Lcom/narvii/chat/video/view/VoiceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->voiceLayoutHelper:Lcom/narvii/chat/video/view/VoiceCallHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/widget/BlurImageView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->blurBgView:Lcom/narvii/widget/BlurImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Lcom/narvii/chat/video/VVChatMembershipNameLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->starAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/layout/LiveCallingLayout;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    return-object p0
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

    .line 301
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

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 237
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 239
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startCallingAnimation(Landroid/view/View;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 285
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    .line 286
    iget-object v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 287
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 288
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$3;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
    .end array-data
.end method

.method private updateHintInfo(Ljava/lang/String;)V
    .locals 2

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 311
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->hintInfoAutoDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public disableCancelButton()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public enterConversation()V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callType:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 189
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float v2, v2, v3

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, -0x4046666666666666L    # -0.1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    const v4, 0x3e051eb8    # 0.13f

    mul-float v4, v4, v0

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v0, v0, v5

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v1, v1, v4

    div-float/2addr v2, v1

    .line 196
    iget-object v1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 197
    new-instance v4, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;

    invoke-direct {v4, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$2;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 228
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v3

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 182
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;->onAnimationFinished()V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 244
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090196

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->cancelClickListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;->onCancelClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 249
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f090c10

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 107
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    const v0, 0x7f0906f9

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 109
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setForceHideBadge(Z)V

    :cond_0
    const v0, 0x7f090a97

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    const v0, 0x7f09018e

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    const v0, 0x7f090693

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->loadingView:Landroid/view/View;

    const v0, 0x7f09018d

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/BlurImageView;

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->blurBgView:Lcom/narvii/widget/BlurImageView;

    const v0, 0x7f090196

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->btnCallCancel:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->blurBgView:Lcom/narvii/widget/BlurImageView;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v0

    new-instance v2, Lcom/narvii/chat/video/layout/LiveCallingLayout$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/video/layout/LiveCallingLayout$1;-><init>(Lcom/narvii/chat/video/layout/LiveCallingLayout;)V

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x41200000    # 10.0f

    goto :goto_0

    :cond_3
    const/high16 v2, 0x41400000    # 12.0f

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/github/mmin18/widget/FlexLayout;->onMeasure(II)V

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewWidth:I

    .line 159
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewHeight:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 151
    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewWidth:I

    .line 152
    iput p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->viewHeight:I

    return-void
.end method

.method public setCallCancelClickListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->cancelClickListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$CallCancelClickListener;

    return-void
.end method

.method public setEnterConversationAnimationListener(Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->enterConversationAnimationListener:Lcom/narvii/chat/video/layout/LiveCallingLayout$EnterConversationAnimationListener;

    return-void
.end method

.method public updateStatus(I)V
    .locals 5

    .line 253
    iget v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->curStatus:I

    if-ne v0, p1, :cond_0

    return-void

    .line 256
    :cond_0
    iput p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->curStatus:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v0, :cond_7

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 264
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 266
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f1122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 270
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne p1, v3, :cond_8

    .line 274
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->isFloatingMode:Z

    if-eqz v0, :cond_8

    .line 275
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0f01e5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 258
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->callText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvHintInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateHintInfo(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->startCallingAnimation(Landroid/view/View;)V

    .line 278
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->tvStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->showStatusView(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateViews(Lcom/narvii/model/User;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->targetUser:Lcom/narvii/model/User;

    .line 171
    invoke-virtual {p0, p2}, Lcom/narvii/chat/video/layout/LiveCallingLayout;->updateStatus(I)V

    .line 172
    iget-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p2, :cond_1

    .line 173
    invoke-virtual {p2, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 175
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/video/layout/LiveCallingLayout;->membershipNameLayout:Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setUser(Lcom/narvii/model/User;)V

    return-void
.end method
