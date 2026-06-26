.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AvatarFrameHelper.java"


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

    .line 162
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

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

    .line 186
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 188
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
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

    .line 165
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_2

    .line 168
    iget-object p1, p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;->availableCommunity:Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;

    if-nez p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-boolean v0, p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;->joined:Z

    if-eqz v0, :cond_1

    .line 173
    const-class p1, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iget-object v0, v0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemCommunityCheckResponse;->availableCommunity:Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;

    iget p2, p2, Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;->ndcId:I

    const-string v0, "__communityId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$3;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;->name:Ljava/lang/String;

    iget p1, p1, Lcom/narvii/monetization/store/data/StoreItemAvailableCommunity;->ndcId:I

    invoke-static {p2, v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
