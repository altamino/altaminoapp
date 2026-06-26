.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "StoreItemSubscriptionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 405
    invoke-direct {p0, p2}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->access$000(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 417
    instance-of v1, v0, Lcom/narvii/model/StoreItemBaseObject;

    if-nez v1, :cond_0

    return-void

    .line 422
    :cond_0
    check-cast v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 424
    invoke-virtual {v0}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v1

    .line 426
    invoke-virtual {v0}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    new-instance v0, Lcom/narvii/list/prefs/PrefsText;

    const v1, 0x7f0f014b

    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsText;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_1
    iget v0, v1, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 429
    new-instance v0, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object v2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v3, 0x7f0f0138

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/narvii/list/prefs/PrefsToggle;-><init>(ILjava/lang/String;)V

    .line 430
    iget-object v2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    const v3, 0x7f0f0145

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    const/4 v2, 0x0

    .line 431
    invoke-virtual {v0, v2}, Lcom/narvii/list/prefs/PrefsToggle;->setTextSingleLine(Z)V

    .line 432
    invoke-virtual {v1}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    move-result v2

    iput-boolean v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 433
    new-instance v2, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$1;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;Lcom/narvii/model/OwnershipInfo;)V

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 479
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 480
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsToggle;

    if-eqz v1, :cond_2

    .line 481
    check-cast v0, Lcom/narvii/list/prefs/PrefsToggle;

    const p1, 0x7f0b05b5

    .line 482
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09074b

    .line 483
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 484
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->textSingleLine:Z

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const p2, 0x7f090341

    .line 486
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 487
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object p3, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090213

    .line 489
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    const/4 p3, 0x0

    .line 490
    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 491
    iget-boolean p3, v0, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 492
    new-instance p3, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;

    invoke-direct {p3, p0, v0, p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter$2;-><init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$RenewAdapter;Lcom/narvii/list/prefs/PrefsToggle;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 502
    iget-boolean p2, v0, Lcom/narvii/list/prefs/PrefsItem;->enabled:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-object p1

    .line 504
    :cond_2
    instance-of v1, v0, Lcom/narvii/list/prefs/PrefsText;

    if-eqz v1, :cond_3

    .line 505
    check-cast v0, Lcom/narvii/list/prefs/PrefsItem;

    const p1, 0x7f0b05b2

    .line 506
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090b5b

    .line 507
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 508
    invoke-virtual {p0, v0}, Lcom/narvii/list/prefs/PrefsAdapter;->getPrefsText(Lcom/narvii/list/prefs/PrefsItem;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1

    .line 511
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
