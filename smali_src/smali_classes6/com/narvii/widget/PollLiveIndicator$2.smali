.class Lcom/narvii/widget/PollLiveIndicator$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/PollLiveIndicator$2;->val$index:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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

    .line 1
    .line 2
    iget p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->val$index:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    :cond_0
    move p1, v0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->b(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 23
    move-result p1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->f(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 33
    move-result v1

    .line 34
    :goto_0
    sub-int/2addr p1, v1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->c(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 45
    move-result p1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->f(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 55
    move-result v1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->d(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/narvii/widget/PollLiveIndicator;->f(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 72
    move-result-object v1

    .line 73
    int-to-float p1, p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->d(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->e(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/widget/PollLiveIndicator$2;->this$0:Lcom/narvii/widget/PollLiveIndicator;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/narvii/widget/PollLiveIndicator;->e(Lcom/narvii/widget/PollLiveIndicator;)Landroid/view/View;

    .line 100
    move-result-object p1

    .line 101
    const/4 v0, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 105
    return-void
.end method
