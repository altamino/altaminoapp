.class Lcom/narvii/config/ConfigService$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/config/ConfigService;->c(Lcom/narvii/config/ConfigService;)Lcom/narvii/util/http/ApiRequest;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/config/ConfigService;->e(Lcom/narvii/config/ConfigService;Lcom/narvii/util/http/ApiRequest;)V

    .line 15
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

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/config/ConfigService;->c(Lcom/narvii/config/ConfigService;)Lcom/narvii/util/http/ApiRequest;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/config/ConfigService;->e(Lcom/narvii/config/ConfigService;Lcom/narvii/util/http/ApiRequest;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string p2, "clientConfig"

    .line 21
    .line 22
    .line 23
    filled-new-array {p2}, [Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Lcom/narvii/config/ConfigService;->d(Lcom/narvii/config/ConfigService;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/config/ConfigService;->a(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/config/ConfigService;->b(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lcom/narvii/config/ConfigService;->a(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result p2

    .line 73
    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/narvii/config/ConfigService;->a(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    move-result-wide v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_2
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Lcom/narvii/config/ConfigService;->a(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/config/ConfigService;->b(Lcom/narvii/config/ConfigService;)Ljava/io/File;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    new-instance p2, Lcom/narvii/util/PackageUtils;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 120
    move-result-object p2

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 124
    .line 125
    new-instance p1, Landroid/content/Intent;

    .line 126
    .line 127
    const-string p2, "com.narvii.action.CONFIG_CHANGED"

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    iget-object p2, p0, Lcom/narvii/config/ConfigService$1;->this$0:Lcom/narvii/config/ConfigService;

    .line 133
    .line 134
    iget-object p2, p2, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    .line 135
    .line 136
    .line 137
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 146
    :goto_0
    return-void
.end method
