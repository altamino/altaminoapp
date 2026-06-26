.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V
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
.field final synthetic $confirmed$inlined:Z

.field final synthetic $following:Z

.field final synthetic $it:Lcom/narvii/model/User;

.field final synthetic $updateFollowState$1$inlined:Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(ZLcom/narvii/model/User;Ljava/lang/Class;Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$following:Z

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$it:Lcom/narvii/model/User;

    iput-object p4, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    iput-boolean p5, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$confirmed$inlined:Z

    iput-object p6, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$updateFollowState$1$inlined:Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;

    .line 908
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 949
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 950
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$updateFollowState$1$inlined:Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;

    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$it:Lcom/narvii/model/User;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;->invoke(ZLcom/narvii/model/User;)V

    .line 951
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 910
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setSendingFollow$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    .line 911
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;->setSendingFollow(Z)V

    .line 912
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setPerformFollowAnimation$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    .line 914
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 915
    new-instance v2, Lcom/narvii/notification/Notification;

    .line 916
    iget-boolean v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$following:Z

    if-eqz v3, :cond_0

    const-string v3, "delete"

    goto :goto_0

    :cond_0
    const-string v3, "new"

    .line 915
    :goto_0
    invoke-direct {v2, v3, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 920
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 921
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1, v2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 923
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$following:Z

    if-eqz p1, :cond_1

    .line 924
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$it:Lcom/narvii/model/User;

    iget v2, p1, Lcom/narvii/model/User;->followingStatus:I

    and-int/lit8 v2, v2, 0x2

    iput v2, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 925
    iget v2, p1, Lcom/narvii/model/User;->membershipStatus:I

    and-int/lit8 v2, v2, 0x2

    iput v2, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 926
    iget v2, p1, Lcom/narvii/model/User;->membersCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/narvii/model/User;->membersCount:I

    .line 928
    iput v0, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    goto :goto_1

    .line 930
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$it:Lcom/narvii/model/User;

    iget v0, p1, Lcom/narvii/model/User;->followingStatus:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 931
    iget v0, p1, Lcom/narvii/model/User;->membershipStatus:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 932
    iget v0, p1, Lcom/narvii/model/User;->membersCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/model/User;->membersCount:I

    .line 934
    :goto_1
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$it:Lcom/narvii/model/User;

    const-string v2, "update"

    invoke-direct {p1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 935
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 937
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    .line 938
    iget-boolean v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->$following:Z

    if-eqz v0, :cond_2

    .line 939
    iget v0, p1, Lcom/narvii/model/User;->joinedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/narvii/model/User;->joinedCount:I

    goto :goto_2

    .line 941
    :cond_2
    iget v0, p1, Lcom/narvii/model/User;->joinedCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/model/User;->joinedCount:I

    .line 943
    :goto_2
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$2;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v0, p1, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method
