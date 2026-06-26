.class Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "StoreItemPurchaseConfirmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->access$000(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V

    return-void
.end method
