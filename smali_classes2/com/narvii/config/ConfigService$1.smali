.class Lcom/narvii/config/ConfigService$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "ConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/config/ConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/config/ConfigService;


# direct methods
.method constructor <init>(Lcom/narvii/config/ConfigService;Ljava/lang/Class;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 270
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p2}, Lcom/narvii/config/ConfigService;->access$000(Lcom/narvii/config/ConfigService;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/config/ConfigService;->access$002(Lcom/narvii/config/ConfigService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p2}, Lcom/narvii/config/ConfigService;->access$000(Lcom/narvii/config/ConfigService;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/config/ConfigService;->access$002(Lcom/narvii/config/ConfigService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "clientConfig"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 248
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p2, p1}, Lcom/narvii/config/ConfigService;->access$102(Lcom/narvii/config/ConfigService;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p1}, Lcom/narvii/config/ConfigService;->access$200(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 251
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p1}, Lcom/narvii/config/ConfigService;->access$300(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p2}, Lcom/narvii/config/ConfigService;->access$200(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 256
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p1}, Lcom/narvii/config/ConfigService;->access$200(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_0

    .line 258
    :cond_2
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p2}, Lcom/narvii/config/ConfigService;->access$200(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 259
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    invoke-static {p1}, Lcom/narvii/config/ConfigService;->access$300(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/PackageUtils;

    iget-object v0, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    iget-object v0, v0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 260
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.narvii.action.CONFIG_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    iget-object p2, p2, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_0
    return-void
.end method
