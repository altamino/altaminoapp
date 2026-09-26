.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->checkCommunityJoined(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

.field final synthetic val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->b(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 27
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
    check-cast p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_2

    .line 4
    iget-object p1, p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;->availableCommunity:Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;->joined:Z

    if-eqz v0, :cond_1

    const-class p1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 9
    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;->availableCommunity:Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;

    iget p2, p2, Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;->ndcId:I

    const-string v0, "__communityId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 11
    invoke-static {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->b(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 12
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;->name:Ljava/lang/String;

    iget p1, p1, Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;->ndcId:I

    invoke-static {p2, v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->c(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
