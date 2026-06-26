.class Lcom/narvii/feed/FeedHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V
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
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$2;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 324
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 325
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$2;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

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

    .line 311
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/FeedHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 315
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$2;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 316
    instance-of p1, p2, Lcom/narvii/model/api/BlogResponse;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/narvii/model/api/BlogResponse;

    iget-object p1, p1, Lcom/narvii/model/api/BlogResponse;->taggedBlogCategoryList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$2;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p2}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object v1

    iget-object p2, p2, Lcom/narvii/model/api/FeedResponse;->taggedObjects:Ljava/util/List;

    invoke-static {v0, v1, p2, p1}, Lcom/narvii/feed/FeedHelper;->access$100(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
