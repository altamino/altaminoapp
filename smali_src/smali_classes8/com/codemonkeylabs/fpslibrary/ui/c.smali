.class public Lcom/codemonkeylabs/fpslibrary/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

.field private longAnimationDuration:I

.field private meterView:Landroid/view/View;

.field private shortAnimationDuration:I

.field private simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/codemonkeylabs/fpslibrary/b;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0xc8

    .line 6
    .line 7
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->shortAnimationDuration:I

    .line 8
    .line 9
    const/16 v0, 0x2bc

    .line 10
    .line 11
    iput v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->longAnimationDuration:I

    .line 12
    .line 13
    new-instance v0, Lcom/codemonkeylabs/fpslibrary/ui/c$a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/codemonkeylabs/fpslibrary/ui/c$a;-><init>(Lcom/codemonkeylabs/fpslibrary/ui/c;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    sget p2, Lcom/codemonkeylabs/fpslibrary/g;->meter_view:I

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 34
    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 43
    .line 44
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/b;->refreshRate:F

    .line 45
    float-to-int v0, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, ""

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    const-string/jumbo p2, "window"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Landroid/view/WindowManager;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->windowManager:Landroid/view/WindowManager;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/codemonkeylabs/fpslibrary/ui/c;->c(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/codemonkeylabs/fpslibrary/ui/c;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/codemonkeylabs/fpslibrary/ui/c;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->windowManager:Landroid/view/WindowManager;

    .line 3
    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/codemonkeylabs/fpslibrary/ui/b;->a()I

    .line 4
    move-result v3

    .line 5
    .line 6
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 7
    const/4 v1, -0x2

    .line 8
    const/4 v2, -0x2

    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    const/4 v5, -0x3

    .line 12
    move-object v0, v6

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->fpsConfig:Lcom/codemonkeylabs/fpslibrary/b;

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/codemonkeylabs/fpslibrary/b;->xOrYSpecified:Z

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget v1, v0, Lcom/codemonkeylabs/fpslibrary/b;->startingXPosition:I

    .line 25
    .line 26
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 27
    .line 28
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/b;->startingYPosition:I

    .line 29
    .line 30
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 31
    .line 32
    sget v0, Lcom/codemonkeylabs/fpslibrary/b;->DEFAULT_GRAVITY:I

    .line 33
    .line 34
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-boolean v1, v0, Lcom/codemonkeylabs/fpslibrary/b;->gravitySpecified:Z

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 42
    .line 43
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 44
    .line 45
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/b;->startingGravity:I

    .line 46
    .line 47
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    sget v1, Lcom/codemonkeylabs/fpslibrary/b;->DEFAULT_GRAVITY:I

    .line 51
    .line 52
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    .line 54
    iget v1, v0, Lcom/codemonkeylabs/fpslibrary/b;->startingXPosition:I

    .line 55
    .line 56
    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 57
    .line 58
    iget v0, v0, Lcom/codemonkeylabs/fpslibrary/b;->startingYPosition:I

    .line 59
    .line 60
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    .line 62
    :goto_0
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->windowManager:Landroid/view/WindowManager;

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    new-instance v0, Landroid/view/GestureDetector;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    iget-object v3, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 77
    .line 78
    new-instance v1, Lcom/codemonkeylabs/fpslibrary/ui/a;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->windowManager:Landroid/view/WindowManager;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v6, v3, v0}, Lcom/codemonkeylabs/fpslibrary/ui/a;-><init>(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/GestureDetector;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->f()V

    .line 93
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/codemonkeylabs/fpslibrary/ui/c;->e(Z)V

    .line 11
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->shortAnimationDuration:I

    .line 14
    int-to-long v1, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Lcom/codemonkeylabs/fpslibrary/ui/c$b;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lcom/codemonkeylabs/fpslibrary/ui/c$b;-><init>(Lcom/codemonkeylabs/fpslibrary/ui/c;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 27
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget v1, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->longAnimationDuration:I

    .line 27
    int-to-long v1, v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 36
    return-void
.end method

.method public g(Lcom/codemonkeylabs/fpslibrary/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemonkeylabs/fpslibrary/b;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/codemonkeylabs/fpslibrary/a;->c(Lcom/codemonkeylabs/fpslibrary/b;Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v0}, Lcom/codemonkeylabs/fpslibrary/a;->a(Lcom/codemonkeylabs/fpslibrary/b;Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleEntry;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/a$a;->BAD:Lcom/codemonkeylabs/fpslibrary/a$a;

    .line 15
    .line 16
    if-ne p2, v0, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 19
    .line 20
    sget v0, Lcom/codemonkeylabs/fpslibrary/f;->fpsmeterring_bad:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    sget-object v0, Lcom/codemonkeylabs/fpslibrary/a$a;->MEDIUM:Lcom/codemonkeylabs/fpslibrary/a$a;

    .line 31
    .line 32
    if-ne p2, v0, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 35
    .line 36
    sget v0, Lcom/codemonkeylabs/fpslibrary/f;->fpsmeterring_medium:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 43
    .line 44
    sget v0, Lcom/codemonkeylabs/fpslibrary/f;->fpsmeterring_good:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    :goto_0
    iget-object p2, p0, Lcom/codemonkeylabs/fpslibrary/ui/c;->meterView:Landroid/view/View;

    .line 50
    .line 51
    check-cast p2, Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p1, ""

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
