.class public final Lcom/google/android/material/circularreveal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/material/circularreveal/d;FFF)Landroid/animation/Animator;
    .locals 6
    .param p0    # Lcom/google/android/material/circularreveal/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/material/circularreveal/d$c;->CIRCULAR_REVEAL:Landroid/util/Property;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/material/circularreveal/d$b;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    new-array v3, v2, [Lcom/google/android/material/circularreveal/d$e;

    .line 8
    .line 9
    new-instance v4, Lcom/google/android/material/circularreveal/d$e;

    .line 10
    .line 11
    .line 12
    invoke-direct {v4, p1, p2, p3}, Lcom/google/android/material/circularreveal/d$e;-><init>(FFF)V

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lcom/google/android/material/circularreveal/d;->getRevealInfo()Lcom/google/android/material/circularreveal/d$e;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget v1, v1, Lcom/google/android/material/circularreveal/d$e;->radius:F

    .line 28
    .line 29
    check-cast p0, Landroid/view/View;

    .line 30
    float-to-int p1, p1

    .line 31
    float-to-int p2, p2

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 41
    const/4 p2, 0x2

    .line 42
    .line 43
    new-array p2, p2, [Landroid/animation/Animator;

    .line 44
    .line 45
    aput-object v0, p2, v5

    .line 46
    .line 47
    aput-object p0, p2, v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51
    return-object p1

    .line 52
    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public static b(Lcom/google/android/material/circularreveal/d;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0    # Lcom/google/android/material/circularreveal/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/circularreveal/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/material/circularreveal/a$a;-><init>(Lcom/google/android/material/circularreveal/d;)V

    .line 6
    return-object v0
.end method
