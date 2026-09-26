.class public Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;
.super Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;
.source "SourceFile"


# instance fields
.field private nextMenu:Landroid/view/MenuItem;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "interest_picker"

    return-object v0
.end method

.method protected getSubmitAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "SaveIcon"

    return-object v0
.end method

.method protected getSubmitSemantic()Lcom/narvii/logging/ActSemantic;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    .line 3
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    .line 21
    const-string v1, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 32
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d03a9

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "com.narvii.action.INTEREST_CHANGED"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 24
    .line 25
    .line 26
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->doSubmit()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x104000a

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->nextMenu:Landroid/view/MenuItem;

    .line 13
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method

.method protected showNext(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 4
    return-void
.end method

.method protected updateButton()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->nextMenu:Landroid/view/MenuItem;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->isPickedEnough()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSingleMainInterestFragment;->nextMenu:Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;->isPickedEnough()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0xff

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v1, 0x80

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 32
    :cond_1
    return-void
.end method
