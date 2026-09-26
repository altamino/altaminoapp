.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->this$1:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    .line 3
    .line 4
    iget-object p2, p1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$checkBox:Landroid/widget/CheckBox;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    .line 14
    .line 15
    iget-boolean p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 19
    return-void
.end method
