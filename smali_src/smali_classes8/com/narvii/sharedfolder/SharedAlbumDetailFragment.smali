.class public Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;
    }
.end annotation


# static fields
.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

.field public static final REQUEST_EDIT:I = 0x1

.field public static final REQUEST_INFO:I = 0x2


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

.field final album_add_photos2:I

.field dir:Ljava/io/File;

.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field public liveLayerTarget:Ljava/lang/String;

.field protected mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field sharedPhotoPostHelper:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

.field public sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

.field public swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.album.header"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f1210fb

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->album_add_photos2:I

    .line 16
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->updateHeader()V

    return-void
.end method

.method private updateHeader()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    const v2, 0x7f07049e

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 46
    .line 47
    .line 48
    const v3, 0x7f0d06ce

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 54
    .line 55
    .line 56
    const v3, 0x7f0a042d

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/sharedfolder/HeaderLayout;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/narvii/sharedfolder/HeaderLayout;->setHeight1(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Lcom/narvii/sharedfolder/HeaderLayout;->setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected addPhotos(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/model/SharedAlbum;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Ljava/lang/String;Lcom/narvii/model/SharedAlbum;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$3;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$3;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 36
    .line 37
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 43
    .line 44
    const-string v2, "Album"

    .line 45
    .line 46
    iput-object v2, v1, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    const v1, 0x7f0704a0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v7

    .line 66
    .line 67
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 68
    move-object v2, p1

    .line 69
    move-object v3, p0

    .line 70
    move v4, v7

    .line 71
    move v5, v7

    .line 72
    move v6, v7

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 76
    const/4 v1, 0x3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    .line 86
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/list/MergeAdapter;)V

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 102
    return-object p1
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

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method protected hasVisitorBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "liveLayer"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_3

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const-string v0, "object"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-class v1, Lcom/narvii/model/SharedAlbum;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->setObject(Lcom/narvii/model/SharedAlbum;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "shared_folder"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 35
    .line 36
    const-string v1, "Album Detail"

    .line 37
    .line 38
    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->source:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotoPostHelper:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    .line 46
    const/4 v0, 0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    const-string v1, "mediaPicker"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 82
    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    new-instance v0, Lcom/narvii/media/MediaPickerFragment;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 108
    .line 109
    :cond_0
    if-nez p1, :cond_1

    .line 110
    .line 111
    const-string p1, "statistics"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 118
    .line 119
    const-string v0, "Album Opened"

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    const-string v0, "Source"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    const-string v0, "Album Opened Total"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 139
    .line 140
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    .line 141
    .line 142
    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    const/16 v0, 0x6a

    .line 153
    .line 154
    .line 155
    invoke-static {v0}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v0, "/"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f1200fc

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    const v2, 0x7f080503

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    const v1, 0x7f1210ad

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    const v3, 0x7f080413

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    const v1, 0x7f120439

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2, v1, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 46
    .line 47
    .line 48
    const v1, 0x7f1210fb

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p2, v1, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    const v0, 0x7f12107d

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04b5

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

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    instance-of p1, p1, Lcom/narvii/sharedfolder/PhotoUpload;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 41
    :cond_2
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
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromAlbum(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Lcom/narvii/share/ShareDialog;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "Shared Album"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    .line 35
    return v1

    .line 36
    .line 37
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    .line 46
    return v1

    .line 47
    .line 48
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    .line 73
    :cond_0
    return v1

    .line 74
    .line 75
    :sswitch_3
    const-string p1, " Nav Bar"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->addPhotos(Ljava/lang/String;)V

    .line 79
    return v1

    .line 80
    nop

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :sswitch_data_0
    .sparse-switch
        0x7f1200fc -> :sswitch_3
        0x7f120439 -> :sswitch_2
        0x7f12107d -> :sswitch_1
        0x7f1210ad -> :sswitch_0
        0x7f1210fb -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    const v3, 0x7f1200fc

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    move v4, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v1

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 42
    .line 43
    .line 44
    const v3, 0x7f1210ad

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    const v3, 0x7f120439

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    move v4, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v4, v1

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 75
    .line 76
    .line 77
    const v3, 0x7f1210fb

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    .line 89
    move-result v4

    .line 90
    .line 91
    if-eqz v4, :cond_3

    .line 92
    move v4, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    move v4, v1

    .line 95
    .line 96
    .line 97
    :goto_3
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    .line 99
    .line 100
    const v3, 0x7f12107d

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    .line 112
    move-result v0

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    move v1, v2

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x200

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 23
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0ab1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->updateHeader()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    instance-of p2, p2, Lcom/narvii/app/NVActivity;

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 51
    .line 52
    :cond_0
    const-string p2, "config"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 66
    move-result p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    .line 71
    .line 72
    const p2, 0x7f0a0e12

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 81
    const/4 p2, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 106
    return-void
.end method
