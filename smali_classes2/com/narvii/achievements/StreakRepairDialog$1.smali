.class Lcom/narvii/achievements/StreakRepairDialog$1;
.super Lcom/narvii/util/text/LinkTouchSpan;
.source "StreakRepairDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/achievements/StreakRepairDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/CheckInHistory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/StreakRepairDialog;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/StreakRepairDialog;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$1;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/text/LinkTouchSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 160
    const-class p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Streak Repair (Dialog)"

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$1;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
