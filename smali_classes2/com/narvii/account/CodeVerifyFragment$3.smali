.class Lcom/narvii/account/CodeVerifyFragment$3;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "CodeVerifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CodeVerifyFragment;->verifyEmailCode(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/account/CodeVerifyFragment;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/CodeVerifyFragment;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iput-object p3, p0, Lcom/narvii/account/CodeVerifyFragment$3;->val$code:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 314
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 315
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 319
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/narvii/account/CodeVerifyFragment;->access$402(Lcom/narvii/account/CodeVerifyFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 320
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/narvii/account/CodeVerifyFragment;->updateCodeErrorMessage(Z)V

    const/16 p1, 0xc1e

    if-ne p2, p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    const p5, 0x7f0f0781

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(I)V

    .line 323
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {p1}, Lcom/narvii/widget/CodeEditView;->clearCode()V

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    const/4 p5, 0x0

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {p1, p3}, Lcom/narvii/widget/CodeEditView;->isError(Z)V

    .line 329
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    const-string p6, "logging"

    invoke-virtual {p1, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/16 p6, 0x8

    new-array p6, p6, [Ljava/lang/Object;

    const-string v0, "email"

    aput-object v0, p6, p5

    .line 330
    iget-object p5, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    .line 331
    invoke-virtual {p5, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p6, p3

    const/4 p3, 0x2

    const-string p5, "code"

    aput-object p5, p6, p3

    const/4 p3, 0x3

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p6, p3

    const/4 p3, 0x4

    const-string p5, "reason"

    aput-object p5, p6, p3

    const/4 p3, 0x5

    if-nez p2, :cond_2

    const-string p2, "NetworkError"

    goto :goto_1

    :cond_2
    const-string p2, "InvalidVerificationCode"

    :goto_1
    aput-object p2, p6, p3

    const/4 p2, 0x6

    const-string p3, "message"

    aput-object p3, p6, p2

    const/4 p2, 0x7

    aput-object p4, p6, p2

    const-string p2, "AccountError"

    .line 330
    invoke-interface {p1, p2, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/account/CodeVerifyFragment;->access$402(Lcom/narvii/account/CodeVerifyFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 301
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object v1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->val$code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/account/CodeVerifyFragment;->access$502(Lcom/narvii/account/CodeVerifyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 303
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 307
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "validationContext"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p1, p2}, Lcom/narvii/account/CodeVerifyFragment;->access$602(Lcom/narvii/account/CodeVerifyFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 308
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/CodeEditView;->isError(Z)V

    .line 309
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$3;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-static {p1}, Lcom/narvii/account/CodeVerifyFragment;->access$700(Lcom/narvii/account/CodeVerifyFragment;)V

    return-void
.end method
