.class Lcom/narvii/wallet/MembershipSubscribeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

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
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->B(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/RedeemCouponComponent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->B(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/RedeemCouponComponent;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->updateEarnFreeCoinsContent()V

    .line 18
    :cond_0
    return-void
.end method
