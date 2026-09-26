.class public final Lcom/narvii/video/EditorStickerPickerTabFragment;
.super Lcom/narvii/app/TabPagerFragment;
.source "SourceFile"

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
        Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;,
        Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final STICKER_PICKER_TYPE_GALLERY:I

.field private final STICKER_PICKER_TYPE_GIPHY:I

.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentSticker:Lcom/narvii/media/giphy/GiphyItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final giphyPackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/giphy/GiphyPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

.field private installingSticker:Lcom/narvii/video/model/StickerInfoPack;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final internalGiphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stickerFromLocalPicker:Z

.field private stickerPickerType:I

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/video/EditorStickerPickerTabFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/TabPagerFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GALLERY:I

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/video/EditorStickerPickerTabFragment$binding$2;->INSTANCE:Lcom/narvii/video/EditorStickerPickerTabFragment$binding$2;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->binding$delegate:Lkotlin/properties/d;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->internalGiphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    .line 32
    return-void
.end method

.method public static final synthetic access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInternalGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->internalGiphyStickerSelectedCallback:Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentSticker$p(Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    return-void
.end method

.method private final dismiss(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->forsakePreviewSticker()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->savePreviewSticker()V

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "videoManager"

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    move-object p1, v0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTasks()V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v0, p1

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->removeAllViewInstallStickerCallback()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 67
    return-void
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/video/EditorStickerPickerTabFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 14
    return-object v0
.end method

.method private final getTabView(Lcom/narvii/media/giphy/GiphyPack;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/narvii/mediaeditor/databinding/GiphyStickerTabLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/mediaeditor/databinding/GiphyStickerTabLayoutBinding;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "inflate(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/GiphyStickerTabLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    sget v3, Lcom/narvii/mediaeditor/R$drawable;->giphy_sticker_tab_bg:I

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    iget-object v1, v0, Lcom/narvii/mediaeditor/databinding/GiphyStickerTabLayoutBinding;->tabIcon:Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyPack;->featured_gif:Lcom/narvii/media/giphy/GiphyItem;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyItem;->thumbUrl()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/mediaeditor/databinding/GiphyStickerTabLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    const-string v0, "getRoot(...)"

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-object p1
.end method

.method public static synthetic n(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->onViewCreated$lambda$1(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->onViewCreated$lambda$2(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->dismiss(Z)V

    .line 11
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->dismiss(Z)V

    .line 11
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GALLERY:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->pickSticker(I)V

    .line 12
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->pickSticker(I)V

    .line 12
    return-void
.end method

.method private static final onViewCreated$lambda$5(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$sticker"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/media/giphy/GiphyPack;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/narvii/media/giphy/GiphyPack;-><init>()V

    .line 17
    .line 18
    iget-object p0, p0, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p0, v0, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->selectStickerCollection(Lcom/narvii/media/giphy/GiphyPack;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/narvii/video/EditorStickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 27
    return-void
.end method

.method public static synthetic p(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->onViewCreated$lambda$3(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V

    return-void
.end method

.method private final pickSticker(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    .line 16
    const/16 v2, 0x44

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setSize(IIII)V

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 23
    .line 24
    iget v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    const/4 p1, 0x4

    .line 29
    .line 30
    iput p1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 33
    .line 34
    new-instance p1, Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    const-string v2, "photo"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    const/16 p1, 0x8

    .line 54
    .line 55
    iput p1, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 56
    move-object p1, v3

    .line 57
    .line 58
    :goto_0
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p1, v3, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 64
    :cond_2
    return-void
.end method

.method public static synthetic q(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/EditorStickerPickerTabFragment;->onViewCreated$lambda$5(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->onViewCreated$lambda$4(Lcom/narvii/video/EditorStickerPickerTabFragment;Landroid/view/View;)V

    return-void
.end method

.method private final resetTabList(Lcom/narvii/app/TabPagerAdapter;)V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, -0x1

    .line 29
    sub-int/2addr v3, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v3, v2

    .line 32
    .line 33
    :goto_1
    iget-object v4, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    const-string v4, "get(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v3, Lcom/narvii/media/giphy/GiphyPack;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/narvii/media/giphy/GiphyPack;->id()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    :goto_2
    move-object v6, v4

    .line 60
    goto :goto_3

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v3}, Lcom/narvii/media/giphy/GiphyPack;->id()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-direct {p0, v3}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getTabView(Lcom/narvii/media/giphy/GiphyPack;)Landroid/view/View;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    new-instance v10, Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    const-string/jumbo v4, "stickerPackId"

    .line 77
    .line 78
    iget-object v3, v3, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    new-instance v3, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 84
    const/4 v7, 0x0

    .line 85
    .line 86
    const-class v9, Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 87
    move-object v5, v3

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v5 .. v10}, Lcom/narvii/app/TabPagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p1, v0}, Lcom/narvii/app/TabPagerAdapter;->setTabs(Ljava/util/List;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    .line 6
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "sticker_picker"

    return-object v0
.end method

.method public final notifyPagerSelectedStickerChanged(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 5
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/TabPagerAdapter;->getCount()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/narvii/app/TabPagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    instance-of v4, v3, Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    check-cast v3, Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Lcom/narvii/video/EditorStickerPickerListFragment;->setCurrentSelectedSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->giphyStickerPickerPage:Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerPageBinding;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerPageBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-string p1, "giphyStickerService"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    move-object p1, v1

    .line 27
    :cond_0
    const/4 v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0, p0, v2, v1}, Lcom/narvii/media/giphy/GiphyStickerService;->loadGiphyPackList$default(Lcom/narvii/media/giphy/GiphyStickerService;ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;ILjava/lang/Object;)V

    .line 31
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "a"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->dismiss(Z)V

    .line 10
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "videoManager"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "getService(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/video/services/VideoManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 20
    .line 21
    const-string v0, "giphySticker"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/media/giphy/GiphyStickerService;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0, p0}, Lcom/narvii/video/services/VideoManager;->registerStickerInstallCallback(Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-string v0, "mediaPicker"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    instance-of v2, v1, Lcom/narvii/media/MediaPickerFragment;

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    new-instance v1, Lcom/narvii/media/MediaPickerFragment;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 65
    .line 66
    iput-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_1
    check-cast v1, Lcom/narvii/media/MediaPickerFragment;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 95
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "videoManager"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    move-object v0, v1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->unregisterStickerInstallCallback()V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyStickerService:Lcom/narvii/media/giphy/GiphyStickerService;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "giphyStickerService"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v1, v0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyStickerService;->unregisterPackListingListener()V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 40
    :cond_2
    return-void
.end method

.method public onEditorStickerRemoved()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 5
    return-void
.end method

.method public onGiphyPackListLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/giphy/GiphyPack;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->giphyStickerPickerPage:Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerPageBinding;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerPageBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v2

    .line 35
    .line 36
    const/16 v3, 0x14

    .line 37
    .line 38
    if-gt v2, v3, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string v0, "null cannot be cast to non-null type com.narvii.video.EditorStickerPickerTabFragment.Adapter"

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    check-cast p1, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->resetTabList(Lcom/narvii/app/TabPagerAdapter;)V

    .line 63
    return-void

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->giphyStickerPickerPage:Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerPageBinding;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerPageBinding;->errorView:Lcom/narvii/lib/databinding/ErrorViewBinding;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/narvii/lib/databinding/ErrorViewBinding;->errorContainer:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    move v2, v0

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v2, v1

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    if-nez p1, :cond_4

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_4
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    move-result v2

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move v1, v0

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_4
    return-void
.end method

.method public onLocalAnimatedStickerConvertTerminated()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "videoManager"

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 20
    move-object v0, v1

    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v2, v1

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {v2}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 48
    const/4 v0, 0x0

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 51
    .line 52
    iput-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 53
    .line 54
    iput v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 55
    :cond_2
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    if-eqz p1, :cond_5

    .line 3
    move-object p2, p1

    .line 4
    .line 5
    check-cast p2, Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x1

    .line 11
    xor-int/2addr p2, v0

    .line 12
    .line 13
    if-eqz p2, :cond_5

    .line 14
    .line 15
    const-string p2, "photo"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/model/Media;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 45
    move-result p2

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/model/Sticker;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 70
    .line 71
    iget p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 72
    .line 73
    iget v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->STICKER_PICKER_TYPE_GIPHY:I

    .line 74
    .line 75
    if-ne p1, v2, :cond_1

    .line 76
    const/4 p1, 0x3

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 p1, 0x2

    .line 79
    .line 80
    :goto_0
    iput p1, v0, Lcom/narvii/model/Sticker;->sourceType:I

    .line 81
    .line 82
    iput v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 83
    .line 84
    .line 85
    const-string/jumbo p1, "videoManager"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, p2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 103
    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v2}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 108
    goto :goto_2

    .line 109
    .line 110
    :cond_2
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-interface {v2}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onBlockedInstallingSticker()V

    .line 116
    :cond_3
    const/4 v2, 0x0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :cond_4
    :goto_1
    iput v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerPickerType:I

    .line 123
    .line 124
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    .line 129
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    .line 130
    :cond_5
    :goto_2
    return-void
.end method

.method public onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
    .locals 3
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "Sticker installed failed, collection id: "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, " id: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "NVEditor_Log"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v2, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v1, v0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    .line 89
    :cond_3
    return-void
.end method

.method public onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 3
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "stickerInfoPack"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v2, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/media/giphy/GiphyItem;->id()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/narvii/media/giphy/GiphyItem;->collectionId()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/media/giphy/GiphyItem;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Lcom/narvii/media/giphy/GiphyItem;-><init>()V

    .line 57
    .line 58
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, v0, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v1, v0, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 75
    :cond_3
    return-void
.end method

.method public onTabItemClicked(I)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/app/TabPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/high16 v1, 0x42480000    # 50.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 33
    move-result v0

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x3

    .line 36
    sub-int/2addr p1, v0

    .line 37
    .line 38
    div-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVPagerTabLayout;->setScrollOffset(I)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVPagerTabLayout;->setOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->close:Landroid/widget/ImageView;

    .line 53
    .line 54
    new-instance p2, Lcom/narvii/video/a0;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/narvii/video/a0;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->submit:Landroid/widget/ImageView;

    .line 67
    .line 68
    new-instance p2, Lcom/narvii/video/b0;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/narvii/video/b0;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->giphyStickerPickerTab:Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerTabBinding;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerTabBinding;->stickerAdd:Lcom/narvii/widget/TintButton;

    .line 83
    .line 84
    new-instance p2, Lcom/narvii/video/c0;

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p0}, Lcom/narvii/video/c0;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/narvii/video/EditorStickerPickerTabFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentGiphyStickerPickerTabBinding;->giphyStickerPickerTab:Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerTabBinding;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/GiphyStickerPickerTabBinding;->stickerSearch:Lcom/narvii/widget/TintButton;

    .line 99
    .line 100
    new-instance p2, Lcom/narvii/video/d0;

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/narvii/video/d0;-><init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    const-string p1, "activeSticker"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    const-class p2, Lcom/narvii/video/model/StickerInfoPack;

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 121
    .line 122
    if-eqz p1, :cond_1

    .line 123
    .line 124
    new-instance p2, Lcom/narvii/media/giphy/GiphyItem;

    .line 125
    .line 126
    .line 127
    invoke-direct {p2}, Lcom/narvii/media/giphy/GiphyItem;-><init>()V

    .line 128
    .line 129
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v0, p2, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v0, p2, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    .line 136
    .line 137
    new-instance v0, Lcom/narvii/video/e0;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, p1, p0, p2}, Lcom/narvii/video/e0;-><init>(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/video/EditorStickerPickerTabFragment;Lcom/narvii/media/giphy/GiphyItem;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 144
    :cond_1
    return-void
.end method

.method public final selectStickerCollection(Lcom/narvii/media/giphy/GiphyPack;)V
    .locals 1
    .param p1    # Lcom/narvii/media/giphy/GiphyPack;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->giphyPackList:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/media/giphy/GiphyPack;->id()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToCurrentPosition()V

    .line 31
    :cond_2
    return-void
.end method

.method public final setCurrentSticker(Lcom/narvii/media/giphy/GiphyItem;)V
    .locals 1
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->currentSticker:Lcom/narvii/media/giphy/GiphyItem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/media/giphy/GiphyItem;)V

    .line 12
    :cond_0
    return-void
.end method

.method public setEditorStickerPickerCallback(Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    const-string v1, "#2C2C2D"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 12
    return-object v0
.end method

.method protected updateTabView(I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/TabPagerFragment;->updateTabView(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v3, v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    if-ne v3, p1, :cond_1

    .line 27
    const/4 v5, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v5, v2

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return-void
.end method
