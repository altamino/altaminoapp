.class public final Lcom/narvii/prefs/AssetsStorageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "AssetsStorageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;,
        Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;,
        Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1587#2,2:282\n1587#2,2:284\n1587#2,2:286\n1587#2,2:288\n*E\n*S KotlinDebug\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment\n*L\n90#1,2:282\n98#1,2:284\n107#1,2:286\n196#1,2:288\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

.field private captionFont:Lcom/narvii/asset/AssetDownloader;

.field private captionStyle:Lcom/narvii/asset/AssetDownloader;

.field private deleteBtn:Landroid/support/v7/widget/AppCompatButton;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectAllImg:Lcom/narvii/widget/NVImageView;

.field private stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

.field private unSelectAllImg:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateSize(Lcom/narvii/prefs/AssetsStorageFragment;J)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AssetsStorageFragment;->calculateSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAssetsAdapter$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "assetsAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getCaptionFont$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/asset/AssetDownloader;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    return-object p0
.end method

.method public static final synthetic access$getCaptionStyle$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/asset/AssetDownloader;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    return-object p0
.end method

.method public static final synthetic access$getList$p(Lcom/narvii/prefs/AssetsStorageFragment;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "list"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getStickerHelper$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/scene/helper/StickerHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    return-object p0
.end method

.method public static final synthetic access$setAssetsAdapter$p(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    return-void
.end method

.method public static final synthetic access$setCaptionFont$p(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    return-void
.end method

.method public static final synthetic access$setCaptionStyle$p(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/asset/AssetDownloader;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    return-void
.end method

.method public static final synthetic access$setList$p(Lcom/narvii/prefs/AssetsStorageFragment;Ljava/util/List;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setStickerHelper$p(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/scene/helper/StickerHelper;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    return-void
.end method

.method public static final synthetic access$updateDeleteBtn(Lcom/narvii/prefs/AssetsStorageFragment;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    return-void
.end method

.method public static final synthetic access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateList(I)V

    return-void
.end method

.method public static final synthetic access$updateSelectAllView(Lcom/narvii/prefs/AssetsStorageFragment;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    return-void
.end method

.method private final calculateSize(J)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x400

    int-to-long v0, v0

    .line 273
    div-long/2addr p1, v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final cleanAssets(J)V
    .locals 3

    .line 224
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AssetsStorageFragment;->calculateSize(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const p1, 0x7f0f0f95

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0348

    .line 226
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 227
    new-instance p1, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/AssetsStorageFragment$cleanAssets$1;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 240
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private final updateDeleteBtn(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "deleteBtn"

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroid/support/v7/widget/AppCompatButton;

    if-eqz p1, :cond_0

    const v0, 0x7f08008b

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroid/support/v7/widget/AppCompatButton;

    if-eqz p1, :cond_2

    const v0, 0x7f08008c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateList(I)V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    const-string v1, "list"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_2

    :cond_0
    if-le v0, p1, :cond_9

    .line 191
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    iget-object v3, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {p1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    move-result p1

    const/4 v3, 0x1

    xor-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    .line 192
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 288
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v4}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v2, :cond_3

    .line 198
    invoke-virtual {v4}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 200
    :cond_4
    invoke-direct {p0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 201
    invoke-direct {p0, v2}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    goto :goto_2

    .line 196
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "assetsAdapter"

    .line 192
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_2
    return-void

    .line 190
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method private final updateSelectAllView(Z)V
    .locals 5

    const-string v0, "unSelectAllImg"

    const/4 v1, 0x0

    const-string v2, "selectAllImg"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 215
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 13

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 68
    new-instance v6, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0f9a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "resources.getString(R.st\u2026ngs_storage_assets_music)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;

    invoke-direct {v5, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x0

    aput-object v6, p1, v0

    .line 69
    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0f99

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "resources.getString(R.st\u2026ngs_storage_assets_fonts)"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$2;

    invoke-direct {v12, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$2;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 72
    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0f9d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "resources.getString(R.st\u2026ings_storage_assets_text)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$3;

    invoke-direct {v7, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$3;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 75
    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0f9b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "resources.getString(R.st\u2026_storage_assets_stickers)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$4;

    invoke-direct {v7, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$4;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 67
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 79
    new-instance p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 80
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "assetsAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "list"

    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const v1, 0x7f090a01

    const-string v2, "assetsAdapter"

    const-string v3, "list"

    if-nez p1, :cond_1

    goto :goto_2

    .line 89
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 90
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 282
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 91
    invoke-virtual {v1, v3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 94
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 95
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    goto/16 :goto_6

    .line 94
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    const v1, 0x7f090c07

    if-nez p1, :cond_6

    goto :goto_4

    .line 97
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_a

    .line 98
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz p1, :cond_9

    .line 284
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 99
    invoke-virtual {v1, v3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    goto :goto_3

    .line 101
    :cond_7
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 102
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 103
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    goto :goto_6

    .line 102
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_4
    const v1, 0x7f09033d

    if-nez p1, :cond_b

    goto :goto_6

    .line 105
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_f

    const-wide/16 v1, 0x0

    .line 107
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    if-eqz p1, :cond_e

    .line 286
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 108
    invoke-virtual {v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 109
    invoke-virtual {v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_5

    .line 112
    :cond_d
    invoke-direct {p0, v1, v2}, Lcom/narvii/prefs/AssetsStorageFragment;->cleanAssets(J)V

    goto :goto_6

    .line 107
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "captionFont"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    const-string p1, "captionStyle"

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    .line 40
    new-instance p1, Lcom/narvii/scene/helper/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    const p1, 0x7f0f0f98

    .line 42
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b027c

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/prefs/AssetsStorageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090a01

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.select_all_img)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f090c07

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.unselect_all_img)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    .line 53
    iget-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09033d

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.delete_btn)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v7/widget/AppCompatButton;

    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroid/support/v7/widget/AppCompatButton;

    .line 56
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroid/support/v7/widget/AppCompatButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance p1, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string p1, "deleteBtn"

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "unSelectAllImg"

    .line 54
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "selectAllImg"

    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
