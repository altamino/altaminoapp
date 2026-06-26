.class Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UserProfilePrivilegeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/UserProfilePrivilegeFragment;->sendUserProfileRequest()V
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
.field final synthetic this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

.field final synthetic val$accountService:Lcom/narvii/account/AccountService;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/Class;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iput-object p3, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->val$accountService:Lcom/narvii/account/AccountService;

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

    .line 378
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 379
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {p1, p4}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$002(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$102(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Z)Z

    .line 381
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$400(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 368
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$102(Lcom/narvii/prefs/UserProfilePrivilegeFragment;Z)Z

    .line 369
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {p1}, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->access$400(Lcom/narvii/prefs/UserProfilePrivilegeFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 370
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->val$accountService:Lcom/narvii/account/AccountService;

    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 371
    iget-object p1, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object p1, p1, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->radioGroupAdapter:Lcom/narvii/adapter/RadioGroupAdapter;

    if-eqz p1, :cond_0

    .line 372
    iget-object p2, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->val$accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/prefs/UserProfilePrivilegeFragment$7;->this$0:Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    iget-object v0, v0, Lcom/narvii/prefs/UserProfilePrivilegeFragment;->privilegeKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/adapter/RadioGroupAdapter;->setSelectedItemId(I)V

    :cond_0
    return-void
.end method
