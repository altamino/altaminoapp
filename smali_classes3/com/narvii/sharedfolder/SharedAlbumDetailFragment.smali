.class public Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SharedAlbumDetailFragment.java"

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

    .line 62
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.album.header"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    const v0, 0x7f0f10bc

    .line 210
    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->album_add_photos2:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->updateHeader()V

    return-void
.end method

.method private updateHeader()V
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-nez v1, :cond_1

    return-void

    .line 423
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedAlbum;

    if-nez v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 431
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 432
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v3, 0x7f0b061f

    invoke-virtual {v2, v3, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 433
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v3, 0x7f09034a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/sharedfolder/HeaderLayout;

    .line 435
    invoke-virtual {v2, v1}, Lcom/narvii/sharedfolder/HeaderLayout;->setHeight1(I)V

    .line 436
    invoke-virtual {v2, v0}, Lcom/narvii/sharedfolder/HeaderLayout;->setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V

    return-void
.end method


# virtual methods
.method protected addPhotos(Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedAlbum;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$5;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/model/SharedAlbum;)V

    invoke-virtual {p1, v1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v1, p0, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v2, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$6;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Ljava/lang/String;Lcom/narvii/model/SharedAlbum;)V

    invoke-virtual {v1, v2}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkUploadPhotoEligible(Lcom/narvii/util/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 79
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 88
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    .line 89
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;

    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 125
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$3;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$3;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 135
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 136
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    const-string v2, "Album"

    iput-object v2, v1, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->source:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070282

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 140
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v2, p1

    move-object v3, p0

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v1, 0x3

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 142
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    new-instance p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$4;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;Lcom/narvii/app/NVContext;Lcom/narvii/list/MergeAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 207
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
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

    .line 322
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActiveChanged(Z)V

    .line 323
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "liveLayer"

    .line 324
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "object"

    .line 309
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/SharedAlbum;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedAlbum;

    .line 310
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-virtual {v1, v0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;->setObject(Lcom/narvii/model/SharedAlbum;)V

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/MergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 317
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 335
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shared_folder"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    .line 338
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 339
    new-instance v0, Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 340
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    const-string v1, "Album Detail"

    iput-object v1, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->source:Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotoPostHelper:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 344
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    .line 345
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 346
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "mediaPicker"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 347
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 349
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->actions:Ljava/util/List;

    sget-object v0, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->liveLayerTarget:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 214
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f00bd

    const/4 v0, 0x0

    .line 215
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0803e0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v1, 0x7f0f0fa2

    .line 216
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f080309

    .line 217
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 218
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v1, 0x7f0f03ce

    .line 219
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v1, 0x7f0f10bc

    .line 220
    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const p2, 0x7f0f0f71

    .line 221
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0486

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/SharedAlbum;

    if-nez v0, :cond_1

    return-void

    .line 448
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of p1, p1, Lcom/narvii/sharedfolder/PhotoUpload;

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 450
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz p1, :cond_2

    .line 451
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 295
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 244
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 245
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromAlbum(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    const-string v0, "Shared Album"

    invoke-virtual {p1, v0}, Lcom/narvii/share/ShareDialog;->setSource(Ljava/lang/String;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return v1

    .line 280
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$8;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    return v1

    .line 254
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedAlbum;

    .line 255
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0, p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper;->ifShowAlbumLockedDialog(Lcom/narvii/app/NVContext;Lcom/narvii/model/SharedAlbum;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$7;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->checkAlbumManageEligible(Lcom/narvii/util/Callback;)V

    :cond_0
    return v1

    :sswitch_3
    const-string p1, " Nav Bar"

    .line 250
    invoke-virtual {p0, p1}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->addPhotos(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00bd -> :sswitch_3
        0x7f0f03ce -> :sswitch_2
        0x7f0f0f71 -> :sswitch_1
        0x7f0f0fa2 -> :sswitch_0
        0x7f0f10bc -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 231
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 232
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v3, 0x7f0f00bd

    .line 233
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f0fa2

    .line 234
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f03ce

    .line 235
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f10bc

    .line 236
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v4}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canUploadPhoto()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0f0f71

    .line 237
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedFolderHelper:Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-virtual {v0}, Lcom/narvii/sharedfolder/SharedFolderHelper;->canManageAlbum()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 391
    new-instance v0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$9;-><init>(Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;)V

    .line 402
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    if-eqz v1, :cond_0

    const/16 v2, 0x200

    .line 403
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->adapter:Lcom/narvii/sharedfolder/SharedAlbumDetailFragment$Adapter;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 407
    invoke-virtual {v1, v2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f09080a

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 363
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 365
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 366
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->updateHeader()V

    .line 367
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    :cond_0
    const-string p2, "config"

    .line 371
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 372
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    .line 373
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f090b2d

    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 376
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 377
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 378
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 379
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method
