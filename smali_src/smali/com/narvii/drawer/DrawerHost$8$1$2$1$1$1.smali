.class Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;->this$5:Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;

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
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;->this$5:Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->willPlayLottery:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    .line 20
    :cond_0
    return-void
.end method
