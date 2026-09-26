.class Lcom/narvii/services/DrawerResponseListenerProvider$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/DrawerResponseListenerProvider;->call(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/services/DrawerResponseListenerProvider;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$1;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/services/DrawerResponseListenerProvider$1;->val$ndcId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    if-eqz p5, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/services/DrawerResponseListenerProvider$1;->this$0:Lcom/narvii/services/DrawerResponseListenerProvider;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/app/Activity;

    .line 17
    .line 18
    :goto_0
    instance-of p2, p1, Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    move-object p2, p1

    .line 22
    .line 23
    check-cast p2, Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string p3, "config"

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 35
    move-result p2

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    .line 42
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    const p1, 0x7f1202ba

    .line 52
    .line 53
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    :cond_2
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
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 3
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iget p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider$1;->val$ndcId:I

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    return-void
.end method
