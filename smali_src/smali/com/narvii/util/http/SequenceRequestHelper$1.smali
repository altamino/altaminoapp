.class Lcom/narvii/util/http/SequenceRequestHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->e(Lcom/narvii/util/http/SequenceRequestHelper;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->c(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    move-result-object v1

    .line 16
    move-object v2, p1

    .line 17
    move v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p4

    .line 20
    move-object v6, p5

    .line 21
    move-object v7, p6

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->e(Lcom/narvii/util/http/SequenceRequestHelper;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->b(Lcom/narvii/util/http/SequenceRequestHelper;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/http/SequenceRequestHelper;->f(Lcom/narvii/util/http/SequenceRequestHelper;I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->b(Lcom/narvii/util/http/SequenceRequestHelper;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/util/http/SequenceRequestHelper;->d(Lcom/narvii/util/http/SequenceRequestHelper;)Ljava/util/ArrayList;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->c(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiResponseListener;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/util/http/SequenceRequestHelper;->a(Lcom/narvii/util/http/SequenceRequestHelper;)Lcom/narvii/util/http/ApiService;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lcom/narvii/util/http/SequenceRequestHelper;->d(Lcom/narvii/util/http/SequenceRequestHelper;)Ljava/util/ArrayList;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/util/http/SequenceRequestHelper$1;->this$0:Lcom/narvii/util/http/SequenceRequestHelper;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/util/http/SequenceRequestHelper;->b(Lcom/narvii/util/http/SequenceRequestHelper;)I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    check-cast p2, Lcom/narvii/util/http/ApiRequest;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2, p0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    :goto_0
    return-void
.end method
