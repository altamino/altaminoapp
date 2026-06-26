.class public Lcom/narvii/chat/video/overlay/ViewerHintView;
.super Landroid/widget/LinearLayout;
.source "ViewerHintView.java"


# static fields
.field private static final ALPHA_DURATION:I = 0x3e8

.field private static final NICKNAME_LIMIT:I = 0x14


# instance fields
.field alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private alphaAnimationRunning:Z

.field alphaListener:Landroid/view/animation/Animation$AnimationListener;

.field private pendingUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field

.field private transAnimationRunning:Z

.field transListener:Landroid/view/animation/Animation$AnimationListener;

.field translateAnimation:Landroid/view/animation/TranslateAnimation;

.field private tvViewerHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    .line 58
    new-instance p1, Lcom/narvii/chat/video/overlay/ViewerHintView$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ViewerHintView$1;-><init>(Lcom/narvii/chat/video/overlay/ViewerHintView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transListener:Landroid/view/animation/Animation$AnimationListener;

    .line 75
    new-instance p1, Lcom/narvii/chat/video/overlay/ViewerHintView$2;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ViewerHintView$2;-><init>(Lcom/narvii/chat/video/overlay/ViewerHintView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b06dd

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 49
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 53
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 54
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transAnimationRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/overlay/ViewerHintView;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/overlay/ViewerHintView;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/overlay/ViewerHintView;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->startViewerAnimation(Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method private startViewerAnimation(Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 117
    iget-object v0, p1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    const p1, 0x7f0f0aad

    goto :goto_0

    :cond_2
    const p1, 0x7f0f0a9c

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addNewUser(Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->startViewerAnimation(Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void

    .line 108
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090caa

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    return-void
.end method
