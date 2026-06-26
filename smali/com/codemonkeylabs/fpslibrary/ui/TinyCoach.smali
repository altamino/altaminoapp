.class public Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;
.super Ljava/lang/Object;
.source "TinyCoach.java"


# instance fields
.field private fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

.field private longAnimationDuration:I

.field private meterView:Landroid/view/View;

.field private shortAnimationDuration:I

.field private simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/codemonkeylabs/fpslibrary/FPSConfig;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 27
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->shortAnimationDuration:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->longAnimationDuration:I

    .line 30
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$1;

    invoke-direct {v0, p0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$1;-><init>(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)V

    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 42
    iput-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/codemonkeylabs/fpslibrary/R$layout;->meter_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    .line 48
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->refreshRate:F

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->windowManager:Landroid/view/WindowManager;

    .line 52
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->addViewToWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;)Landroid/view/WindowManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private addViewToWindow(Landroid/view/View;)V
    .locals 7

    .line 57
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/ui/PermissionCompat;->getFlag()I

    move-result v3

    .line 59
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 67
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/FPSConfig;

    iget-boolean v1, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->xOrYSpecified:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 68
    iget v1, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingXPosition:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 69
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingYPosition:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 70
    sget v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->DEFAULT_GRAVITY:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 71
    :cond_0
    iget-boolean v1, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->gravitySpecified:Z

    if-eqz v1, :cond_1

    .line 72
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 73
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 74
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingGravity:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 76
    :cond_1
    sget v1, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->DEFAULT_GRAVITY:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget v1, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingXPosition:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/FPSConfig;->startingYPosition:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 88
    new-instance v1, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;

    iget-object v3, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->windowManager:Landroid/view/WindowManager;

    invoke-direct {v1, v6, v3, v0}, Lcom/codemonkeylabs/fpslibrary/ui/DancerTouchListener;-><init>(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    invoke-virtual {p1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->show()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, v0}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->shortAnimationDuration:I

    int-to-long v1, v1

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;

    invoke-direct {v1, p0, p1}, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach$2;-><init>(Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;Z)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public show()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->longAnimationDuration:I

    int-to-long v1, v1

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public showData(Lcom/codemonkeylabs/fpslibrary/FPSConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemonkeylabs/fpslibrary/FPSConfig;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {p1, p2}, Lcom/codemonkeylabs/fpslibrary/Calculation;->getDroppedSet(Lcom/codemonkeylabs/fpslibrary/FPSConfig;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-static {p1, p2, v0}, Lcom/codemonkeylabs/fpslibrary/Calculation;->calculateMetric(Lcom/codemonkeylabs/fpslibrary/FPSConfig;Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->BAD:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    if-ne p2, v0, :cond_0

    .line 103
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    sget v0, Lcom/codemonkeylabs/fpslibrary/R$drawable;->fpsmeterring_bad:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;->MEDIUM:Lcom/codemonkeylabs/fpslibrary/Calculation$Metric;

    if-ne p2, v0, :cond_1

    .line 105
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    sget v0, Lcom/codemonkeylabs/fpslibrary/R$drawable;->fpsmeterring_medium:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    sget v0, Lcom/codemonkeylabs/fpslibrary/R$drawable;->fpsmeterring_good:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    :goto_0
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/TinyCoach;->meterView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
