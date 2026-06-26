.class Lcom/narvii/util/diagnosis/PushTask$3;
.super Ljava/lang/Object;
.source "PushTask.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/diagnosis/PushTask;->rebindToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/diagnosis/PushTask;


# direct methods
.method constructor <init>(Lcom/narvii/util/diagnosis/PushTask;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bind"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gcmToken"

    .line 107
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    iput-object v1, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 109
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    const-string v0, "Bind fail (no token)"

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Lcom/narvii/util/diagnosis/PushTask;->requestSend()V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    iput-object v1, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 116
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind fail ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/diagnosis/PushTask$3;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    invoke-virtual {v1}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/narvii/util/diagnosis/PushTask$3;->call(Landroid/os/Bundle;)V

    return-void
.end method
