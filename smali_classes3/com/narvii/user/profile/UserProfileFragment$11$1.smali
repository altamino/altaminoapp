.class Lcom/narvii/user/profile/UserProfileFragment$11$1;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

.field final synthetic val$ons:I


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$11;I)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    iput p2, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->val$ons:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 982
    iget v1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->val$ons:I

    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/account/AccountService;->updateOnlineStatus(ILjava/lang/String;Z)V

    .line 983
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    .line 984
    iget v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->val$ons:I

    iput v0, p1, Lcom/narvii/model/User;->onlineStatus:I

    .line 985
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;->setObject(Lcom/narvii/model/User;)V

    .line 987
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$11;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const-string v0, "liveLayer"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz p1, :cond_0

    .line 989
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerService;->refreshOnlineMembers()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 978
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment$11$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
