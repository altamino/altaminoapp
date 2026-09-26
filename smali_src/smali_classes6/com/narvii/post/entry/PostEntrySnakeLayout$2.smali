.class Lcom/narvii/post/entry/PostEntrySnakeLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->this$0:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pm:Landroid/graphics/PathMeasure;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$tan:[F

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$v:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pm:Landroid/graphics/PathMeasure;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$tan:[F

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$v:Landroid/view/View;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    aget v0, v0, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 30
    move-result v1

    .line 31
    .line 32
    div-int/lit8 v1, v1, 0x2

    .line 33
    int-to-float v1, v1

    .line 34
    sub-float/2addr v0, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$v:Landroid/view/View;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;->val$pos:[F

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    aget v0, v0, v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v1

    .line 49
    .line 50
    div-int/lit8 v1, v1, 0x2

    .line 51
    int-to-float v1, v1

    .line 52
    sub-float/2addr v0, v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 56
    return-void
.end method
