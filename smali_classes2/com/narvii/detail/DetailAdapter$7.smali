.class Lcom/narvii/detail/DetailAdapter$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/DetailAdapter;
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
.field final synthetic this$0:Lcom/narvii/detail/DetailAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/detail/DetailAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

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

    .line 1491
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter;->access$502(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 1492
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {p1, p4}, Lcom/narvii/detail/DetailAdapter;->access$602(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1493
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1470
    check-cast p2, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;)V
    .locals 2

    .line 1473
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/detail/DetailAdapter;->access$502(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 1474
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {p1, v0}, Lcom/narvii/detail/DetailAdapter;->access$602(Lcom/narvii/detail/DetailAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 1475
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {p1, p2}, Lcom/narvii/detail/DetailAdapter;->access$702(Lcom/narvii/detail/DetailAdapter;Lcom/narvii/tipping/model/TipLogListResponse;)Lcom/narvii/tipping/model/TipLogListResponse;

    .line 1478
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 1479
    instance-of v0, p1, Lcom/narvii/model/Tippable;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-static {v0}, Lcom/narvii/detail/DetailAdapter;->access$800(Lcom/narvii/detail/DetailAdapter;)Lcom/narvii/tipping/TippingHelper;

    move-result-object v0

    check-cast p1, Lcom/narvii/model/Tippable;

    invoke-virtual {v0, p1}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result p1

    .line 1481
    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->keepBlockedUser(Z)Lcom/narvii/util/FilterHelper;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tippedUserList:Ljava/util/List;

    .line 1484
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter$7;->this$0:Lcom/narvii/detail/DetailAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
