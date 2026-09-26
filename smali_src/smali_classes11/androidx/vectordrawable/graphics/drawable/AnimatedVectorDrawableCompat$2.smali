.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->a(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;->this$0:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->b(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
