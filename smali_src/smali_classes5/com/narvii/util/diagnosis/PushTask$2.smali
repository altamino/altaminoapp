.class Lcom/narvii/util/diagnosis/PushTask$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/narvii/util/diagnosis/PushTask;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "result"

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const-string p1, "bind"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 20
    .line 21
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 24
    .line 25
    const-string p2, "Bind fail (no token)"

    .line 26
    .line 27
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 31
    const/4 p2, 0x0

    .line 32
    .line 33
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/diagnosis/PushTask;->requestSend()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 40
    .line 41
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v0, "Bind fail ("

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/util/diagnosis/PushTask$2;->this$0:Lcom/narvii/util/diagnosis/PushTask;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/diagnosis/PushTask;->lastBind()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v0, ")."

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    iput-object p2, p1, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    .line 74
    :goto_0
    return-void
.end method
