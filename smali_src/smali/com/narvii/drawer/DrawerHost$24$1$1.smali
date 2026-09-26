.class Lcom/narvii/drawer/DrawerHost$24$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$24$1;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/drawer/DrawerHost$24$1;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$24$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$24$1$1;->this$2:Lcom/narvii/drawer/DrawerHost$24$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$24$1$1;->this$2:Lcom/narvii/drawer/DrawerHost$24$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$24$1;->this$1:Lcom/narvii/drawer/DrawerHost$24;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$24;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    .line 14
    :cond_0
    return-void
.end method
