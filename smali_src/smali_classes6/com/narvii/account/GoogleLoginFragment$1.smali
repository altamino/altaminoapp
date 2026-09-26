.class Lcom/narvii/account/GoogleLoginFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/GoogleLoginFragment;->onAccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/AccountExistResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/GoogleLoginFragment;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/GoogleLoginFragment;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/account/GoogleLoginFragment$1;->val$token:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 6
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Landroidx/annotation/Nullable;
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
    iget-object p3, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p6}, Lcom/narvii/account/AccountBaseFragment;->setHttpCode(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 8
    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string p5, "10 "

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-object p5, p0, Lcom/narvii/account/GoogleLoginFragment$1;->val$token:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, p2

    .line 29
    move-object v4, p4

    .line 30
    move-object v5, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->finishThirdPartLoginWithResult(Ljava/lang/String;ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 34
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountExistResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 2
    iget-object v0, p2, Lcom/narvii/model/api/AccountExistResponse;->exists:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountBaseFragment;->setIsRequesting(Z)V

    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 4
    iget-object v0, p2, Lcom/narvii/model/api/AccountExistResponse;->exists:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountBaseFragment;->setAccountExists(Z)V

    .line 5
    iget-object p1, p2, Lcom/narvii/model/api/AccountExistResponse;->exists:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/account/GoogleLoginFragment;->x(Lcom/narvii/account/GoogleLoginFragment;)V

    goto :goto_0

    :cond_0
    const-class p1, Lcom/narvii/birthday/EnterBirthdayFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "param_birthday_type"

    .line 8
    sget-object v0, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->SIGNUP:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/account/GoogleLoginFragment$1;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 9
    invoke-static {p2}, Lcom/narvii/account/GoogleLoginFragment;->w(Lcom/narvii/account/GoogleLoginFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountExistResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/GoogleLoginFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountExistResponse;)V

    return-void
.end method
