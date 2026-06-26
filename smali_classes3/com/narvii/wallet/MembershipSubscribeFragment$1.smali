.class Lcom/narvii/wallet/MembershipSubscribeFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MembershipSubscribeFragment.java"


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

    .line 136
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$1;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object p1, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/narvii/wallet/RedeemCouponComponent;->updateEarnFreeCoinsContent()V

    :cond_0
    return-void
.end method
