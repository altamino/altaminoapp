.class Lcom/narvii/story/detail/StoryFeedHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoryFeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryFeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/FeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryFeedHelper;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryFeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$1;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    iput-object p3, p0, Lcom/narvii/story/detail/StoryFeedHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 151
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 152
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$1;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/story/detail/StoryFeedHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 143
    instance-of p1, p2, Lcom/narvii/model/api/BlogResponse;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/BlogResponse;

    iget-object p1, p1, Lcom/narvii/model/api/BlogResponse;->taggedBlogCategoryList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$1;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-virtual {p2}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object v1

    iget-object p2, p2, Lcom/narvii/model/api/FeedResponse;->taggedObjects:Ljava/util/List;

    invoke-static {v0, v1, p2, p1}, Lcom/narvii/story/detail/StoryFeedHelper;->access$000(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
