.class public Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "UgcStickerCollectionDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;,
        Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;
    }
.end annotation


# static fields
.field static final DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field public adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

.field private approveMode:Z

.field public padding:I

.field previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field requestFinished:Z

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field public stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v1, "detail.sticker_collection"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->updateSubmitLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->updateApproveLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    return p0
.end method

.method private updateApproveLayout()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 170
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f09094c

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090020

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private updateSubmitLayout()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 230
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090b18

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 231
    iget-boolean v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 12

    .line 267
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 270
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 271
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 272
    invoke-virtual {v1, v4}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 277
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 279
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    new-array v2, v3, [I

    const v4, 0x7f0b0333

    aput v4, v2, v5

    .line 288
    invoke-virtual {v1, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 289
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->padding:I

    .line 292
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    iget v11, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->padding:I

    move-object v6, v1

    move-object v7, p0

    move v8, v11

    move v9, v11

    move v10, v11

    invoke-direct/range {v6 .. v11}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 293
    new-instance v4, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    const-class v6, Lcom/narvii/model/Sticker;

    invoke-direct {v4, p0, p0, v6}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    .line 294
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    const/4 v6, 0x4

    invoke-virtual {v1, v4, v6}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 295
    invoke-virtual {v1, v3}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 296
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$3;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 332
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    invoke-virtual {v1, v3}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    invoke-virtual {v1, v5}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 334
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 336
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Lcom/narvii/monetization/common/RecommendHeaderAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 338
    new-instance v9, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;

    const/16 v7, 0x72

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v8

    const-string v6, "sticker"

    move-object v3, v9

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    iget-boolean v3, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    invoke-virtual {v9, v3}, Lcom/narvii/monetization/store/StoreRecommendAdapter;->setPreview(Z)V

    .line 355
    invoke-virtual {v1, v9}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v7, v1

    .line 359
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v2, v1

    move-object v3, p0

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v2, 0x3

    .line 360
    invoke-virtual {v1, v9, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 361
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 364
    :cond_0
    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_1

    const-string p1, "response"

    .line 367
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    if-eqz p1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    :cond_1
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 178
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090020

    const v1, 0x7f0f119f

    const/4 v2, 0x0

    const v3, 0x7f0f0c29

    if-eq p1, v0, :cond_1

    const v0, 0x7f09094c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0eac

    .line 380
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 381
    invoke-virtual {p1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 382
    new-instance v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$5;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 400
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 403
    :cond_1
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0026

    .line 404
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 405
    invoke-virtual {p1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 406
    new-instance v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 424
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "requestFinished"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    :cond_0
    const/4 p1, 0x0

    .line 188
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const-string p1, "approveMode"

    .line 191
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 198
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f06d5

    const/4 v0, 0x0

    .line 199
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080369

    .line 200
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 201
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0488

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f06d5

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 220
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    invoke-direct {v1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 208
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 210
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->isContributedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f0f06d5

    .line 212
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 243
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    const-string v1, "requestFinished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 98
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 101
    instance-of v0, v8, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_1

    .line 102
    new-instance v9, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iget-object v5, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    const/4 v6, 0x4

    iget v7, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->padding:I

    move-object v0, v9

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;-><init>(Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    iput-object v9, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setRowOffset(I)V

    .line 104
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    check-cast v8, Lcom/narvii/widget/NVListView;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {v8, v0}, Lcom/narvii/widget/NVListView;->setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V

    .line 106
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {v8, v0}, Lcom/narvii/widget/NVListView;->setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V

    :cond_1
    const p2, 0x7f090b13

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 116
    new-instance p2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
