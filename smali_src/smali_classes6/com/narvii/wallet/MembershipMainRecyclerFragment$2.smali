.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

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
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->E(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/android/billingclient/api/Purchase;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->B(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Ljava/lang/Runnable;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->B(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Ljava/lang/Runnable;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->B(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Ljava/lang/Runnable;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->F(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Runnable;)V

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$2;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 45
    return-void
.end method
