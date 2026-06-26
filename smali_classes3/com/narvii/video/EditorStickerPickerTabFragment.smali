.class public final Lcom/narvii/video/EditorStickerPickerTabFragment;
.super Lcom/narvii/app/TabPagerFragment;
.source "EditorStickerPickerTabFragment.kt"

# interfaces
.implements Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;
.implements Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;
.implements Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;
.implements Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;,
        Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorStickerPickerTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorStickerPickerTabFragment.kt\ncom/narvii/video/EditorStickerPickerTabFragment\n*L\n1#1,347:1\n*E\n"
.end annotation


# instance fields
.field private final STICKER_PICKER_TYPE_GALLERY:I

.field private final STICKER_PICKER_TYPE_GIPHY:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentSticker:Lcom/narvii/media/giphy/GiphyItem;

.field private editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

.field private final giphyPackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/giphy/GiphyPack;",
            ">;"
        }
    .end annotation
.end field

.field private giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

.field private installingSticker:Lcom/narvii/video/model/StickerInfoPack;

.field private final internalGiphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private stickerFromLocalPicker:Z

.field private stickerPickerType:I

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/app/TabPagerFragment;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GALLERY:I

    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->internalGiphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    return-void
.end method

.method public static final synthetic access$dismiss(Lcom/narvii/video/EditorStickerPickerTabFragment;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->dismiss(Z)V

    return-void
.end method

.method public static final synthetic access$getCurrentSticker$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Lcom/narvii/media/giphy/GiphyItem;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    return-object p0
.end method

.method public static final synthetic access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getInternalGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->internalGiphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getSTICKER_PICKER_TYPE_GALLERY$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GALLERY:I

    return p0
.end method

.method public static final synthetic access$getSTICKER_PICKER_TYPE_GIPHY$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    return p0
.end method

.method public static final synthetic access$pickSticker(Lcom/narvii/video/EditorStickerPickerTabFragment;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->pickSticker(I)V

    return-void
.end method

.method public static final synthetic access$setCurrentSticker$p(Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    return-void
.end method

.method private final dismiss(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->forsakePreviewSticker()V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->savePreviewSticker()V

    .line 301
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const-string v0, "videoManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTasks()V

    .line 302
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->removeAllViewInstallStickerCallback()V

    .line 303
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 303
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 302
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final getTabView(Lcom/narvii/media/giphy/GiphyPack;)Landroid/view/View;
    .locals 3

    .line 324
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$layout;->giphy_sticker_tab_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "tab"

    .line 325
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$drawable;->giphy_sticker_tab_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    sget v1, Lcom/narvii/mediaeditor/R$id;->tab_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyPack;->featured_gif:Lcom/narvii/media/giphy/GiphyItem;

    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->thumbUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-object v0
.end method

.method private final pickSticker(I)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iput p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 278
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v1, 0x44

    const/16 v2, 0x80

    .line 279
    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setSize(IIII)V

    const/4 v1, 0x1

    .line 280
    iput-boolean v1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 283
    iget v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    const/4 p1, 0x4

    .line 284
    iput p1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 285
    iput-boolean v1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 286
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 286
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_2
    const/16 p1, 0x8

    .line 289
    iput p1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    move-object p1, v3

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v3, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    :cond_3
    return-void
.end method

.method private final resetTabList(Lcom/narvii/app/TabPagerAdapter;)V
    .locals 11

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 311
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_0
    move v3, v2

    .line 312
    :goto_1
    iget-object v4, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "giphyPackList[realIndex]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/narvii/media/giphy/GiphyPack;

    .line 313
    invoke-virtual {v3}, Lcom/narvii/media/giphy/GiphyPack;->id()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/narvii/media/giphy/GiphyPack;->id()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v6, v4

    .line 314
    invoke-direct {p0, v3}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getTabView(Lcom/narvii/media/giphy/GiphyPack;)Landroid/view/View;

    move-result-object v8

    .line 315
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 316
    iget-object v3, v3, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

    const-string v4, "stickerPackId"

    invoke-virtual {v10, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v3, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    const/4 v7, 0x0

    const-class v9, Lcom/narvii/video/EditorStickerPickerListFragment;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/narvii/app/TabPagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p1, v0}, Lcom/narvii/app/TabPagerAdapter;->setTabs(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 124
    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StickerPicker"

    return-object v0
.end method

.method public final notifyPagerSelectedStickerChanged(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 5

    .line 253
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v0}, Lcom/narvii/app/TabPagerAdapter;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 255
    invoke-virtual {v0, v1}, Lcom/narvii/app/TabPagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 256
    instance-of v4, v3, Lcom/narvii/video/EditorStickerPickerListFragment;

    if-eqz v4, :cond_0

    .line 257
    check-cast v3, Lcom/narvii/video/EditorStickerPickerListFragment;

    invoke-virtual {v3, p1}, Lcom/narvii/video/EditorStickerPickerListFragment;->setCurrentSelectedSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 253
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 114
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    sget p1, Landroid/R$id;->progress:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SpinningView;

    const-string v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-static {p1, v0, p0, v2, v1}, Lcom/narvii/media/giphy/GiphyStickerService;->loadGiphyPackList$default(Lcom/narvii/media/giphy/GiphyStickerService;ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "giphyStickerService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 192
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->dismiss(Z)V

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "videoManager"

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService<VideoManager>(\"videoManager\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const-string v0, "giphySticker"

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getService<GiphyStickerService>(\"giphySticker\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/media/giphy/GiphyStickerService;

    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 71
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/narvii/video/services/VideoManager;->registerStickerInstallCallback(Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "mediaPicker"

    .line 73
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 74
    instance-of v3, v2, Lcom/narvii/media/MediaPickerFragment;

    if-nez v3, :cond_1

    .line 75
    new-instance v2, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {v2}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 76
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 78
    :cond_1
    check-cast v2, Lcom/narvii/media/MediaPickerFragment;

    iput-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_2
    return-void

    .line 71
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_giphy_sticker_picker_tab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 185
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->unregisterStickerInstallCallback()V

    .line 187
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/media/giphy/GiphyStickerService;->unregisterPackListingListener()V

    .line 188
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "giphyStickerService"

    .line 187
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "videoManager"

    .line 186
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onEditorStickerRemoved()V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    return-void
.end method

.method public onGiphyPackListLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/giphy/GiphyPack;",
            ">;)V"
        }
    .end annotation

    .line 132
    sget v0, Landroid/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    const-string v1, "progress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    const-string v0, "giphyPackList.subList(0, 20)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;

    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->resetTabList(Lcom/narvii/app/TabPagerAdapter;)V

    return-void

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_3
    :goto_1
    sget p1, Lcom/narvii/mediaeditor/R$id;->error_view:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "error_view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x8

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public onLocalAnimatedStickerConvertTerminated()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_4

    .line 206
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 207
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 210
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 212
    iput-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 213
    iput v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    goto :goto_1

    .line 207
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 206
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_3
    const-string v0, "videoManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_8

    const-string p2, "photo"

    .line 156
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/photos/PhotoManager;

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    .line 157
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 165
    new-instance v0, Lcom/narvii/model/Sticker;

    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/FileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 167
    iget p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    iget v3, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    if-ne p1, v3, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iput p1, v0, Lcom/narvii/model/Sticker;->sourceType:I

    .line 168
    iput v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    const-string p1, "videoManager"

    .line 169
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    if-eqz p1, :cond_4

    .line 170
    invoke-virtual {p1, v0, p2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 172
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_8

    invoke-interface {p1, v3}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    goto :goto_2

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onBlockedInstallingSticker()V

    .line 175
    :cond_3
    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    goto :goto_2

    .line 170
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 159
    :cond_5
    :goto_1
    iput v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 160
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    :cond_6
    return-void

    .line 157
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_8
    :goto_2
    return-void
.end method

.method public onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
    .locals 3

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sticker installed failed, collection id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NVEditor_Log"

    .line 235
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    const/4 v1, 0x0

    .line 238
    iput-boolean v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 240
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    :cond_3
    return-void
.end method

.method public onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 3

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 224
    iget-boolean v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v2}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 226
    new-instance v0, Lcom/narvii/media/giphy/GiphyItem;

    invoke-direct {v0}, Lcom/narvii/media/giphy/GiphyItem;-><init>()V

    .line 227
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 228
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    .line 229
    invoke-virtual {p0, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 230
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_3
    return-void
.end method

.method public onTabItemClicked(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2}, Lcom/narvii/app/TabPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz p2, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    .line 92
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setScrollOffset(I)V

    .line 93
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/NVPagerTabLayout;->setOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 95
    :cond_1
    :goto_0
    sget p2, Lcom/narvii/mediaeditor/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$1;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget p2, Lcom/narvii/mediaeditor/R$id;->submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$2;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget p2, Lcom/narvii/mediaeditor/R$id;->sticker_add:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$3;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget p2, Lcom/narvii/mediaeditor/R$id;->sticker_search:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$4;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "activeSticker"

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p1, :cond_2

    .line 101
    new-instance p2, Lcom/narvii/media/giphy/GiphyItem;

    invoke-direct {p2}, Lcom/narvii/media/giphy/GiphyItem;-><init>()V

    .line 102
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    iput-object v0, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iput-object v0, p2, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/video/EditorStickerPickerTabFragment$onViewCreated$5;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/media/giphy/GiphyItem;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final selectStickerCollection(Lcom/narvii/media/giphy/GiphyPack;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyPack;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    const-string v1, "mViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToCurrentPosition()V

    :cond_2
    return-void
.end method

.method public final setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1

    .line 246
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 247
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/media/giphy/GiphyItem;)V

    :cond_0
    return-void
.end method

.method public setEditorStickerPickerCallback(Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 181
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#2C2C2D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected updateTabView(I)V
    .locals 6

    .line 144
    invoke-super {p0, p1}, Lcom/narvii/app/TabPagerFragment;->updateTabView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 147
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    if-ne v3, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 149
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
