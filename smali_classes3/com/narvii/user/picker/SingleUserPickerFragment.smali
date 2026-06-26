.class public Lcom/narvii/user/picker/SingleUserPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SingleUserPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;,
        Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field spamProtection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    iput-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 74
    new-instance p1, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;-><init>(Lcom/narvii/user/picker/SingleUserPickerFragment;)V

    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    const-string p1, "exists"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    const-class v1, Lcom/narvii/model/User;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->exists:Ljava/util/List;

    .line 77
    new-instance p1, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;-><init>(Lcom/narvii/user/picker/SingleUserPickerFragment;)V

    .line 78
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    iget-object v1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 57
    iget-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatSpamProtectionEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->spamProtection:Z

    .line 58
    iget-boolean p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->spamProtection:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0f112f

    goto :goto_0

    :cond_0
    const p1, 0x7f0f02c3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    return-void
.end method

.method protected onPickUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p2, 0x7f0903ed

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 68
    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0f0c48

    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public target()Ljava/lang/String;
    .locals 1

    const-string v0, "member"

    return-object v0
.end method
