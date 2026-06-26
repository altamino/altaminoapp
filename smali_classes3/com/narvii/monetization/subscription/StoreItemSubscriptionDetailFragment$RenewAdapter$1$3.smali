.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;
.super Ljava/lang/Object;
.source "StoreItemSubscriptionDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 456
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;->this$2:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 459
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1$3;->this$2:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;

    iget-object p1, p1, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method
