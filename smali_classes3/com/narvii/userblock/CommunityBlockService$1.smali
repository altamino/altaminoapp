.class Lcom/narvii/userblock/CommunityBlockService$1;
.super Landroid/content/BroadcastReceiver;
.source "CommunityBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/userblock/CommunityBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/userblock/CommunityBlockService;


# direct methods
.method constructor <init>(Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/userblock/CommunityBlockService$1;->this$0:Lcom/narvii/userblock/CommunityBlockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "id"

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/userblock/CommunityBlockService$1;->this$0:Lcom/narvii/userblock/CommunityBlockService;

    invoke-static {p2}, Lcom/narvii/userblock/CommunityBlockService;->access$000(Lcom/narvii/userblock/CommunityBlockService;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/narvii/userblock/CommunityBlockService$1;->this$0:Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p1}, Lcom/narvii/userblock/CommunityBlockService;->update()V

    :cond_0
    return-void
.end method
