.class Lcom/narvii/widget/CheckMarkView$1;
.super Ljava/lang/Object;
.source "CheckMarkView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CheckMarkView;->showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CheckMarkView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/CheckMarkView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView$1;->this$0:Lcom/narvii/widget/CheckMarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView$1;->this$0:Lcom/narvii/widget/CheckMarkView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/widget/CheckMarkView;->access$002(Lcom/narvii/widget/CheckMarkView;F)F

    .line 185
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView$1;->this$0:Lcom/narvii/widget/CheckMarkView;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
