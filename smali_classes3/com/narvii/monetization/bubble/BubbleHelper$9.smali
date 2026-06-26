.class Lcom/narvii/monetization/bubble/BubbleHelper$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BubbleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V
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

.field final synthetic val$applyToAll:Z

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$chatBubble:Lcom/narvii/model/ChatBubble;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$threadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;ZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$callback:Lcom/narvii/util/Callback;

    iput-boolean p5, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$applyToAll:Z

    iput-object p6, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$chatBubble:Lcom/narvii/model/ChatBubble;

    iput-object p7, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$threadId:Ljava/lang/String;

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

    .line 309
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 310
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 311
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 312
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 294
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 295
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 296
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 299
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$applyToAll:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$chatBubble:Lcom/narvii/model/ChatBubble;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$threadId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-virtual {v0, v1, p2, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
