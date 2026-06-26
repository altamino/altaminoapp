.class Lcom/narvii/util/diagnosis/PushTask$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PushTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/diagnosis/PushTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/diagnosis/PushTask;


# direct methods
.method constructor <init>(Lcom/narvii/util/diagnosis/PushTask;Ljava/lang/Class;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 58
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    const-string p2, "Request Fail"

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 52
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    return-void
.end method
