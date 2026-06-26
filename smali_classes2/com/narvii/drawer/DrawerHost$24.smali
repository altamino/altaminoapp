.class Lcom/narvii/drawer/DrawerHost$24;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->showStreakRepairDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/achievements/StreakRepairDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 2058
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$24;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2062
    new-instance v0, Lcom/narvii/drawer/DrawerHost$24$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$24$1;-><init>(Lcom/narvii/drawer/DrawerHost$24;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 2077
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$24;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 2078
    new-instance p1, Lcom/narvii/drawer/DrawerHost$24$2;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$24$2;-><init>(Lcom/narvii/drawer/DrawerHost$24;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 2058
    check-cast p1, Lcom/narvii/achievements/StreakRepairDialog;

    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost$24;->call(Lcom/narvii/achievements/StreakRepairDialog;)V

    return-void
.end method
