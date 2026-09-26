.class public final Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    const-string p3, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->access$dismissProgress(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 21
    .line 22
    iget-object p3, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->access$getEdtEmail$p(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)Lcom/narvii/widget/AutoCompleteEmailView;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 35
    const/4 p5, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {p3, p5}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->access$setRequest$p(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 39
    .line 40
    const/16 p3, 0xd7

    .line 41
    .line 42
    if-eq p2, p3, :cond_0

    .line 43
    .line 44
    const/16 p3, 0xf6

    .line 45
    .line 46
    if-eq p2, p3, :cond_0

    .line 47
    .line 48
    iget-object p3, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 49
    const/4 p5, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->access$showEmailConfirmDialog(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 59
    :goto_0
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

    .line 1
    .line 2
    const-string p2, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->access$dismissProgress(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;->access$setRequest$p(Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 17
    .line 18
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/account/resetpassword/EmailResetPasswordFragment$checkLegality$1;->this$0:Lcom/narvii/account/resetpassword/EmailResetPasswordFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f12004f

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 34
    .line 35
    .line 36
    const p2, 0x104000a

    .line 37
    .line 38
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 45
    return-void
.end method
