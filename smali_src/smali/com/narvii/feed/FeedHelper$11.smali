.class Lcom/narvii/feed/FeedHelper$11;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V
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

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$11;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x1

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 61
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

    .line 1
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/FeedHelper$11;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V

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

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    :cond_0
    iget-object p1, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$11;->this$0:Lcom/narvii/feed/FeedHelper;

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

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper$11;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
