.class public Lcom/narvii/suggest/interest/InterestPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

.field public static final PARAM_CAN_SKIP_ALL:Ljava/lang/String; = "canSkipAll"

.field public static final STEP_BIRTHDAY:I = 0x1

.field public static final STEP_GENDER:I = 0x2

.field public static final STEP_MAIN_INTEREST:I = 0x3

.field public static final STEP_SUB_INTEREST:I = 0x4


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    iput v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->forceSelect:Z

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerFragment$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 29
    return-void
.end method

.method private getStackSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private synthetic lambda$showStep$0(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showStep(I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-class p1, Lcom/narvii/birthday/EnterBirthdayFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "param_birthday_type"

    .line 25
    .line 26
    sget-object v1, Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;->WELCOME:Lcom/narvii/birthday/EnterBirthdayFragment$BirthdayType;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    .line 31
    const-string v0, "canSkipAll"

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    .line 38
    const/16 v0, 0xc47

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 42
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/suggest/interest/InterestPickerFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->lambda$showStep$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/suggest/interest/InterestPickerFragment;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/suggest/interest/InterestPickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->forceSelect:Z

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/suggest/interest/InterestPickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    return p0
.end method

.method static bridge synthetic s(Lcom/narvii/suggest/interest/InterestPickerFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->getStackSize()I

    move-result p0

    return p0
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showStep(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "account"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/suggest/interest/b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/narvii/suggest/interest/b;-><init>(Lcom/narvii/suggest/interest/InterestPickerFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->hasBirthday(Lcom/narvii/util/Callback;)V

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    const/4 v0, 0x3

    .line 25
    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    const/4 v0, 0x4

    .line 28
    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    const/4 p1, 0x0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;-><init>()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestPickerMainInterestFragment;-><init>()V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Lcom/narvii/suggest/interest/InterestPickerGenderFragment;-><init>()V

    .line 49
    .line 50
    :goto_0
    if-eqz p1, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 58
    :goto_1
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    .line 5
    const/16 p3, 0xc47

    .line 6
    .line 7
    if-ne p1, p3, :cond_3

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-eq p2, p1, :cond_2

    .line 11
    const/4 p1, 0x2

    .line 12
    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x3

    .line 16
    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p2, "Skip"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    if-nez p2, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showStep(I)V

    .line 52
    :cond_3
    :goto_1
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->u0()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-gt p1, v0, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->forceSelect:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    :cond_1
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 21
    sub-int/2addr p1, v0

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i1()V

    .line 31
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "interestPickerStyle"

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 18
    .line 19
    const-string v0, "canSkipAll"

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->canSkipAll:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    const-string v0, "currentStep"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 46
    .line 47
    :goto_0
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    .line 50
    .line 51
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 60
    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    .line 62
    .line 63
    const-string v1, "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER"

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    const p3, 0x7f0d03a2

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
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 27
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "currentStep"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->data:Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 16
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
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->getStackSize()I

    .line 47
    move-result p1

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget p1, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showStep(I)V

    .line 55
    :cond_2
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f010010

    .line 19
    .line 20
    .line 21
    const v2, 0x7f010011

    .line 22
    .line 23
    .line 24
    const v3, 0x7f01000e

    .line 25
    .line 26
    .line 27
    const v4, 0x7f01000f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a05ff

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->u(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 46
    return-void
.end method

.method protected showLast()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 5
    move-result v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 11
    :cond_0
    return-void
.end method

.method protected showNext()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->interestPickerStyle:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerFragment;->step:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/narvii/suggest/interest/InterestPickerFragment;->showStep(I)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 19
    :goto_0
    return-void
.end method
