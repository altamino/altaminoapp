.class Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AvatarFrameMediaGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;
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
.field final synthetic this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Ljava/lang/Class;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

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

    .line 72
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 73
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;)Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$000(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    check-cast p2, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity$1;->this$0:Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;

    invoke-virtual {p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameResponse;->object()Lcom/narvii/monetization/avatarframe/AvatarFrame;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;->access$000(Lcom/narvii/monetization/avatarframe/AvatarFrameMediaGalleryActivity;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    return-void
.end method
