.class Lcom/narvii/achievements/StreakRepairDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "StreakRepairDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/StreakRepairDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/StreakRepairDialog;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$3;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$3;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-static {p1}, Lcom/narvii/achievements/StreakRepairDialog;->access$100(Lcom/narvii/achievements/StreakRepairDialog;)V

    return-void
.end method
