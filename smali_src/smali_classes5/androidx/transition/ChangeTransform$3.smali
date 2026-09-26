.class Landroidx/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeTransform;->j0(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroidx/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroidx/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    .line 3
    .line 4
    iput-boolean p2, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 16
    .line 17
    new-instance p1, Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 23
    return-void
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 8
    .line 9
    sget v0, Landroidx/transition/R$id;->transition_transform:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/transition/ChangeTransform$Transforms;->a(Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    .line 12
    .line 13
    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform$3;->a(Landroid/graphics/Matrix;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 24
    .line 25
    sget v1, Landroidx/transition/R$id;->transition_transform:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 31
    .line 32
    sget v1, Landroidx/transition/R$id;->parent_matrix:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->f(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/transition/ChangeTransform$Transforms;->a(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->a()Landroid/graphics/Matrix;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform$3;->a(Landroid/graphics/Matrix;)V

    .line 10
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/transition/ChangeTransform;->l0(Landroid/view/View;)V

    .line 6
    return-void
.end method
