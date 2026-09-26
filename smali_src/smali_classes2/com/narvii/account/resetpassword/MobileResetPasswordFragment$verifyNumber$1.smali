.class public final Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->verifyNumber()V
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

.field final synthetic this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->onFail$lambda$2$lambda$1(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onFail$lambda$2$lambda$1(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    const-string p3, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$phone"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "$this_apply"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->access$showProgress(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->access$getAuthType(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)I

    .line 22
    move-result p3

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1$onFail$1$1$1;

    .line 30
    .line 31
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1$onFail$1$1$1;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p3, p1, v0, v1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->access$requestSecurityCode(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;ILjava/lang/String;Ljava/lang/Integer;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 38
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
    iget-object p3, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->access$dismissProgress(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 9
    .line 10
    const/16 p3, 0xd7

    .line 11
    const/4 p5, 0x0

    .line 12
    .line 13
    if-eq p2, p3, :cond_0

    .line 14
    .line 15
    const/16 p3, 0xf6

    .line 16
    .line 17
    if-eq p2, p3, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 39
    .line 40
    .line 41
    const p4, 0x7f120b4d

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    .line 55
    .line 56
    const p4, 0x7f120438

    .line 57
    const/4 p5, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p4, p5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 61
    .line 62
    new-instance p4, Lcom/narvii/account/resetpassword/e;

    .line 63
    .line 64
    .line 65
    invoke-direct {p4, p3, p2, p1}, Lcom/narvii/account/resetpassword/e;-><init>(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f1212a7

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 75
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
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
    iget-object p1, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;->access$dismissProgress(Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;)V

    .line 9
    .line 10
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/account/resetpassword/MobileResetPasswordFragment$verifyNumber$1;->this$0:Lcom/narvii/account/resetpassword/MobileResetPasswordFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const p2, 0x7f12004f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    .line 28
    const p2, 0x104000a

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 37
    return-void
.end method
