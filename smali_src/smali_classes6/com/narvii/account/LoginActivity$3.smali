.class Lcom/narvii/account/LoginActivity$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LoginActivity;->finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginActivity;

.field final synthetic val$code:I

.field final synthetic val$f:Lcom/narvii/account/AccountBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;ILcom/narvii/account/AccountBaseFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/account/LoginActivity$3;->val$code:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/account/LoginActivity$3;->val$f:Lcom/narvii/account/AccountBaseFragment;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    .line 6
    .line 7
    .line 8
    invoke-static {p6}, Lcom/narvii/util/Utils;->getHttpCode(Ljava/lang/Throwable;)I

    .line 9
    move-result p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/account/LoginActivity;->setHttpCode(I)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    .line 15
    .line 16
    iget p2, p0, Lcom/narvii/account/LoginActivity$3;->val$code:I

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p4, p2}, Lcom/narvii/account/LoginActivity;->y(Lcom/narvii/account/LoginActivity;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/LoginActivity$3;->this$0:Lcom/narvii/account/LoginActivity;

    .line 6
    .line 7
    iget p2, p0, Lcom/narvii/account/LoginActivity$3;->val$code:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/LoginActivity$3;->val$f:Lcom/narvii/account/AccountBaseFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v0}, Lcom/narvii/account/LoginActivity;->z(Lcom/narvii/account/LoginActivity;ILcom/narvii/account/AccountBaseFragment;)V

    .line 13
    return-void
.end method
