.class public final Landroidx/compose/material/ripple/RippleHostView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/ripple/RippleHostView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material/ripple/RippleHostView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MinimumRippleStateChangeTime:J = 0x5L

.field private static final PressedState:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ResetRippleDelayDuration:J = 0x32L

.field private static final RestingState:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bounded:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastRippleStateChangeTimeMillis:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onInvalidateRipple:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resetRippleRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ripple:Landroidx/compose/material/ripple/UnprojectedRipple;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/ripple/RippleHostView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleHostView$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->Companion:Landroidx/compose/material/ripple/RippleHostView$Companion;

    const v0, 0x10100a7

    const v1, 0x101009e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->PressedState:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method

.method public static synthetic a(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState$lambda-2(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/compose/material/ripple/UnprojectedRipple;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 11
    return-void
.end method

.method private final setRippleState(Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->lastRippleStateChangeTimeMillis:Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    :goto_0
    sub-long v2, v0, v2

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    const-wide/16 v4, 0x5

    .line 32
    .line 33
    cmp-long v2, v2, v4

    .line 34
    .line 35
    if-gez v2, :cond_2

    .line 36
    .line 37
    new-instance p1, Landroidx/compose/material/ripple/a;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Landroidx/compose/material/ripple/a;-><init>(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 43
    .line 44
    const-wide/16 v2, 0x32

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    if-eqz p1, :cond_3

    .line 51
    .line 52
    sget-object p1, Landroidx/compose/material/ripple/RippleHostView;->PressedState:[I

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_3
    sget-object p1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 56
    .line 57
    :goto_1
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->lastRippleStateChangeTimeMillis:Ljava/lang/Long;

    .line 70
    return-void
.end method

.method private static final setRippleState$lambda-2(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 19
    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLe8/a;)V
    .locals 11
    .param p1    # Landroidx/compose/foundation/interaction/PressInteraction$Press;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            "ZJIJF",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move v8, p2

    .line 3
    .line 4
    move-object/from16 v0, p9

    .line 5
    .line 6
    const-string v1, "interaction"

    .line 7
    move-object v9, p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v1, "onInvalidateRipple"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v1, v7, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v2, v7, Landroidx/compose/material/ripple/RippleHostView;->bounded:Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/material/ripple/RippleHostView;->c(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iput-object v1, v7, Landroidx/compose/material/ripple/RippleHostView;->bounded:Ljava/lang/Boolean;

    .line 41
    .line 42
    :cond_1
    iget-object v10, v7, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 43
    .line 44
    .line 45
    invoke-static {v10}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    iput-object v0, v7, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Le8/a;

    .line 48
    move-object v0, p0

    .line 49
    move-wide v1, p3

    .line 50
    .line 51
    move/from16 v3, p5

    .line 52
    .line 53
    move-wide/from16 v4, p6

    .line 54
    .line 55
    move/from16 v6, p8

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->f(JIJF)V

    .line 59
    .line 60
    if-eqz v8, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->a()J

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 68
    move-result v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->a()J

    .line 72
    move-result-wide v1

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 102
    :goto_0
    const/4 v0, 0x1

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    .line 106
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Le8/a;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    .line 5
    return-void
.end method

.method public final f(JIJF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p3}, Landroidx/compose/material/ripple/UnprojectedRipple;->c(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p4, p5, p6}, Landroidx/compose/material/ripple/UnprojectedRipple;->b(JF)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->c(J)Landroidx/compose/ui/geometry/Rect;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->setLeft(I)V

    .line 25
    .line 26
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/view/View;->setTop(I)V

    .line 30
    .line 31
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/view/View;->setRight(I)V

    .line 35
    .line 36
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroid/view/View;->setBottom(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 43
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "who"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Le8/a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 13
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 5
    return-void
.end method

.method public refreshDrawableState()V
    .locals 0

    return-void
.end method
