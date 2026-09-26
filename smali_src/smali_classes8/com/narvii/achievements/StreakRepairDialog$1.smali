.class Lcom/narvii/achievements/StreakRepairDialog$1;
.super Lcom/narvii/util/text/LinkTouchSpan;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog$1;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/text/LinkTouchSpan;-><init>(I)V

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
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/wallet/membership/MembershipActivity;->createMembershipIntent()Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "Source"

    .line 7
    .line 8
    const-string v1, "Streak Repair (Dialog)"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog$1;->this$0:Lcom/narvii/achievements/StreakRepairDialog;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/narvii/achievements/StreakRepairDialog$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    return-void
.end method
