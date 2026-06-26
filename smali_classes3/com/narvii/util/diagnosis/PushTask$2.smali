.class Lcom/narvii/util/diagnosis/PushTask$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/narvii/util/diagnosis/PushTask;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bind"

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 68
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    const-string p2, "Bind fail (no token)"

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Lcom/narvii/util/diagnosis/PushTask;->requestSend()V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    iput-object v0, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 75
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bind fail ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    invoke-virtual {v0}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :goto_0
    return-void
.end method
