.class Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->b(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 31
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$avatarFrame:Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->d(Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 25
    :cond_1
    return-void
.end method
