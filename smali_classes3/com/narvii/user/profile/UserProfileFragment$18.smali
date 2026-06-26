.class Lcom/narvii/user/profile/UserProfileFragment$18;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->follow(Z)V
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
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$following:Z


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;Z)V
    .locals 0

    .line 1744
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-boolean p3, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->val$following:Z

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

    .line 1792
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 1793
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 1794
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5

    .line 1747
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 1748
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 1750
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 1751
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1754
    :cond_0
    new-instance v1, Lcom/narvii/notification/Notification;

    iget-boolean v2, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->val$following:Z

    if-eqz v2, :cond_1

    const-string v2, "delete"

    goto :goto_0

    :cond_1
    const-string v2, "new"

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1757
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 1758
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 1760
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1762
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 1763
    iget-boolean v3, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->val$following:Z

    if-eqz v3, :cond_2

    .line 1765
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->removeFollowingStatus(I)V

    .line 1766
    iget v3, v0, Lcom/narvii/model/User;->membersCount:I

    sub-int/2addr v3, v1

    iput v3, v0, Lcom/narvii/model/User;->membersCount:I

    goto :goto_1

    .line 1769
    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 1770
    iget v3, v0, Lcom/narvii/model/User;->membersCount:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/narvii/model/User;->membersCount:I

    .line 1772
    :goto_1
    new-instance v3, Lcom/narvii/notification/Notification;

    const-string v4, "update"

    invoke-direct {v3, v4, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1773
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0, v3}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 1776
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 1777
    iget-boolean v3, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->val$following:Z

    if-eqz v3, :cond_4

    .line 1778
    iget v3, v0, Lcom/narvii/model/User;->joinedCount:I

    sub-int/2addr v3, v1

    iput v3, v0, Lcom/narvii/model/User;->joinedCount:I

    goto :goto_2

    .line 1780
    :cond_4
    iget v3, v0, Lcom/narvii/model/User;->joinedCount:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 1782
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 1783
    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$18;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {v4, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1784
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method
