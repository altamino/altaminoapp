.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;
.super Ljava/lang/Object;
.source "StoreItemPurchaseHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showJoinCommunityDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;I)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    iput p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->val$ndcId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 302
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 303
    iget v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->val$ndcId:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$900(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseCanceled()V

    :cond_0
    return-void
.end method
