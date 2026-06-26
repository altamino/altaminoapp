.class Lcom/narvii/drawer/DrawerHost$24$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$24;->call(Lcom/narvii/achievements/StreakRepairDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$24;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$24;)V
    .locals 0

    .line 2062
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$24$1;->this$1:Lcom/narvii/drawer/DrawerHost$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 2065
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$24$1;->this$1:Lcom/narvii/drawer/DrawerHost$24;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$24;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 2066
    new-instance p1, Lcom/narvii/drawer/DrawerHost$24$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$24$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$24$1;)V

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
