.class final Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1;
.super Ljava/lang/Object;
.source "CheckInService.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;->call(Lcom/narvii/achievements/StreakRepairDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1;->this$0:Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 195
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1;->this$0:Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;->this$0:Lcom/narvii/checkin/CheckInService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInService;->setStreakRepairDialogShowing(Z)V

    .line 196
    new-instance p1, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1$1;-><init>(Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
