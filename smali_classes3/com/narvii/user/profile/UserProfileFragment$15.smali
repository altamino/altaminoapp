.class Lcom/narvii/user/profile/UserProfileFragment$15;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->sendStreakStatusRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/achievements/StreakStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$15;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

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

    .line 1519
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/achievements/StreakStatusResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1511
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1512
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$15;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget v0, p2, Lcom/narvii/achievements/StreakStatusResponse;->consecutiveCheckInDays:I

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->access$902(Lcom/narvii/user/profile/UserProfileFragment;I)I

    .line 1513
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$15;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget p2, p2, Lcom/narvii/achievements/StreakStatusResponse;->brokenStreaks:I

    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->access$1002(Lcom/narvii/user/profile/UserProfileFragment;I)I

    .line 1514
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$15;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$1100(Lcom/narvii/user/profile/UserProfileFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1508
    check-cast p2, Lcom/narvii/achievements/StreakStatusResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment$15;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/achievements/StreakStatusResponse;)V

    return-void
.end method
