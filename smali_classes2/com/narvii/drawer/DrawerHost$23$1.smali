.class Lcom/narvii/drawer/DrawerHost$23$1;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/drawer/DrawerHost$23;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost$23;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$23$1;->this$1:Lcom/narvii/drawer/DrawerHost$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$23$1;->this$1:Lcom/narvii/drawer/DrawerHost$23;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost$23;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Lcom/narvii/drawer/DrawerHost;->showLotteryPrompt()V

    return-void
.end method
