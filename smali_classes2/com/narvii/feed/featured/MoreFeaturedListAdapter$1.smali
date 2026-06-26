.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MoreFeaturedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->sendMoreFeaturedRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

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

    .line 102
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 103
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-virtual {p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 109
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    iget-object v0, p2, Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;->blogList:Ljava/util/List;

    iput-object v0, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 110
    iget-object v0, p2, Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    iput-object v0, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    .line 111
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->timeStamp:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    check-cast p2, Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;)V

    return-void
.end method
