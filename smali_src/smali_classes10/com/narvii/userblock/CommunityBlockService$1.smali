.class Lcom/narvii/userblock/CommunityBlockService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/userblock/CommunityBlockService$1;->this$0:Lcom/narvii/userblock/CommunityBlockService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "id"

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/userblock/CommunityBlockService$1;->this$0:Lcom/narvii/userblock/CommunityBlockService;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/userblock/CommunityBlockService;->a(Lcom/narvii/userblock/CommunityBlockService;)I

    .line 13
    move-result p2

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/userblock/CommunityBlockService$1;->this$0:Lcom/narvii/userblock/CommunityBlockService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/userblock/CommunityBlockService;->update()V

    .line 21
    :cond_0
    return-void
.end method
