.class Lcom/narvii/master/invitation/InviteHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "InviteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/invitation/InviteHelper;->requestInviteIdentify(Ljava/lang/String;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/invitation/CommunityInviteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/invitation/InviteHelper;

.field final synthetic val$identifyInterface:Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;


# direct methods
.method constructor <init>(Lcom/narvii/master/invitation/InviteHelper;Ljava/lang/Class;Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/master/invitation/InviteHelper$1;->this$0:Lcom/narvii/master/invitation/InviteHelper;

    iput-object p3, p0, Lcom/narvii/master/invitation/InviteHelper$1;->val$identifyInterface:Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;

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

    .line 46
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/master/invitation/InviteHelper$1;->val$identifyInterface:Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1, p4}, Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;->onIdentifyError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 39
    iget-object p1, p0, Lcom/narvii/master/invitation/InviteHelper$1;->val$identifyInterface:Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1, p2}, Lcom/narvii/master/invitation/InviteHelper$LinkIdentifyInterface;->onIdentifySuccess(Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/invitation/InviteHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
