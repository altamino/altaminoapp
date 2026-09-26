.class Lcom/narvii/monetization/bubble/BubbleHelper$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$applyToAll:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$chatBubble:Lcom/narvii/model/ChatBubble;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$threadId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 16
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
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 34
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 18
    .line 19
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$applyToAll:Z

    .line 20
    const/4 p2, 0x0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$chatBubble:Lcom/narvii/model/ChatBubble;

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$threadId:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$9;->val$chatBubble:Lcom/narvii/model/ChatBubble;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, p2, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V

    .line 44
    :cond_2
    :goto_0
    return-void
.end method
