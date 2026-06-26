.class Lcom/narvii/post/entry/PostEntrySnakeLayout$2;
.super Ljava/lang/Object;
.source "PostEntrySnakeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntrySnakeLayout;

.field final synthetic val$pm:Landroid/graphics/PathMeasure;

.field final synthetic val$pos:[F

.field final synthetic val$tan:[F

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntrySnakeLayout;Landroid/graphics/PathMeasure;[F[FLandroid/view/View;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->this$0:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    iput-object p2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pm:Landroid/graphics/PathMeasure;

    iput-object p3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    iput-object p4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$tan:[F

    iput-object p5, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pm:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    iget-object v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$tan:[F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 202
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 203
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method
