.class Lcom/narvii/feed/FeedHelper$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$10;->val$blog:Lcom/narvii/model/Blog;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/feed/FeedHelper$10;->val$intent:Landroid/content/Intent;

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/narvii/feed/FeedHelper$10;->val$hellMode:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStartFailed()V

    .line 46
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

    .line 1
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->val$blog:Lcom/narvii/model/Blog;

    .line 6
    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    iput p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 7
    invoke-static {p2}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "notification"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 8
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 10
    iget-object p2, p2, Lcom/narvii/feed/FeedHelper;->startQuizInterceptor:Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;->startQuizAfterRequestFinish()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$10;->val$intent:Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/narvii/feed/FeedHelper$10;->val$hellMode:Z

    .line 11
    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$10;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 12
    iget-object p1, p1, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStarted()V

    :cond_2
    :goto_0
    return-void
.end method
