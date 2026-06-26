.class Lcom/narvii/feed/FeedHelper$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$failCallback:Lcom/narvii/util/Callback;

.field final synthetic val$successCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$9;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$9;->val$successCallback:Lcom/narvii/util/Callback;

    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$9;->val$failCallback:Lcom/narvii/util/Callback;

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

    .line 569
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$9;->val$failCallback:Lcom/narvii/util/Callback;

    invoke-interface {p1, p5}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 570
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$9;->this$0:Lcom/narvii/feed/FeedHelper;

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

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$9;->val$successCallback:Lcom/narvii/util/Callback;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
