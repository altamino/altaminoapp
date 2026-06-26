.class final Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;
.super Ljava/lang/Object;
.source "CheckInService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInService;->showStreakRepairDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/achievements/StreakRepairDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInService;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;->this$0:Lcom/narvii/checkin/CheckInService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 194
    new-instance v0, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$1;-><init>(Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;->this$0:Lcom/narvii/checkin/CheckInService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/checkin/CheckInService;->setStreakRepairDialogShowing(Z)V

    .line 204
    new-instance p1, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$2;

    invoke-direct {p1, p0}, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1$2;-><init>(Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/narvii/achievements/StreakRepairDialog;

    invoke-virtual {p0, p1}, Lcom/narvii/checkin/CheckInService$showStreakRepairDialog$1;->call(Lcom/narvii/achievements/StreakRepairDialog;)V

    return-void
.end method
