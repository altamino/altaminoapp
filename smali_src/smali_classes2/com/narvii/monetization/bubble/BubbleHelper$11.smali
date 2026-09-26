.class Lcom/narvii/monetization/bubble/BubbleHelper$11;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V
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

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->val$callback:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 34
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
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
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->val$callback:Lcom/narvii/util/Callback;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$11;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 18
    return-void
.end method
