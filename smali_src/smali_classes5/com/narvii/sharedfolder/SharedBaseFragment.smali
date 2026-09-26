.class public abstract Lcom/narvii/sharedfolder/SharedBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/sharedfolder/SharedBaseFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedBaseFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedBaseFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 11
    return-void
.end method


# virtual methods
.method protected addPhotos(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/sharedfolder/SharedBaseFragment$2;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedBaseFragment;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected hoverChange(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;->getTitle()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lcom/narvii/date/DateSection;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/date/DateSection;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedBaseFragment;->getTitle()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 18
    .line 19
    new-instance p1, Ljava/io/File;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "shared_folder"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->dir:Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "mediaPicker"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 78
    .line 79
    :cond_0
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 83
    .line 84
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->sharedPhotoPostHelper:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d06d1

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

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 17
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x3

    .line 21
    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 26
    const/4 p2, 0x2

    .line 27
    .line 28
    aget v1, v0, p2

    .line 29
    .line 30
    .line 31
    const v2, 0x3f59999a    # 0.85f

    .line 32
    mul-float/2addr v1, v2

    .line 33
    .line 34
    aput v1, v0, p2

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 38
    move-result p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0061

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedBaseFragment;->actionBarOverlay:Landroid/view/View;

    .line 51
    return-void
.end method
