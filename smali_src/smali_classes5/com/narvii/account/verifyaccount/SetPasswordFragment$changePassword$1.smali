.class public final Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/SetPasswordFragment;->changePassword()V
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
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/SetPasswordFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/verifyaccount/SetPasswordFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

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
    const-string p3, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 21
    .line 22
    iget-object p3, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

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
    iget-object p3, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

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
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/SetPasswordFragment;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/SetPasswordFragment$changePassword$1;->this$0:Lcom/narvii/account/verifyaccount/SetPasswordFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    const-string v0, "secret"

    .line 24
    .line 25
    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/narvii/account/verifyaccount/SetPasswordFragment;->updateSecret(Ljava/lang/String;)V

    .line 35
    return-void
.end method
