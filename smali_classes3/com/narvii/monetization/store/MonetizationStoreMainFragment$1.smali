.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MonetizationStoreMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$000(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.WALLET_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.COUPONS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$200(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 106
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$100(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/widget/WalletBalanceView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 107
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->access$100(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/widget/WalletBalanceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    :cond_3
    :goto_1
    return-void
.end method
