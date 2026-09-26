.class Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->updateAccount()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;->this$4:Lcom/narvii/drawer/DrawerHost$8$1$2$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1;->this$3:Lcom/narvii/drawer/DrawerHost$8$1$2;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1$2;->this$2:Lcom/narvii/drawer/DrawerHost$8$1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8$1;->this$1:Lcom/narvii/drawer/DrawerHost$8;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$8;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    iput-boolean v1, v0, Lcom/narvii/drawer/DrawerHost;->checkInPopUpDone:Z

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/drawer/DrawerHost$8$1$2$1$1$1;-><init>(Lcom/narvii/drawer/DrawerHost$8$1$2$1$1;)V

    .line 32
    .line 33
    const-wide/16 v1, 0x5dc

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 37
    return-void
.end method
