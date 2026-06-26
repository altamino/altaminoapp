.class Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;
.super Ljava/lang/Object;
.source "IncubatorAccountServiceProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountService;)V
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

    .line 46
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider$1;->this$0:Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;

    iget-object v1, v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, v0, Lcom/narvii/services/incubator/IncubatorAccountServiceProvider;->keychainReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
