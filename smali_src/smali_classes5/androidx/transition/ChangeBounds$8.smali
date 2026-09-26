.class Landroidx/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->o(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$endBottom:I

.field final synthetic val$endLeft:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$finalClip:Landroid/graphics/Rect;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/transition/ChangeBounds$8;->this$0:Landroidx/transition/ChangeBounds;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput p4, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    .line 9
    .line 10
    iput p5, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    .line 11
    .line 12
    iput p6, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    .line 13
    .line 14
    iput p7, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$8;->mIsCanceled:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/transition/ChangeBounds$8;->val$finalClip:Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->B0(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/transition/ChangeBounds$8;->val$view:Landroid/view/View;

    .line 14
    .line 15
    iget v0, p0, Landroidx/transition/ChangeBounds$8;->val$endLeft:I

    .line 16
    .line 17
    iget v1, p0, Landroidx/transition/ChangeBounds$8;->val$endTop:I

    .line 18
    .line 19
    iget v2, p0, Landroidx/transition/ChangeBounds$8;->val$endRight:I

    .line 20
    .line 21
    iget v3, p0, Landroidx/transition/ChangeBounds$8;->val$endBottom:I

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/transition/ViewUtils;->g(Landroid/view/View;IIII)V

    .line 25
    :cond_0
    return-void
.end method
