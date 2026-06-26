.class Lcom/narvii/userblock/GlobalBlockService$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/userblock/GlobalBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/userblock/GlobalBlockService;


# direct methods
.method constructor <init>(Lcom/narvii/userblock/GlobalBlockService;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$1;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$1;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    invoke-virtual {p1}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 60
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$1;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/userblock/GlobalBlockService;->refresh(Z)V

    return-void
.end method
