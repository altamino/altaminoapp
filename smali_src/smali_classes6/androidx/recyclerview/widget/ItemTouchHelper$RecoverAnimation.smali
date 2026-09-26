.class Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field final mValueAnimator:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 9
    .line 10
    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 11
    .line 12
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 15
    .line 16
    iput p4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 17
    .line 18
    iput p5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 19
    .line 20
    iput p6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 21
    .line 22
    iput p7, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 23
    const/4 p2, 0x2

    .line 24
    .line 25
    new-array p2, p2, [F

    .line 26
    .line 27
    .line 28
    fill-array-data p2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    const/4 p1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->c(F)V

    .line 55
    return-void

    .line 56
    nop

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    return-void
.end method

.method public c(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 3
    .line 4
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 5
    .line 6
    cmpl-float v2, v0, v1

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 16
    move-result v0

    .line 17
    .line 18
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 22
    sub-float/2addr v1, v0

    .line 23
    mul-float/2addr v2, v1

    .line 24
    add-float/2addr v0, v2

    .line 25
    .line 26
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 27
    .line 28
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 29
    .line 30
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 31
    .line 32
    cmpl-float v2, v0, v1

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 42
    move-result v0

    .line 43
    .line 44
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 48
    sub-float/2addr v1, v0

    .line 49
    mul-float/2addr v2, v1

    .line 50
    add-float/2addr v0, v2

    .line 51
    .line 52
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 53
    :goto_1
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->c(F)V

    .line 6
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 11
    .line 12
    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 13
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
