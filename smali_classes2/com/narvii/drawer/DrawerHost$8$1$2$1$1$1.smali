.class Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;->this$5:Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;->this$5:Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    :cond_0
    return-void
.end method
