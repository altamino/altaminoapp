.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;
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


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseCanceled()V

    :cond_0
    return-void
.end method
