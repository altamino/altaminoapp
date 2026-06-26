.class public Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "OnlineAudioPickerCategoryFragment.java"


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

    .line 46
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->retry()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->openLocalPicker()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->defaultTabIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$502(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    return-object p1
.end method

.method private getObject(I)Lcom/narvii/media/online/audio/model/AssetSection;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/online/audio/model/AssetSection;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private openLocalPicker()V
    .locals 2

    .line 250
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 251
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const/16 v1, 0x12f

    .line 252
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return-void
.end method

.method private retry()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->updateViews()V

    .line 208
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->sendRequest()V

    return-void
.end method

.method private sendRequest()V
    .locals 4

    .line 162
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/asset/sound/section"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "api"

    .line 163
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 164
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;

    const-class v3, Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 196
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->resetAdapter()V

    .line 197
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    .line 199
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->viewPagerContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->progressView:Landroid/view/View;

    const/16 v4, 0x8

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public defaultTabIndex()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->defaultTabIndex:I

    return v0
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 72
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe4e4df

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 2

    .line 240
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->getObject(I)Lcom/narvii/media/online/audio/model/AssetSection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 244
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "categorySection"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 235
    const-class p1, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryPageFragment;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AddMusic"

    return-object v0
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->getObject(I)Lcom/narvii/media/online/audio/model/AssetSection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/online/audio/model/AssetSection;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 227
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$layout;->media_audio_online_picker_category_tab:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 228
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xfd08

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 281
    invoke-virtual {p0, v0, p3}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 284
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 61
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->sendRequest()V

    const-string p1, "targetOnlineAudioTabName"

    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SFX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    sget p1, Lcom/narvii/lib/R$string;->add_sfx:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    .line 65
    :cond_0
    sget p1, Lcom/narvii/lib/R$string;->add_music:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 78
    sget p2, Lcom/narvii/lib/R$string;->recently_used:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->ic_history_used:I

    .line 79
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 80
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 101
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_category:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/narvii/lib/R$string;->recently_used:I

    if-ne v0, v1, :cond_0

    .line 86
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "RecentUse"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 87
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/media/online/audio/OnlineAudioHistoryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0xfd08

    .line 88
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPermissionGranted(I)V
    .locals 2

    const/16 v0, 0x12f

    if-ne p1, v0, :cond_1

    .line 265
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://fragment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "open phone audio picker bundle is null"

    .line 269
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void

    .line 273
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const v0, 0xfd08

    .line 274
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onPositionChange(IF)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onPositionChange(IF)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    move-result p1

    .line 149
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p1, :cond_1

    .line 150
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->categorySections:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/online/audio/model/AssetSection;

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p1, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    const-string p2, "SFX"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    sget p1, Lcom/narvii/lib/R$string;->add_sfx:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    .line 154
    :cond_0
    sget p1, Lcom/narvii/lib/R$string;->add_music:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    goto :goto_0

    .line 157
    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->add_music:I

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x102000d

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->progressView:Landroid/view/View;

    .line 109
    sget p2, Lcom/narvii/lib/R$id;->error_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    .line 110
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->errorView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget p2, Lcom/narvii/lib/R$id;->music_category_pages:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->viewPagerContainer:Landroid/view/View;

    .line 118
    sget p2, Lcom/narvii/lib/R$id;->open_local_audio_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$2;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget p2, Lcom/narvii/lib/R$id;->search_layout_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$3;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->updateViews()V

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 213
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe4e4df

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method
