.class Lcom/narvii/feed/FeedHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FeedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->copyAndEdit(Lcom/narvii/model/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ItemResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$item:Lcom/narvii/model/Item;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Item;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p3, p0, Lcom/narvii/feed/FeedHelper$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/feed/FeedHelper$3;->val$item:Lcom/narvii/model/Item;

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

    .line 406
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 407
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

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

    .line 380
    check-cast p2, Lcom/narvii/model/api/ItemResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/feed/FeedHelper$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 386
    new-instance p1, Lcom/narvii/notification/Notification;

    new-instance v0, Lcom/narvii/item/ItemPinObject;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$3;->val$item:Lcom/narvii/model/Item;

    invoke-virtual {v1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/narvii/item/ItemPinObject;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 387
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {v0}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 388
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 390
    new-instance p1, Lcom/narvii/item/post/ItemPost;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {v0}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p2, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    iget-object v2, p2, Lcom/narvii/model/api/FeedResponse;->taggedObjects:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lcom/narvii/item/post/ItemPost;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Item;Ljava/util/List;)V

    .line 391
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {v1}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/item/post/ItemPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    iget-object v1, p2, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    iget-object v1, v1, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string v2, "itemId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fork"

    const/4 v2, 0x1

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    .line 395
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object p1, p2, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "feed"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p1, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "loggingSource"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    iget-object p1, p1, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string p1, "loggingOrigin"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$3;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
