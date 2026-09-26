.class Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->val$resp:Lcom/narvii/model/api/ApiResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;->val$resp:Lcom/narvii/model/api/ApiResponse;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 21
    :cond_0
    return-void
.end method
