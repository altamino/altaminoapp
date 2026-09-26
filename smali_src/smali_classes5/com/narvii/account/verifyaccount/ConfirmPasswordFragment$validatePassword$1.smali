.class public final Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->validatePassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $password:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->$password:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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
    const-string p2, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 30
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->access$getVerifyAccountType(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    instance-of p1, p1, Lcom/narvii/account/verifyaccount/DeleteAccountVerifyAccount;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->$password:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->deleteAccount(Ljava/lang/String;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$validatePassword$1;->$password:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->goToVerifyIdentity(Ljava/lang/String;)V

    .line 31
    :goto_0
    return-void
.end method
