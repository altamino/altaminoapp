.class public Lcom/narvii/user/picker/SingleUserPickerFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;-><init>(Lcom/narvii/user/picker/SingleUserPickerFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    .line 8
    .line 9
    const-string p1, "exists"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    .line 16
    .line 17
    const-class v1, Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, v0, Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;->exists:Ljava/util/List;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/narvii/user/picker/SingleUserPickerFragment$WithSearchAdapter;-><init>(Lcom/narvii/user/picker/SingleUserPickerFragment;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->adapter:Lcom/narvii/user/picker/SingleUserPickerFragment$Adapter;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 41
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatSpamProtectionEnabled()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/user/picker/SingleUserPickerFragment;->spamProtection:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    const p1, 0x7f12123a

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    const p1, 0x7f12030e

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 29
    const/4 p1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 33
    return-void
.end method

.method protected onPickUser(Lcom/narvii/model/User;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "user"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const/4 p1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 23
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a04eb

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of p2, p1, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    const p2, 0x7f120d75

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    return-void
.end method

.method public target()Ljava/lang/String;
    .locals 1

    const-string v0, "member"

    return-object v0
.end method
