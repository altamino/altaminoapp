.class public Lcom/narvii/chat/video/overlay/ViewerHintView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/overlay/ViewerHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/narvii/chat/video/overlay/ViewerHintView$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ViewerHintView$1;-><init>(Lcom/narvii/chat/video/overlay/ViewerHintView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5
    new-instance p1, Lcom/narvii/chat/video/overlay/ViewerHintView$2;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/overlay/ViewerHintView$2;-><init>(Lcom/narvii/chat/video/overlay/ViewerHintView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0791

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
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

    const-wide/16 v0, 0x1f4

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 10
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transListener:Landroid/view/animation/Animation$AnimationListener;

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x3e8

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object p2, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaListener:Landroid/view/animation/Animation$AnimationListener;

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/overlay/ViewerHintView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/overlay/ViewerHintView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/overlay/ViewerHintView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/chat/video/overlay/ViewerHintView;Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->startViewerAnimation(Lcom/narvii/chat/signalling/ChannelUser;)V

    return-void
.end method

.method private startViewerAnimation(Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    move-result v2

    .line 20
    .line 21
    const/16 v3, 0x14

    .line 22
    .line 23
    if-le v2, v3, :cond_1

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "..."

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iget p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 53
    const/4 v4, 0x1

    .line 54
    .line 55
    if-ne p1, v4, :cond_2

    .line 56
    .line 57
    .line 58
    const p1, 0x7f120b5f

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_2
    const p1, 0x7f120b4e

    .line 63
    .line 64
    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v0, v4, v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addNewUser(Lcom/narvii/chat/signalling/ChannelUser;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->transAnimationRunning:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->alphaAnimationRunning:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ViewerHintView;->startViewerAnimation(Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->pendingUser:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0fd5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/ViewerHintView;->tvViewerHint:Landroid/widget/TextView;

    .line 15
    return-void
.end method
