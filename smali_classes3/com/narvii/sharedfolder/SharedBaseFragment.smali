.class public abstract Lcom/narvii/sharedfolder/SharedBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SharedBaseFragment.java"


# static fields
.field public static final MAX_UPLOAD_PHOTO_COUNT:I = 0x19

.field public static final REQUEST_SELECT_PHOTO_GALLEY:I = 0x64


# instance fields
.field protected actionBarOverlay:Landroid/view/View;

.field protected dir:Ljava/io/File;

.field protected mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field protected sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field protected sharedPhotoPostHelper:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedBaseFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedBaseFragment;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method protected addPhotos(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v1, Lcom/narvii/sharedfolder/SharedBaseFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedBaseFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 117
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected hoverChange(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_0
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    if-eqz v0, :cond_1

    .line 73
    check-cast p1, Lcom/narvii/date/DateSection;

    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    new-instance p1, Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 96
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "shared_folder"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->dir:Ljava/io/File;

    .line 97
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 98
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "mediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 99
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 101
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 103
    :cond_0
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedPhotoPostHelper:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0622

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 142
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 122
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "config"

    .line 123
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 124
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 126
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p2, 0x2

    .line 127
    aget v1, v0, p2

    const v2, 0x3f59999a    # 0.85f

    mul-float v1, v1, v2

    aput v1, v0, p2

    .line 128
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f090031

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    return-void
.end method
