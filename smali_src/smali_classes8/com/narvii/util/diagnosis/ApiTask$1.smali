.class Lcom/narvii/util/diagnosis/ApiTask$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/diagnosis/ApiTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/diagnosis/ApiTask;


# direct methods
.method constructor <init>(Lcom/narvii/util/diagnosis/ApiTask;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/diagnosis/ApiTask$1;->this$0:Lcom/narvii/util/diagnosis/ApiTask;

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
    iget-object p1, p0, Lcom/narvii/util/diagnosis/ApiTask$1;->this$0:Lcom/narvii/util/diagnosis/ApiTask;

    .line 3
    .line 4
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p3, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 7
    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string p5, "("

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p2, ") "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/narvii/util/diagnosis/ApiTask$1;->this$0:Lcom/narvii/util/diagnosis/ApiTask;

    .line 3
    .line 4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 7
    return-void
.end method
