.class public Lcom/narvii/suggest/interest/InterestPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "InterestPickerFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
    }
.end annotation


# static fields
.field public static final INTEREST_CHANGED:Ljava/lang/String; = "com.narvii.action.INTEREST_CHANGED"

.field public static final STEP_BASIC_INFO:I = 0x1

.field public static final STEP_MAIN_INTEREST:I = 0x2

.field public static final STEP_SUB_INTEREST:I = 0x3


# instance fields
.field private canSkipAll:Z

.field private data:Landroid/os/Bundle;

.field private forceSelect:Z

.field private interestPickerStyle:I

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    const/4 v1, 0x2

    .line 51
    iput v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    .line 52
    iput-boolean v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->forceSelect:Z

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    .line 55
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->forceSelect:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/suggest/interest/InterestPickerFragment;)I
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->getStackSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/suggest/interest/InterestPickerFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/suggest/interest/InterestPickerFragment;)Landroid/os/Bundle;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    return p0
.end method

.method private getStackSize()I
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    return v0
.end method

.method private showStep(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 156
    :cond_0
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;-><init>()V

    goto :goto_0

    .line 153
    :cond_1
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;-><init>()V

    goto :goto_0

    .line 150
    :cond_2
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;

    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestPickerBaseInfoFragment;-><init>()V

    :goto_0
    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 184
    iget-boolean p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->forceSelect:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 194
    :cond_1
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 195
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    const-string v1, "interestPickerStyle"

    .line 69
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    .line 70
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    const-string v1, "canSkipAll"

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    if-nez p1, :cond_1

    .line 75
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 76
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 78
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    goto :goto_0

    :cond_1
    const-string v0, "currentStep"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 82
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0368

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.INTEREST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 96
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    const-string v1, "currentStep"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 125
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_1
    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->getStackSize()I

    move-result p1

    if-nez p1, :cond_2

    .line 131
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showStep(I)V

    :cond_2
    return-void
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f01000f

    const v3, 0x7f010010

    const v4, 0x7f010011

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const v1, 0x7f0904ba

    .line 176
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected showLast()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method protected showNext()V
    .locals 2

    .line 211
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    invoke-direct {p0, v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showStep(I)V

    :goto_1
    return-void
.end method
