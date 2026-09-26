.class Lcom/narvii/widget/SwipeableLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/widget/SwipeableLayout;->c(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/widget/SwipeableLayout;->c(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/narvii/widget/SwipeableLayout;->a(Lcom/narvii/widget/SwipeableLayout;)I

    .line 35
    move-result v1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/narvii/widget/SwipeableLayout;->a(Lcom/narvii/widget/SwipeableLayout;)I

    .line 41
    move-result v2

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/widget/SwipeableLayout$7;->this$0:Lcom/narvii/widget/SwipeableLayout;

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lcom/narvii/widget/SwipeableLayout;->b(Lcom/narvii/widget/SwipeableLayout;)I

    .line 47
    move-result v3

    .line 48
    float-to-int p1, p1

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutMoved(IIII)V

    .line 52
    :cond_0
    return-void
.end method
