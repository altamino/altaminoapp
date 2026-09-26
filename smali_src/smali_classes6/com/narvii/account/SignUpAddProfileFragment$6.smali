.class Lcom/narvii/account/SignUpAddProfileFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/SignUpAddProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BasicProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->A(Lcom/narvii/account/SignUpAddProfileFragment;)Lcom/narvii/services/EventLogProfileService;

    .line 14
    move-result-object p1

    .line 15
    const/4 p3, 0x0

    .line 16
    .line 17
    iput-boolean p3, p1, Lcom/narvii/services/EventLogProfileService;->needsCompleteSignupBirthday:Z

    .line 18
    .line 19
    const/16 p1, 0x6a

    .line 20
    .line 21
    if-ne p2, p1, :cond_0

    .line 22
    .line 23
    const-class p1, Lcom/narvii/birthday/AccountDeletedFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-string p2, "param_birthday_type"

    .line 30
    .line 31
    sget-object p3, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->SIGNUP:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/narvii/account/SignUpAddProfileFragment$6;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 43
    .line 44
    new-instance p2, Lcom/narvii/account/SignUpAccountCreatedFragment;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2}, Lcom/narvii/account/SignUpAccountCreatedFragment;-><init>()V

    .line 48
    .line 49
    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Lcom/narvii/account/SignUpAddProfileFragment;->B(Lcom/narvii/account/SignUpAddProfileFragment;)Z

    .line 53
    move-result p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->goToAccountCreatedPage(Landroidx/fragment/app/Fragment;Z)V

    .line 57
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
    check-cast p2, Lcom/narvii/model/api/BasicProfileResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BasicProfileResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BasicProfileResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->A(Lcom/narvii/account/SignUpAddProfileFragment;)Lcom/narvii/services/EventLogProfileService;

    move-result-object p1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/services/EventLogProfileService;->needsCompleteSignupBirthday:Z

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const-string p2, "account"

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/LoginActivity;

    iget-object v0, v0, Lcom/narvii/account/LoginActivity;->birthday:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "age"

    invoke-static {p2}, Lcom/narvii/util/Utils;->getAge(Ljava/util/Date;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 10
    new-instance p2, Lcom/narvii/account/SignUpAccountCreatedFragment;

    invoke-direct {p2}, Lcom/narvii/account/SignUpAccountCreatedFragment;-><init>()V

    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment$6;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-static {v0}, Lcom/narvii/account/SignUpAddProfileFragment;->B(Lcom/narvii/account/SignUpAddProfileFragment;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/account/AccountBaseFragment;->goToAccountCreatedPage(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
