.class Lcom/narvii/account/SignUpAddProfileFragment$5;
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
        "Lcom/narvii/model/api/ApiResponse;",
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
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

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
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    new-array p3, p2, [Ljava/lang/Object;

    .line 15
    const/4 p5, 0x0

    .line 16
    .line 17
    aput-object p4, p3, p5

    .line 18
    .line 19
    .line 20
    const p4, 0x7f12002a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p4, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-static {p3, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->F(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 43
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/account/SignUpAddProfileFragment;->E(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 14
    .line 15
    const-string v0, "account"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    move-object v0, p1

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->C(Lcom/narvii/account/SignUpAddProfileFragment;)Lcom/narvii/photos/PhotoManager;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lcom/narvii/account/SignUpAddProfileFragment;->y(Lcom/narvii/account/SignUpAddProfileFragment;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    const/4 v5, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZZ)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$5;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->F(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 58
    return-void
.end method
