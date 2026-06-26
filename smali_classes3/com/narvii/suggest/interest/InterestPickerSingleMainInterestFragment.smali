.class public Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;
.super Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;
.source "InterestPickerSingleMainInterestFragment.java"


# instance fields
.field private nextMenu:Landroid/view/MenuItem;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;)V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "InterestsPicker"

    return-object v0
.end method

.method protected getSubmitAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "SaveIcon"

    return-object v0
.end method

.method protected getSubmitSemantic()Lcom/narvii/logging/ActSemantic;
    .locals 1

    .line 110
    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 48
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 63
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 65
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b036e

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.INTEREST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 99
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 54
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->doSubmit()V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x104000a

    .line 71
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->nextMenu:Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected showNext(Landroid/os/Bundle;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method protected updateButton()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->nextMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->isPickedEnough()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 123
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->nextMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->isPickedEnough()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method
