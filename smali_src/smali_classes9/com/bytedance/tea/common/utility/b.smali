.class Lcom/bytedance/tea/common/utility/b;
.super Lcom/bytedance/tea/common/utility/NetworkClient;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/tea/common/utility/NetworkClient;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/tea/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    new-instance p3, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/lang/String;Ljava/util/Map;)[B

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-object p3

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    .line 13
    instance-of p2, p1, Lcom/bytedance/tea/common/utility/HttpResponseException;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/bytedance/tea/common/utility/CommonHttpException;

    .line 18
    move-object p3, p1

    .line 19
    .line 20
    check-cast p3, Lcom/bytedance/tea/common/utility/HttpResponseException;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/bytedance/tea/common/utility/HttpResponseException;->getStatusCode()I

    .line 24
    move-result p3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    .line 32
    throw p2

    .line 33
    .line 34
    :cond_0
    new-instance p2, Lcom/bytedance/tea/common/utility/CommonHttpException;

    .line 35
    const/4 p3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    .line 43
    throw p2
.end method

.method public post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/tea/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/bytedance/tea/common/utility/CommonHttpException;

    const/4 p2, 0x0

    const-string/jumbo p3, "not implemented"

    invoke-direct {p1, p2, p3}, Lcom/bytedance/tea/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public post(Ljava/lang/String;[BLjava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/tea/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance p4, Ljava/lang/String;

    const-string v0, "POST"

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)[B

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p4

    :catchall_0
    move-exception p1

    .line 3
    instance-of p2, p1, Lcom/bytedance/tea/common/utility/HttpResponseException;

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/bytedance/tea/common/utility/CommonHttpException;

    move-object p3, p1

    check-cast p3, Lcom/bytedance/tea/common/utility/HttpResponseException;

    invoke-virtual {p3}, Lcom/bytedance/tea/common/utility/HttpResponseException;->getStatusCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 5
    :cond_0
    new-instance p2, Lcom/bytedance/tea/common/utility/CommonHttpException;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw p2
.end method
