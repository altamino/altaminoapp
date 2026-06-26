.class Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$8$1$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$8$1$2$1;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 850
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->checkInPopUpDone:Z

    .line 851
    new-instance v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
