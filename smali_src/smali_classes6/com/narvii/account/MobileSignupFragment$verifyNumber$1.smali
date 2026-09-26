.class public final Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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


# instance fields
.field final synthetic $phone:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/MobileSignupFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/MobileSignupFragment;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->onFinish$lambda$1$lambda$0(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onFinish$lambda$1$lambda$0(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 2

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
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->showProgress()V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/narvii/account/MobileSignupFragment;->access$getAuthType(Lcom/narvii/account/MobileSignupFragment;)I

    .line 22
    move-result p3

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;

    .line 25
    .line 26
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1$onFinish$1$1$1;-><init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3, p1, v0}, Lcom/narvii/account/AccountBaseFragment;->requestSecurityCode(ILjava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 33
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
    iget-object p3, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 9
    .line 10
    iget-object p3, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 11
    const/4 p5, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 15
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
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
    iget-object p1, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->$phone:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/account/MobileSignupFragment$verifyNumber$1;->this$0:Lcom/narvii/account/MobileSignupFragment;

    .line 24
    .line 25
    .line 26
    const v1, 0x7f120b4d

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f120438

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/account/f0;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v0, p2, p1}, Lcom/narvii/account/f0;-><init>(Lcom/narvii/account/MobileSignupFragment;Ljava/lang/String;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 52
    .line 53
    .line 54
    const p2, 0x7f1212a7

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 61
    return-void
.end method
