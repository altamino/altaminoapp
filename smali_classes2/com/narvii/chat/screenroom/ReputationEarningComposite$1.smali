.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ReputationEarningComposite.java"


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

    .line 63
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 87
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x65b

    if-ne p2, p1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1302(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Z)Z

    .line 92
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    move-result p1

    if-nez p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 p3, 0xce4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    .line 63
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

    .line 66
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    iget v0, p2, Lcom/narvii/model/api/ReputationGetResponse;->userReputation:F

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$302(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F

    .line 71
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    iget v0, p2, Lcom/narvii/model/api/ReputationGetResponse;->maxReputation:F

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$402(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F

    .line 72
    iget p1, p2, Lcom/narvii/model/api/ReputationGetResponse;->availableReputation:F

    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 73
    new-instance p1, Ljava/math/BigDecimal;

    iget v0, p2, Lcom/narvii/model/api/ReputationGetResponse;->availableReputation:F

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 74
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

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

    .line 75
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$700(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 76
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 77
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$902(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    iget p2, p2, Lcom/narvii/model/api/ReputationGetResponse;->availableReputation:F

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$502(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xce4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
