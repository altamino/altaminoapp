.class public Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"


# static fields
.field private static final REQUEST_AUDIO:I = 0xfd08


# instance fields
.field private categorySections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/online/audio/model/AssetSection;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTabIndex:I

.field private error:Ljava/lang/String;

.field private errorView:Landroid/view/View;

.field private progressView:Landroid/view/View;

.field private viewPagerContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getObject(I)Lcom/narvii/media/online/audio/model/AssetSection;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-gt v0, p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetSection;

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    :goto_1
    return-object p1
.end method

.method static bridge synthetic n(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    return-void
.end method

.method private openLocalPicker()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_AUDIO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const/16 v1, 0x12f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 30
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->defaultTabIndex:I

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->openLocalPicker()V

    return-void
.end method

.method private retry()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->updateViews()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->sendRequest()V

    .line 10
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->retry()V

    return-void
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

.method private sendRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/asset/sound/section"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "api"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    new-instance v2, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;

    .line 29
    .line 30
    const-class v3, Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, p0, v3}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 37
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v3

    .line 25
    xor-int/2addr v1, v3

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->viewPagerContainer:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    move v4, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v4, 0x4

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->progressView:Landroid/view/View;

    .line 38
    .line 39
    const/16 v4, 0x8

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v0, v2

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    :goto_2
    move v0, v4

    .line 48
    .line 49
    .line 50
    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    move v2, v4

    .line 57
    .line 58
    .line 59
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    .line 62
    .line 63
    sget v1, Lcom/narvii/lib/R$id;->text:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method


# virtual methods
.method public defaultTabIndex()I
    .locals 1

    iget v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->defaultTabIndex:I

    return v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xe4e4df

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->getObject(I)Lcom/narvii/media/online/audio/model/AssetSection;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    const-string v1, "categorySection"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    const-class p1, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "add_music"

    return-object v0
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->getObject(I)Lcom/narvii/media/online/audio/model/AssetSection;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetSection;->getDisplayName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_category_tab:I

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-object p2
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0xfd08

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 19
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->sendRequest()V

    .line 11
    .line 12
    const-string p1, "targetOnlineAudioTabName"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "SFX"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    sget p1, Lcom/narvii/lib/R$string;->add_sfx:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    sget p1, Lcom/narvii/lib/R$string;->add_music:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 36
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$string;->recently_used:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget p2, Lcom/narvii/lib/R$drawable;->ic_history_used:I

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 21
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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_category:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$string;->recently_used:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "RecentUse"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "ndc://fragment/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-class v2, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v2, "android.intent.action.VIEW"

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    const v1, 0xfd08

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method public onPermissionGranted(I)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x12f

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "ndc://fragment/"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-class v1, Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "android.intent.action.VIEW"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    const-string p1, "open phone audio picker bundle is null"

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 58
    return-void

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const v0, 0xfd08

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1, v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 68
    :cond_1
    return-void
.end method

.method public onPositionChange(IF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onPositionChange(IF)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    move-result p2

    .line 16
    .line 17
    if-le p2, p1, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/media/online/audio/model/AssetSection;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p2, "SFX"

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    sget p1, Lcom/narvii/lib/R$string;->add_sfx:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    sget p1, Lcom/narvii/lib/R$string;->add_music:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->add_music:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 55
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x102000d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->progressView:Landroid/view/View;

    .line 13
    .line 14
    sget p2, Lcom/narvii/lib/R$id;->error_container:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    .line 21
    .line 22
    sget v0, Lcom/narvii/lib/R$id;->retry:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    sget p2, Lcom/narvii/lib/R$id;->music_category_pages:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->viewPagerContainer:Landroid/view/View;

    .line 43
    .line 44
    sget p2, Lcom/narvii/lib/R$id;->open_local_audio_picker:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$2;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    sget p2, Lcom/narvii/lib/R$id;->search_layout_container:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$3;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$3;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->updateViews()V

    .line 74
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xe4e4df

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method
