.class Lcom/narvii/util/diagnosis/AccountTask$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AccountTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/diagnosis/AccountTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/diagnosis/AccountTask;


# direct methods
.method constructor <init>(Lcom/narvii/util/diagnosis/AccountTask;Ljava/lang/Class;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 47
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    if-lez p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-boolean p1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    if-nez p1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget p1, p1, Lcom/narvii/model/User;->status:I

    if-nez p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 40
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    iget-object p2, p2, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget p2, p2, Lcom/narvii/model/User;->status:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 35
    iget-object p1, p0, Lcom/narvii/util/diagnosis/AccountTask$1;->this$0:Lcom/narvii/util/diagnosis/AccountTask;

    const-string p2, "Not joined"

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/diagnosis/AccountTask$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
