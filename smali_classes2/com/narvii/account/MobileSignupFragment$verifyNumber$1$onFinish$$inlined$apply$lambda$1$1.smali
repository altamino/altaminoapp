.class public final Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MobileSignupFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;


# direct methods
.method constructor <init>(Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    .line 75
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

    .line 84
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 85
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 86
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 78
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 79
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/MobileSignupFragment;->access$getVerifyCodeHelper$p(Lcom/narvii/account/MobileSignupFragment;)Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    iget-object p2, p2, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p2, p2, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->updatePhoneVerifyTime(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;->this$0:Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;

    iget-object p2, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    iget-object p1, p1, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/narvii/account/MobileSignupFragment;->access$toVerifyCodePage(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;)V

    return-void
.end method
