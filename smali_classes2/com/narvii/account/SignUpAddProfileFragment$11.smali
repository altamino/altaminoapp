.class Lcom/narvii/account/SignUpAddProfileFragment$11;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SignUpAddProfileFragment.java"


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
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;Ljava/lang/Class;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

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

    .line 581
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 582
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    const p4, 0x7f0f002b

    invoke-virtual {p1, p4, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 583
    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 585
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    new-instance p2, Lcom/narvii/account/SignUpAccountCreatedFragment;

    invoke-direct {p2}, Lcom/narvii/account/SignUpAccountCreatedFragment;-><init>()V

    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-boolean p3, p3, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    invoke-virtual {p1, p2, p3}, Lcom/narvii/account/AccountBaseFragment;->goToAccountCreatedPage(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 569
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 570
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 571
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 572
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object v2, p1, Lcom/narvii/account/SignUpAddProfileFragment;->photo:Lcom/narvii/photos/PhotoManager;

    iget-object p1, p1, Lcom/narvii/account/SignUpAddProfileFragment;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 573
    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V

    .line 576
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    new-instance p2, Lcom/narvii/account/SignUpAccountCreatedFragment;

    invoke-direct {p2}, Lcom/narvii/account/SignUpAccountCreatedFragment;-><init>()V

    iget-object v0, p0, Lcom/narvii/account/SignUpAddProfileFragment$11;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-boolean v0, v0, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    invoke-virtual {p1, p2, v0}, Lcom/narvii/account/AccountBaseFragment;->goToAccountCreatedPage(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
