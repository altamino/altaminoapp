.class Lcom/narvii/onlinestatus/UserDialog$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/UserDialog;->sendUserRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/UserDialog;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/UserDialog;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$2;->this$0:Lcom/narvii/onlinestatus/UserDialog;

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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$2;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 6
    .line 7
    iput-object p4, p1, Lcom/narvii/onlinestatus/UserDialog;->error:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/onlinestatus/UserDialog;->updateViews()V

    .line 11
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/onlinestatus/UserDialog$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$2;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 3
    invoke-static {p1, p2}, Lcom/narvii/onlinestatus/UserDialog;->b(Lcom/narvii/onlinestatus/UserDialog;Lcom/narvii/model/api/UserResponse;)V

    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$2;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 4
    invoke-static {p1}, Lcom/narvii/onlinestatus/UserDialog;->a(Lcom/narvii/onlinestatus/UserDialog;)Lcom/narvii/model/api/UserResponse;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iput-object p2, p1, Lcom/narvii/onlinestatus/UserDialog;->user:Lcom/narvii/model/User;

    iget-object p1, p0, Lcom/narvii/onlinestatus/UserDialog$2;->this$0:Lcom/narvii/onlinestatus/UserDialog;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/onlinestatus/UserDialog;->updateViews()V

    return-void
.end method
