.class Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->account0:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    .line 8
    move-result p2

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->account0:Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->userId0:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v0, Lcom/narvii/master/MasterActivity;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    const-string v0, "disallowOnBoarding"

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const v0, 0x10008000

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 58
    :cond_1
    return-void
.end method
