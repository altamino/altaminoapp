.class Lcom/narvii/poll/VotersLayout$1;
.super Ljava/lang/Object;
.source "VotersLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/VotersLayout;->setExpand(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/VotersLayout;


# direct methods
.method constructor <init>(Lcom/narvii/poll/VotersLayout;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 66
    iget-object p1, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    iget v0, p1, Lcom/narvii/poll/VotersLayout;->p:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 67
    iget-object p1, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
