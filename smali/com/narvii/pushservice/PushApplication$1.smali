.class Lcom/narvii/pushservice/PushApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "PushApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/PushApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushApplication;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/PushApplication;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication$1;->this$0:Lcom/narvii/pushservice/PushApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.SID_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/narvii/pushservice/PushApplication$1;->this$0:Lcom/narvii/pushservice/PushApplication;

    const-string/jumbo p2, "push"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p2, v0}, Lcom/narvii/pushservice/PushService;->bindGcmToken(ZLcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method
