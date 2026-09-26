.class Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/PaidOutLogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;->this$1:Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;

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
    iget-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;->this$1:Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;

    .line 3
    .line 4
    iput-object p4, p1, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
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
    check-cast p2, Lcom/narvii/wallet/PaidOutLogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/PaidOutLogResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/PaidOutLogResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter$1;->this$1:Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;

    .line 2
    iget-object p2, p2, Lcom/narvii/wallet/PaidOutLogResponse;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    iput-object p2, p1, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->paidOutLog:Lcom/narvii/wallet/PaidOutLog;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Lcom/narvii/wallet/PaidOutDetailFragment$Adapter;->error:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
