.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AvatarFrameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

.field final synthetic val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Ljava/lang/Class;Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$callback:Lcom/narvii/util/Callback;

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

    .line 100
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 101
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 102
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 86
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 87
    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->access$000(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V

    .line 92
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 93
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
