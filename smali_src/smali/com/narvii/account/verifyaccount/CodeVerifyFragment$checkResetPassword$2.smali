.class public final Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->checkResetPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/verifyaccount/CodeVerifyFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
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
    const-string p3, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo p3, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 21
    .line 22
    iget-object p3, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p3

    .line 27
    const/4 p5, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p3, p4, p5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    .line 36
    iget-object p3, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 37
    .line 38
    const-string p6, "logging"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    check-cast p3, Lcom/narvii/util/logging/LoggingService;

    .line 45
    const/4 p6, 0x6

    .line 46
    .line 47
    new-array p6, p6, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v0, "code"

    .line 50
    .line 51
    aput-object v0, p6, p5

    .line 52
    const/4 p5, 0x1

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    aput-object v0, p6, p5

    .line 59
    const/4 p5, 0x2

    .line 60
    .line 61
    const-string v0, "reason"

    .line 62
    .line 63
    aput-object v0, p6, p5

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    const-string p2, "NetworkError"

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    const-string p2, "InvalidPassword"

    .line 71
    :goto_0
    const/4 p5, 0x3

    .line 72
    .line 73
    aput-object p2, p6, p5

    .line 74
    const/4 p2, 0x4

    .line 75
    .line 76
    aput-object p1, p6, p2

    .line 77
    const/4 p1, 0x5

    .line 78
    .line 79
    aput-object p4, p6, p1

    .line 80
    .line 81
    const-string p1, "AccountError"

    .line 82
    .line 83
    .line 84
    invoke-interface {p3, p1, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "resp"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "account"

    .line 22
    .line 23
    .line 24
    filled-new-array {p2}, [Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$checkResetPassword$2;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 36
    .line 37
    const-string v0, "phoneNumber"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/NullNode;->getInstance()Lcom/fasterxml/jackson/databind/node/NullNode;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-eq v0, v1, :cond_3

    .line 48
    .line 49
    const-string v0, "email"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/NullNode;->getInstance()Lcom/fasterxml/jackson/databind/node/NullNode;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-ne p1, v0, :cond_0

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCheckLevel(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)I

    .line 64
    move-result p1

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    if-ne p1, v0, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getPhone(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$goToEmailVerify(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$goToMobileVerify(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$goToSetPassword(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$goToSetPassword(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 89
    :cond_4
    :goto_1
    return-void
.end method
