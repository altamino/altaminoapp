.class Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "MonetizationStoreSectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedStickerEntryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 263
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$100(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$100(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$100(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const p1, 0x7f0b065c

    .line 294
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "account"

    .line 295
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 296
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/model/User;->isLeader()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const p3, 0x7f090828

    .line 297
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 298
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {v1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$200(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)I

    move-result v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 299
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$200(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 276
    const-class p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 277
    iget-object p2, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {p2}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->access$200(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)I

    move-result p2

    const-string p3, "pendingRequestCount"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
