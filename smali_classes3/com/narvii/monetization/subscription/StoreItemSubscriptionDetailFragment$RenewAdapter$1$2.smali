.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;
.super Ljava/lang/Object;
.source "StoreItemSubscriptionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->call(Lcom/narvii/list/prefs/PrefsToggle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;->this$2:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 453
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$2;->this$2:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;

    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$500(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Z)V

    return-void
.end method
