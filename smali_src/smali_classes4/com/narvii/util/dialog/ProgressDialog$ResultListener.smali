.class Lcom/narvii/util/dialog/ProgressDialog$ResultListener;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p4, p5, p4}, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;-><init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->getShowDelay()J

    .line 11
    move-result-wide p2

    .line 12
    .line 13
    const-wide/16 p4, 0x0

    .line 14
    .line 15
    cmp-long p4, p2, p4

    .line 16
    .line 17
    if-lez p4, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2, p3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 25
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

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Lcom/narvii/model/api/ApiResponse;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    iget v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->minShowTime:I

    .line 10
    int-to-long v0, v0

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/util/dialog/ProgressDialog;->b(Lcom/narvii/util/dialog/ProgressDialog;)J

    .line 14
    move-result-wide v2

    .line 15
    add-long/2addr v0, v2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long p2, v0, v2

    .line 25
    .line 26
    if-lez p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 34
    :goto_0
    return-void
.end method
