.class public final Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
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
.field final synthetic $phone:Ljava/lang/String;

.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/MobileSignupFragment;",
            "Ljava/lang/String;",
            "Lcom/narvii/widget/ACMAlertDialog;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->$phone:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/account/MobileSignupFragment;->access$getVerifyCodeHelper(Lcom/narvii/account/MobileSignupFragment;)Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->$phone:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->updatePhoneVerifyTime(Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;->$phone:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/narvii/account/MobileSignupFragment;->access$toVerifyCodePage(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;)V

    .line 27
    return-void
.end method
