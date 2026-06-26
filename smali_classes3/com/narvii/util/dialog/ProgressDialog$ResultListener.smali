.class Lcom/narvii/util/dialog/ProgressDialog$ResultListener;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 117
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

    .line 145
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;

    invoke-direct {p1, p0, p4, p5, p4}, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;-><init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->getShowDelay()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-lez p6, :cond_0

    .line 172
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Lcom/narvii/model/api/ApiResponse;)V

    .line 132
    iget-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    iget v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->minShowTime:I

    int-to-long v0, v0

    invoke-static {p2}, Lcom/narvii/util/dialog/ProgressDialog;->access$000(Lcom/narvii/util/dialog/ProgressDialog;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 134
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
