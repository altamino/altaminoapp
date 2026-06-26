.class Lcom/narvii/widget/SwipeableLayout$7;
.super Ljava/lang/Object;
.source "SwipeableLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/SwipeableLayout;->appearAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/SwipeableLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SwipeableLayout;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 360
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 361
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 362
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-static {v0}, Lcom/narvii/widget/SwipeableLayout;->access$000(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-static {v0}, Lcom/narvii/widget/SwipeableLayout;->access$000(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-static {v1}, Lcom/narvii/widget/SwipeableLayout;->access$100(Lcom/narvii/widget/SwipeableLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-static {v2}, Lcom/narvii/widget/SwipeableLayout;->access$100(Lcom/narvii/widget/SwipeableLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-static {v3}, Lcom/narvii/widget/SwipeableLayout;->access$200(Lcom/narvii/widget/SwipeableLayout;)I

    move-result v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutMoved(IIII)V

    :cond_0
    return-void
.end method
