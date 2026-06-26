.class Lcom/narvii/monetization/bubble/BubbleHelper$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BubbleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->changeBubbleActiveStatus(Lcom/narvii/model/ChatBubble;ZLcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

.field final synthetic val$active:Z

.field final synthetic val$bubble:Lcom/narvii/model/ChatBubble;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatBubble;ZLcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$callback:Lcom/narvii/util/Callback;

    iput-object p4, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$bubble:Lcom/narvii/model/ChatBubble;

    iput-boolean p5, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$active:Z

    iput-object p6, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 242
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 243
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 244
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 245
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 230
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 231
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$bubble:Lcom/narvii/model/ChatBubble;

    iget-boolean p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$active:Z

    iput-boolean p2, p1, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 234
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string p2, "notification"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 235
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$bubble:Lcom/narvii/model/ChatBubble;

    const-string v1, "update"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 236
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 237
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$8;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
