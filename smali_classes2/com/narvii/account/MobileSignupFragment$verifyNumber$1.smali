.class public final Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MobileSignupFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/MobileSignupFragment;->verifyNumber()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMobileSignupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MobileSignupFragment.kt\ncom/narvii/account/MobileSignupFragment$verifyNumber$1\n*L\n1#1,194:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $phone:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 94
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 95
    iget-object p3, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {p3}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 96
    iget-object p3, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 66
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 67
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0a9b

    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 69
    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const p2, 0x7f0f03cd

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 73
    new-instance p2, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;

    invoke-direct {p2, p1, p0}, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$$inlined$apply$lambda$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;)V

    const v0, 0x7f0f119f

    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 90
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
