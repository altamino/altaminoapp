.class public Lokhttp3/internal/WhPushRecv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/pushservice/PushService$PushListener;
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/narvii/pushservice/PushService$PushListener;",
        "Lokhttp3/Callback;"
    }
.end annotation


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/WhPushRecv;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v0, "push"

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 14
    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 3
    .line 4
    const/16 v0, 0x8a4

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x8a6

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 3
    .line 4
    const/16 v1, 0x8a4

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/internal/WhPushRecv;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v1, "whOkhttp3"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 23
    .line 24
    iget-object v2, p0, Lokhttp3/internal/WhPushRecv;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    const-string v2, "application/json; charset=utf-8"

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v3, p1, Lcom/narvii/pushservice/PushPayload;->ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    new-instance v3, Lokhttp3/Request$Builder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v5, "https://www.altamino.top/prec?vc="

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 93
    .line 94
    :cond_0
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 95
    .line 96
    const/16 v1, 0x8a6

    .line 97
    .line 98
    if-ne v0, v1, :cond_1

    .line 99
    .line 100
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->ext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 101
    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    new-instance v0, Lokhttp3/internal/WhSpecTask;

    .line 105
    .line 106
    iget-object v1, p0, Lokhttp3/internal/WhPushRecv;->context:Lcom/narvii/app/NVContext;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1, p1}, Lokhttp3/internal/WhSpecTask;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushPayload;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    :cond_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
