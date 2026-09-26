.class Lcom/narvii/userblock/GlobalBlockService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$1;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$1;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService$1;->this$0:Lcom/narvii/userblock/GlobalBlockService;

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/userblock/GlobalBlockService;->refresh(Z)V

    .line 12
    return-void
.end method
