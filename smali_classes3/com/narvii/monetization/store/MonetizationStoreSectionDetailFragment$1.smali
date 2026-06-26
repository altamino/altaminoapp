.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MonetizationStoreSectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$000(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$100(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
