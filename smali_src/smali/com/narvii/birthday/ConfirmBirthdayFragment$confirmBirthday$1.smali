.class public final Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/birthday/ConfirmBirthdayFragment;->confirmBirthday()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;


# direct methods
.method constructor <init>(Lcom/narvii/birthday/ConfirmBirthdayFragment;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/birthday/ConfirmBirthdayFragment;",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/BasicProfileResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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
    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    const/16 p1, 0x6a

    .line 11
    .line 12
    if-eq p2, p1, :cond_1

    .line 13
    .line 14
    const/16 p1, 0x6e

    .line 15
    .line 16
    if-eq p2, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 34
    const/4 p2, 0x2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->access$goToAccountDeleted(Lcom/narvii/birthday/ConfirmBirthdayFragment;)V

    .line 49
    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/BasicProfileResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BasicProfileResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BasicProfileResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/BasicProfileResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    const-string p2, "account"

    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 4
    invoke-static {p2}, Lcom/narvii/birthday/ConfirmBirthdayFragment;->access$getBirthdate$p(Lcom/narvii/birthday/ConfirmBirthdayFragment;)Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "birthdate"

    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-static {p2}, Lcom/narvii/util/Utils;->getAge(Ljava/util/Date;)I

    move-result p2

    const-string v0, "age"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    const/4 p2, -0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setResult(I)V

    iget-object p1, p0, Lcom/narvii/birthday/ConfirmBirthdayFragment$confirmBirthday$1;->this$0:Lcom/narvii/birthday/ConfirmBirthdayFragment;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
