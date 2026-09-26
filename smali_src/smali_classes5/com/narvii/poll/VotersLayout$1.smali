.class Lcom/narvii/poll/VotersLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

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
    iput p1, v0, Lcom/narvii/poll/VotersLayout;->p:F

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    .line 17
    .line 18
    iget v0, p1, Lcom/narvii/poll/VotersLayout;->p:F

    .line 19
    .line 20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    cmpl-float v2, v0, v1

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    sub-float/2addr v0, v1

    .line 26
    div-float/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/poll/VotersLayout$1;->this$0:Lcom/narvii/poll/VotersLayout;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 37
    return-void
.end method
