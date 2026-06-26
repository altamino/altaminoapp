.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StrikeWarningFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/strike/StrikeWarningFragment;->queryUserInfo()V
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
.field final synthetic this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 247
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 239
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    iget-object v0, p2, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 240
    iget-object p1, p1, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p1, v0, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 241
    invoke-static {p2}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$100(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    :cond_0
    return-void
.end method
