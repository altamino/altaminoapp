.class Lcom/narvii/util/http/BatchRequestHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BatchRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/BatchRequestHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/http/BatchRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/Class;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

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

    .line 100
    iget-object p2, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p2}, Lcom/narvii/util/http/BatchRequestHelper;->access$308(Lcom/narvii/util/http/BatchRequestHelper;)I

    .line 101
    iget-object p2, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p2}, Lcom/narvii/util/http/BatchRequestHelper;->access$400(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p2, p1}, Lcom/narvii/util/http/BatchRequestHelper;->access$402(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 103
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1, p4}, Lcom/narvii/util/http/BatchRequestHelper;->access$502(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1, p5}, Lcom/narvii/util/http/BatchRequestHelper;->access$602(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)Lcom/narvii/model/api/ApiResponse;

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->access$308(Lcom/narvii/util/http/BatchRequestHelper;)I

    .line 107
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->access$200(Lcom/narvii/util/http/BatchRequestHelper;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->access$008(Lcom/narvii/util/http/BatchRequestHelper;)I

    .line 90
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->access$100(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1, p2}, Lcom/narvii/util/http/BatchRequestHelper;->access$102(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)Lcom/narvii/model/api/ApiResponse;

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->access$200(Lcom/narvii/util/http/BatchRequestHelper;)V

    return-void
.end method
