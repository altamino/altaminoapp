.class Lcom/narvii/monetization/store/TippingConfirmDialog$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TippingConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;->fetchTipperMembers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/tipping/model/TipLogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

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

    .line 642
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1900(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    check-cast p2, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;)V
    .locals 2

    .line 619
    iget-object p1, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/tipping/model/TipLog;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, v1, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    if-eqz v1, :cond_0

    .line 624
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1702(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/util/List;)Ljava/util/List;

    .line 630
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1802(Lcom/narvii/monetization/store/TippingConfirmDialog;I)I

    .line 631
    iget-object p1, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    if-eqz p1, :cond_2

    .line 632
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1800(Lcom/narvii/monetization/store/TippingConfirmDialog;)I

    move-result v0

    iget-object v1, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    iget v1, v1, Lcom/narvii/tipping/model/TipSummary;->tippersCount:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1802(Lcom/narvii/monetization/store/TippingConfirmDialog;I)I

    .line 634
    :cond_2
    iget-object p1, p2, Lcom/narvii/tipping/model/TipLogListResponse;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    if-eqz p1, :cond_3

    .line 635
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1800(Lcom/narvii/monetization/store/TippingConfirmDialog;)I

    move-result v0

    iget-object p2, p2, Lcom/narvii/tipping/model/TipLogListResponse;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    iget p2, p2, Lcom/narvii/tipping/model/TipSummary;->tippersCount:I

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1802(Lcom/narvii/monetization/store/TippingConfirmDialog;I)I

    .line 637
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$6;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1900(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    return-void
.end method
