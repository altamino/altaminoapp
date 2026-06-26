.class public Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "StickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;,
        Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;
    }
.end annotation


# static fields
.field static final DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final HEADER:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field public adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

.field header:Lcom/narvii/list/overlay/OverlayLayout;

.field public padding:I

.field private placeHolderHeight:I

.field previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field requestFinished:Z

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field public stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x1

    const-string v2, "detail.sticker_collection.header"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 76
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "detail.sticker_collection"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method public static intent(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/content/Intent;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v0

    const-string v1, "id"

    const-string v2, "prefetch"

    if-eqz v0, :cond_1

    .line 92
    const-class v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-class p0, Lcom/narvii/monetization/sticker/mood/MoodCollectionDetailFragment;

    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 99
    :cond_2
    const-class v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-static {p0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private updateHeader()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    if-nez v1, :cond_1

    return-void

    .line 213
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v2, 0x7f0b0646

    iget v3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 222
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const v2, 0x7f09034a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/collection/HeaderLayout;

    .line 224
    iget v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    invoke-virtual {v1, v2}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setHeight1(I)V

    .line 225
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 11

    .line 230
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 232
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    .line 233
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, 0x7f0b0333

    aput v5, v3, v4

    .line 244
    invoke-virtual {v1, v3}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->padding:I

    .line 248
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    iget v10, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->padding:I

    move-object v5, v1

    move-object v6, p0

    move v7, v10

    move v8, v10

    move v9, v10

    invoke-direct/range {v5 .. v10}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 249
    new-instance v5, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    const-class v6, Lcom/narvii/model/Sticker;

    invoke-direct {v5, p0, p0, v6}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    .line 250
    iget-object v5, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 251
    invoke-virtual {v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 288
    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    invoke-virtual {v1, v4}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    new-instance v1, Lcom/narvii/monetization/common/RecommendHeaderAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 293
    new-instance v2, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v9

    const-string v7, "sticker"

    const/16 v8, 0x72

    move-object v4, v2

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-virtual {v1, v2}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 300
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v8, v1

    .line 303
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    move-object v3, v1

    move-object v4, p0

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v3, 0x3

    .line 304
    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 305
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    if-nez p1, :cond_0

    const-string p1, "response"

    .line 309
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    if-eqz p1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    :cond_0
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 147
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoreStickerDetailPage"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 152
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x12c

    int-to-float v0, v0

    const v1, 0x443b8000    # 750.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->placeHolderHeight:I

    .line 155
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    if-eqz p1, :cond_0

    const-string v0, "requestFinished"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

    :cond_0
    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 166
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 169
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 170
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0487

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, p2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-eq v0, v1, :cond_0

    .line 185
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 181
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStoreItem(Lcom/narvii/app/NVContext;Lcom/narvii/model/StoreItemBaseObject;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

    const-string v1, "requestFinished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 126
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09080a

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    .line 130
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->updateHeader()V

    .line 131
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 136
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_2

    .line 137
    new-instance p2, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iget-object v5, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    const/4 v6, 0x4

    iget v7, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->padding:I

    move-object v0, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;-><init>(Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    iput-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 138
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setRowOffset(I)V

    .line 139
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    check-cast p1, Lcom/narvii/widget/NVListView;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V

    .line 141
    iget-object p2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V

    :cond_2
    return-void
.end method
