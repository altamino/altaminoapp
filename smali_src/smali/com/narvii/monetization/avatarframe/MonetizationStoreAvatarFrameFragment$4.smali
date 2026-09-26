.class Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->prefetchTargetAvatarFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
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
    check-cast p2, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;->avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/narvii/monetization/store/data/StoreItem;->wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->D(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->A(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->y(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->A(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment$4;->this$0:Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->y(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;->H(Lcom/narvii/monetization/avatarframe/MonetizationStoreAvatarFrameFragment;Lcom/narvii/monetization/store/data/StoreItem;)V

    :cond_2
    return-void
.end method
