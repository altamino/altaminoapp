.class Lcom/narvii/services/AppLogEventServiceProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "AppLogEventServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/AppLogEventServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/AppLogEventServiceProvider;


# direct methods
.method constructor <init>(Lcom/narvii/services/AppLogEventServiceProvider;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$1;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$1;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    invoke-static {p1}, Lcom/narvii/services/AppLogEventServiceProvider;->access$000(Lcom/narvii/services/AppLogEventServiceProvider;)V

    :cond_0
    return-void
.end method
