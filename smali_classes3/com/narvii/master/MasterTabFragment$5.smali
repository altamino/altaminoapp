.class Lcom/narvii/master/MasterTabFragment$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MasterTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTabFragment;->sendGlobalConfigRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/request/ConfigurationApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment;Ljava/lang/Class;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$5;->this$0:Lcom/narvii/master/MasterTabFragment;

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

    .line 689
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/request/ConfigurationApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 679
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 680
    iget-object p1, p0, Lcom/narvii/master/MasterTabFragment$5;->this$0:Lcom/narvii/master/MasterTabFragment;

    const-string v0, "community"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 681
    new-instance v0, Lcom/narvii/model/Community;

    invoke-direct {v0}, Lcom/narvii/model/Community;-><init>()V

    const/4 v1, 0x0

    .line 682
    iput v1, v0, Lcom/narvii/model/Community;->id:I

    .line 683
    iget-object v2, p2, Lcom/narvii/community/request/ConfigurationApiResponse;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 684
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 676
    check-cast p2, Lcom/narvii/community/request/ConfigurationApiResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/MasterTabFragment$5;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/request/ConfigurationApiResponse;)V

    return-void
.end method
