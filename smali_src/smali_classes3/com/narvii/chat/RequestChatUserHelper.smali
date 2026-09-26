.class public Lcom/narvii/chat/RequestChatUserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field objectId:Ljava/lang/String;

.field objectType:I

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/RequestChatUserHelper;->objectType:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 9
    return-void
.end method


# virtual methods
.method public request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/NVObject;",
            "I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    .line 3
    new-instance v8, Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    .line 5
    iget-object v0, v10, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {v8, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 16
    .line 17
    iget-object v0, v10, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    const-string v1, "api"

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    move-object v11, v0

    .line 25
    .line 26
    check-cast v11, Lcom/narvii/util/http/ApiService;

    .line 27
    .line 28
    new-instance v9, Lcom/narvii/chat/RequestChatUserHelper$1;

    .line 29
    .line 30
    const-class v2, Lcom/narvii/chat/ThreadResponse;

    .line 31
    move-object v0, v9

    .line 32
    move-object v1, p0

    .line 33
    move-object v3, v8

    .line 34
    move-object v4, p1

    .line 35
    .line 36
    move-object/from16 v5, p3

    .line 37
    move v6, p2

    .line 38
    .line 39
    move-object/from16 v7, p4

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/RequestChatUserHelper$1;-><init>(Lcom/narvii/chat/RequestChatUserHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/NVObject;Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 43
    .line 44
    new-instance v12, Lcom/narvii/chat/RequestChatUserHelper$2;

    .line 45
    .line 46
    const-class v2, Lcom/narvii/chat/thread/ThreadListResponse;

    .line 47
    move-object v0, v12

    .line 48
    move-object v8, v11

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/narvii/chat/RequestChatUserHelper$2;-><init>(Lcom/narvii/chat/RequestChatUserHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/NVObject;Ljava/lang/String;ILcom/narvii/util/Callback;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v2, "/chat/thread?type=exist-single&cv=1.2&q="

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11, v0, v12}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 92
    return-void
.end method
