.class Lcom/narvii/feed/FeedHelper$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$blog:Lcom/narvii/model/Blog;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$hellMode:Z

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$10;->val$blog:Lcom/narvii/model/Blog;

    iput-object p5, p0, Lcom/narvii/feed/FeedHelper$10;->val$intent:Landroid/content/Intent;

    iput-boolean p6, p0, Lcom/narvii/feed/FeedHelper$10;->val$hellMode:Z

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

    .line 606
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 607
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 608
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p1, p1, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_1

    .line 612
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStartFailed()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 603
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/FeedHelper$10;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 618
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 619
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 622
    :cond_0
    iget-object p1, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 623
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->val$blog:Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    iput p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 624
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "notification"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 625
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 626
    invoke-virtual {p2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    const/4 p2, 0x1

    .line 629
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object v0, v0, Lcom/narvii/feed/FeedHelper;->startQuizInterceptor:Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;->startQuizAfterRequestFinish()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-eqz p2, :cond_2

    .line 634
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$10;->val$intent:Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/narvii/feed/FeedHelper$10;->val$hellMode:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    .line 635
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p1, p1, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_2

    .line 636
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStarted()V

    :cond_2
    return-void
.end method
