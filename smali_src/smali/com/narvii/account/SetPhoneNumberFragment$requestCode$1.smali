.class public final Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/SetPhoneNumberFragment;->requestCode(Ljava/lang/String;)V
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
.field final synthetic $identity:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/SetPhoneNumberFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SetPhoneNumberFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/SetPhoneNumberFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->$identity:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    const/4 p2, 0x1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 38
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
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
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/account/SetIdentityFragment;->getVerifyCodeHelper()Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->$identity:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->updatePhoneVerifyTime(Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->this$0:Lcom/narvii/account/SetPhoneNumberFragment;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/account/SetPhoneNumberFragment$requestCode$1;->$identity:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/narvii/account/SetIdentityFragment;->goNext(Ljava/lang/String;)V

    .line 32
    return-void
.end method
