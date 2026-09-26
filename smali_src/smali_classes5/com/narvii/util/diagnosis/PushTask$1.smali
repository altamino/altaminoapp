.class Lcom/narvii/util/diagnosis/PushTask$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 3
    .line 4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 7
    .line 8
    const-string p2, "Request Fail"

    .line 9
    .line 10
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
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
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$1;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/diagnosis/DiagnosisTask;->now()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    iput-wide v0, p1, Lcom/narvii/util/diagnosis/PushTask;->sendTime:J

    .line 12
    return-void
.end method
