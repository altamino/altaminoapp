.class Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Float;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    cmpl-float p1, p1, v1

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    .line 30
    .line 31
    iput v0, p1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/FastScroller;->s(I)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Landroidx/recyclerview/widget/FastScroller;

    .line 38
    const/4 v0, 0x2

    .line 39
    .line 40
    iput v0, p1, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/FastScroller;->p()V

    .line 44
    :goto_0
    return-void
.end method
