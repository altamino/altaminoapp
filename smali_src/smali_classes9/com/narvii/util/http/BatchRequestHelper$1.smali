.class Lcom/narvii/util/http/BatchRequestHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

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
    iget-object p2, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/util/http/BatchRequestHelper;->a(Lcom/narvii/util/http/BatchRequestHelper;)I

    .line 6
    move-result p3

    .line 7
    .line 8
    add-int/lit8 p3, p3, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3}, Lcom/narvii/util/http/BatchRequestHelper;->e(Lcom/narvii/util/http/BatchRequestHelper;I)V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/narvii/util/http/BatchRequestHelper;->b(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/util/http/ApiRequest;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/narvii/util/http/BatchRequestHelper;->g(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/util/http/ApiRequest;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p4}, Lcom/narvii/util/http/BatchRequestHelper;->f(Lcom/narvii/util/http/BatchRequestHelper;Ljava/lang/String;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p5}, Lcom/narvii/util/http/BatchRequestHelper;->h(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->a(Lcom/narvii/util/http/BatchRequestHelper;)I

    .line 40
    move-result p2

    .line 41
    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/narvii/util/http/BatchRequestHelper;->e(Lcom/narvii/util/http/BatchRequestHelper;I)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->k(Lcom/narvii/util/http/BatchRequestHelper;)V

    .line 51
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->c(Lcom/narvii/util/http/BatchRequestHelper;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/util/http/BatchRequestHelper;->i(Lcom/narvii/util/http/BatchRequestHelper;I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->d(Lcom/narvii/util/http/BatchRequestHelper;)Lcom/narvii/model/api/ApiResponse;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/narvii/util/http/BatchRequestHelper;->j(Lcom/narvii/util/http/BatchRequestHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/http/BatchRequestHelper$1;->this$0:Lcom/narvii/util/http/BatchRequestHelper;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/util/http/BatchRequestHelper;->k(Lcom/narvii/util/http/BatchRequestHelper;)V

    .line 30
    return-void
.end method
