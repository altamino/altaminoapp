.class Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const/high16 v0, 0x7e000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->a(Landroid/view/View;)V

    .line 20
    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 3
    .line 4
    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 14
    .line 15
    iput v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iput-object v1, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    :cond_1
    const/high16 v0, 0x7e000000

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    instance-of v2, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    move-object v1, v0

    .line 38
    .line 39
    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 40
    .line 41
    :cond_2
    if-eqz v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->b(Landroid/view/View;)V

    .line 45
    :cond_3
    const/4 p1, 0x1

    .line 46
    .line 47
    iput-boolean p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 48
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 6
    .line 7
    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    const/4 v0, 0x2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iput-object v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    :cond_1
    const/high16 v0, 0x7e000000

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    instance-of v1, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    move-object v2, v0

    .line 38
    .line 39
    check-cast v2, Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 40
    .line 41
    :cond_2
    if-eqz v2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->c(Landroid/view/View;)V

    .line 45
    :cond_3
    return-void
.end method
