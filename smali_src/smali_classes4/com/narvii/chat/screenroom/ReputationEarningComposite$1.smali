.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ReputationGetResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->v(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    const/16 p1, 0x65b

    .line 12
    .line 13
    if-ne p2, p1, :cond_3

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 16
    const/4 p2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->L(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Z)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->t(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->k(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->F(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->F(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const/16 p2, 0x8

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    const-wide/16 p3, 0xce4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/ReputationGetResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationGetResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ReputationGetResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 2
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->v(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    iget v0, p2, Lcom/narvii/model/api/ReputationGetResponse;->userReputation:F

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->I(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 4
    iget v0, p2, Lcom/narvii/model/api/ReputationGetResponse;->maxReputation:F

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->J(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V

    .line 5
    iget p1, p2, Lcom/narvii/model/api/ReputationGetResponse;->availableReputation:F

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 6
    new-instance p1, Ljava/math/BigDecimal;

    iget v0, p2, Lcom/narvii/model/api/ReputationGetResponse;->availableReputation:F

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 7
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->y(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " REP"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 8
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->A(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 9
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->z(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 10
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->K(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 11
    iget p2, p2, Lcom/narvii/model/api/ReputationGetResponse;->availableReputation:F

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->G(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 12
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->k(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 13
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xce4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
