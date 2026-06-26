.class Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ItemListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 2454
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

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

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2454
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;)V
    .locals 2

    .line 2457
    iget-object p1, p2, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 2458
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    iget-object v0, p2, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionCount:Ljava/lang/Integer;

    .line 2460
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    new-instance v0, Lcom/narvii/util/FilterHelper;

    iget-object v1, p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v0

    iget-object p2, p2, Lcom/narvii/model/api/ItemListResponse;->itemList:Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 2461
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
