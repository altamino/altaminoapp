.class Lcom/narvii/util/http/SequenceRequestHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SequenceRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/http/SequenceRequestHelper;
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
.field final synthetic this$0:Lcom/narvii/util/http/SequenceRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/SequenceRequestHelper;Ljava/lang/Class;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 8
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

    .line 88
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$000(Lcom/narvii/util/http/SequenceRequestHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$300(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiResponseListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$000(Lcom/narvii/util/http/SequenceRequestHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$108(Lcom/narvii/util/http/SequenceRequestHelper;)I

    .line 77
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$100(Lcom/narvii/util/http/SequenceRequestHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v1}, Lcom/narvii/util/http/SequenceRequestHelper;->access$200(Lcom/narvii/util/http/SequenceRequestHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$300(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiResponseListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {p1}, Lcom/narvii/util/http/SequenceRequestHelper;->access$400(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {p2}, Lcom/narvii/util/http/SequenceRequestHelper;->access$200(Lcom/narvii/util/http/SequenceRequestHelper;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->access$100(Lcom/narvii/util/http/SequenceRequestHelper;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {p1, p2, p0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_0
    return-void
.end method
