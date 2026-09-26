.class Lcom/narvii/drawer/DrawerHost$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$24$1;->this$1:Lcom/narvii/drawer/DrawerHost$24;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$24$1;->this$1:Lcom/narvii/drawer/DrawerHost$24;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost$24;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p1, Lcom/narvii/drawer/DrawerHost;->streakRepairDialogShowing:Z

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/drawer/DrawerHost$24$1$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$24$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$24$1;)V

    .line 13
    .line 14
    const-wide/16 v0, 0x1f4

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 18
    return-void
.end method
