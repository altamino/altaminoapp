.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;
.super Ljava/lang/Object;
.source "StoreItemSubscriptionDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;Lcom/narvii/list/prefs/PrefsToggle;Landroid/widget/CheckBox;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    iput-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    iput-object p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 496
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    iget-object p2, p1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_0

    .line 497
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    iget-boolean p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
