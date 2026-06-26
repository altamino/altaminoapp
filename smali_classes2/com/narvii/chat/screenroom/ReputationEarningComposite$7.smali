.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 302
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 303
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 304
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v1

    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 305
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 306
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 296
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$2600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f0ee2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$3100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
