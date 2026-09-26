.class Lcom/narvii/community/MyCommunityListService$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/CommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$8;->this$0:Lcom/narvii/community/MyCommunityListService;

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

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/community/MyCommunityListService$8;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    .line 5
    const/4 p5, 0x0

    .line 6
    .line 7
    if-ne p3, p1, :cond_0

    .line 8
    .line 9
    iput-object p5, p2, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    .line 10
    .line 11
    :cond_0
    iput-object p4, p2, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 p3, 0x0

    .line 14
    .line 15
    iput-wide p3, p2, Lcom/narvii/community/MyCommunityListService;->suggestRequestTime:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p5}, Lcom/narvii/community/MyCommunityListService;->dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V

    .line 19
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/CommunityListResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$8;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 2
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 3
    iput-object v2, v0, Lcom/narvii/community/MyCommunityListService;->suggestRequest:Lcom/narvii/util/http/ApiRequest;

    .line 4
    :cond_0
    iget-object p1, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$8;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 5
    iget-object v0, p2, Lcom/narvii/master/CommunityListResponse;->tags:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/community/MyCommunityListService;->suggestTags:Ljava/lang/String;

    .line 6
    iget-object v0, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    iput-object v0, p1, Lcom/narvii/community/MyCommunityListService;->suggestList:Ljava/util/List;

    .line 7
    iput-object v2, p1, Lcom/narvii/community/MyCommunityListService;->suggestError:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/community/MyCommunityListService;->dispatchSuggestListChanged(Lcom/narvii/master/CommunityListResponse;)V

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
    check-cast p2, Lcom/narvii/master/CommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/MyCommunityListService$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/CommunityListResponse;)V

    return-void
.end method
