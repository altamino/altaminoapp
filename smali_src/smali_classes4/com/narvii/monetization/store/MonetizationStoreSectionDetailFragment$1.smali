.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

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
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->A(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string p1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->y(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method
