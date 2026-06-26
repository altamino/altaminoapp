.class Lcom/narvii/widget/PollLiveIndicator$2;
.super Ljava/lang/Object;
.source "PollLiveIndicator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/PollLiveIndicator;->getTotalAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/PollLiveIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/PollLiveIndicator;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    iput p2, p0, Lcom/narvii/widget/PollLiveIndicator$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 144
    iget p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->val$index:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$300(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->access$200(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$100(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->access$200(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    sub-int/2addr p1, v1

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->access$400(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->access$200(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$400(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$500(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->access$500(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
