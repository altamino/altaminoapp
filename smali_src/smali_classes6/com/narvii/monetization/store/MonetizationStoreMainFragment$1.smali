.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

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
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->J(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)V

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    const-string p1, "com.narvii.action.WALLET_CHANGED"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    const-string p1, "com.narvii.action.COUPONS_CHANGED"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    const-string p1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->E(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/widget/WalletBalanceView;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->E(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/widget/WalletBalanceView;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/narvii/widget/WalletBalanceView;->refresh()V

    .line 83
    :cond_3
    :goto_1
    return-void
.end method
