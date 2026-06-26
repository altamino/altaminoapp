.class Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

.field final synthetic val$resp:Lcom/narvii/model/api/ApiResponse;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iput-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->val$resp:Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->val$resp:Lcom/narvii/model/api/ApiResponse;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
