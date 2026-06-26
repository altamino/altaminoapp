.class Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "IncubatorAccountServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 63
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    iget-object p2, p2, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->account0:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    move-result p2

    if-nez p2, :cond_1

    .line 64
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    iget-object p2, p2, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->account0:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    iget-object v0, v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->userId0:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 65
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/narvii/master/MasterActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "disallowOnBoarding"

    .line 66
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x10008000

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$2;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    iget-object p1, p1, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
