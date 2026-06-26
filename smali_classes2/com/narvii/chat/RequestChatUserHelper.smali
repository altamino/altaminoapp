.class public Lcom/narvii/chat/RequestChatUserHelper;
.super Ljava/lang/Object;
.source "RequestChatUserHelper.java"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field objectId:Ljava/lang/String;

.field objectType:I

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/narvii/chat/RequestChatUserHelper;->objectType:I

    .line 38
    iput-object p1, p0, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

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

    move-object v10, p0

    .line 42
    new-instance v8, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, v10, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v8}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 45
    iget-object v0, v10, Lcom/narvii/chat/RequestChatUserHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/narvii/util/http/ApiService;

    .line 47
    new-instance v9, Lcom/narvii/chat/RequestChatUserHelper$1;

    const-class v2, Lcom/narvii/chat/ThreadResponse;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v8

    move-object v4, p1

    move-object/from16 v5, p3

    move v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/RequestChatUserHelper$1;-><init>(Lcom/narvii/chat/RequestChatUserHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/NVObject;Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 69
    new-instance v12, Lcom/narvii/chat/RequestChatUserHelper$2;

    const-class v2, Lcom/narvii/chat/thread/ThreadListResponse;

    move-object v0, v12

    move-object v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/narvii/chat/RequestChatUserHelper$2;-><init>(Lcom/narvii/chat/RequestChatUserHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/NVObject;Ljava/lang/String;ILcom/narvii/util/Callback;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 109
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread?type=exist-single&cv=1.2&q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 111
    invoke-virtual {v11, v0, v12}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
