.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x3

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->n(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ValueAnimator;

    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x2

    .line 34
    .line 35
    new-array v0, v0, [F

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->l(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    aput v1, v0, v2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->l(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    .line 50
    move-result v1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    .line 56
    move-result v2

    .line 57
    add-float/2addr v1, v2

    .line 58
    const/4 v2, 0x1

    .line 59
    .line 60
    aput v1, v0, v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->n(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ValueAnimator;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    return-void

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->o(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->i(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    .line 35
    const v2, 0x7f120ffb

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->q(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    return-void
.end method
