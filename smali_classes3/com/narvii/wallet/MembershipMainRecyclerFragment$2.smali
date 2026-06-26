.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "MembershipMainRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->purchasedSku:Lcom/narvii/wallet/util/Purchase;

    .line 110
    iget-object p1, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 111
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iget-object p1, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 113
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iput-object p2, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    return-void
.end method
