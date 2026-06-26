.class Lcom/narvii/story/ShareStoryFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ShareStoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/ShareStoryFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

.field final synthetic val$community:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/story/ShareStoryFragment$Adapter;Ljava/lang/Class;Lcom/narvii/model/Community;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iput-object p3, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->val$community:Lcom/narvii/model/Community;

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

    .line 344
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 345
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-static {p1}, Lcom/narvii/story/ShareStoryFragment;->access$100(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 346
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-virtual {p1, p4}, Lcom/narvii/app/NVFragment;->showShortToast(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 321
    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const v0, 0x7f0f104b

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    return-void

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    const-string v1, "community"

    invoke-virtual {p1, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 327
    iget-object v1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    .line 329
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->val$community:Lcom/narvii/model/Community;

    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-direct {p1, v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 330
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostStoryEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 331
    iget-boolean p1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 333
    iget-object v0, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    iget-object v0, v0, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->val$community:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    iget-object p2, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->val$community:Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/story/ShareStoryFragment;->toStoryPost(Lcom/narvii/model/Community;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->showShortToast(I)V

    .line 338
    iget-object p1, p0, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->this$1:Lcom/narvii/story/ShareStoryFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/story/ShareStoryFragment$Adapter;->this$0:Lcom/narvii/story/ShareStoryFragment;

    invoke-static {p1}, Lcom/narvii/story/ShareStoryFragment;->access$100(Lcom/narvii/story/ShareStoryFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

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

    .line 317
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/ShareStoryFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
