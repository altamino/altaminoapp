.class public Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StickerPickerListFragment.java"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;,
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;,
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;,
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$FavTopAdapter;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT:I = 0x4


# instance fields
.field adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

.field public addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

.field cacheSticker:Z

.field private editorTheme:Z

.field private error:Ljava/lang/String;

.field private infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

.field mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field public paddingH:I

.field photoUrl:Ljava/lang/String;

.field previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field receiver:Landroid/content/BroadcastReceiver;

.field private requesting:Z

.field selectedSticker:Lcom/narvii/model/Sticker;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field stickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field private stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

.field stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;

.field public trial:Z

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->editorTheme:Z

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->showExpireDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->showMembershipDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->showProfileDialog()V

    return-void
.end method

.method private refreshIfStickerListNull()V
    .locals 1

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V

    :cond_0
    return-void
.end method

.method private refreshStickerCollectionInfo()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    const/4 v1, 0x0

    .line 377
    iput-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->error:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sticker-collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "includeStickers"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 379
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 380
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;

    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 404
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private setStickerList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 277
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->setStickerList(Ljava/util/ArrayList;)V

    .line 281
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-eqz p1, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshIfStickerListNull()V

    :cond_1
    return-void
.end method

.method private showExpireDialog()V
    .locals 2

    .line 522
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {v0, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Sticker (Dialog)"

    .line 523
    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 524
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showMembershipDialog()V
    .locals 2

    .line 528
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {v0, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Sticker (Dialog)"

    .line 529
    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 530
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showProfileDialog()V
    .locals 2

    .line 534
    new-instance v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {v0, p0, v1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 535
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 212
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 213
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$FavTopAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$FavTopAdapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->paddingH:I

    .line 217
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v0, v0, v1

    const v1, 0x3d99999a    # 0.075f

    mul-float v0, v0, v1

    float-to-int v6, v0

    .line 218
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    iget v4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->paddingH:I

    move-object v1, v0

    move-object v2, p0

    move v3, v4

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    const/4 v1, 0x1

    .line 219
    invoke-virtual {v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 220
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    const-class v3, Ljava/lang/Object;

    invoke-direct {v2, p0, p0, v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 221
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;

    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 237
    new-instance v3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    invoke-direct {v3, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    .line 238
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    invoke-virtual {v2, v3, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    const/4 v1, 0x4

    .line 240
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 241
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    new-instance v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;

    invoke-direct {v1, p0, p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/list/DivideColumnAdapter;)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 260
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object p1
.end method

.method protected errorViewLayoutId()I
    .locals 1

    const v0, 0x7f0b01f8

    return v0
.end method

.method protected externalOffset()I
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 339
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public isNestedScrollingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "requesting"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    :cond_0
    const-string p1, "stickerCache"

    .line 133
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    const-string p1, "sticker"

    .line 134
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const-string p1, "membership"

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p1, "videoManager"

    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 137
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const/4 p1, 0x0

    const-string v0, "trial"

    .line 138
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    const-string p1, "stickerCollection"

    .line 141
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 146
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 150
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->cacheSticker:Z

    .line 152
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "mediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 154
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_3

    .line 155
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$2;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaPickerFragment;->setRequestActivityResultCallback(Lcom/narvii/util/Callback;)V

    .line 169
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const-string p1, "Sticker (Bar)"

    .line 170
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 173
    :cond_5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "tabBottom"

    .line 199
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0b02ee

    .line 200
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0b02ed

    .line 202
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onErrorRetry()V
    .locals 0

    .line 411
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 412
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 332
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 333
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 334
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 442
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 449
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerList(Ljava/util/ArrayList;)V

    .line 452
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
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

    .line 425
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/monetization/sticker/StickerHelper;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 359
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 360
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 417
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 419
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    const-string v1, "requesting"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 295
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    .line 297
    instance-of v0, p2, Lcom/narvii/widget/NVListView;

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 298
    new-instance v10, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    const/4 v11, 0x1

    xor-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iget-object v6, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    const/4 v7, 0x4

    iget v8, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->paddingH:I

    move-object v0, v10

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    iput-object v10, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 306
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setPositionOffset(I)V

    .line 307
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v0, v11}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setRowOffset(I)V

    .line 309
    check-cast p2, Lcom/narvii/widget/NVListView;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V

    .line 310
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V

    .line 313
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_2
    const p2, 0x7f090678

    .line 314
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09077c

    .line 315
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09077e

    .line 316
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 317
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->editorTheme:Z

    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0f1000

    goto :goto_1

    :cond_4
    const v0, 0x7f0f10b2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090952

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public setIsEditorTheme(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->editorTheme:Z

    return-void
.end method

.method public setSelectedSticker(Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 430
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerList(Ljava/util/ArrayList;)V

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setStickerPreviewListener(Lcom/narvii/monetization/sticker/StickerPreviewListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    return-void
.end method

.method public setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-void
.end method
