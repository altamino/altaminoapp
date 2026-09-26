.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->val$ndcId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "id"

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->val$ndcId:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->e(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseCanceled()V

    .line 44
    :cond_0
    return-void
.end method
