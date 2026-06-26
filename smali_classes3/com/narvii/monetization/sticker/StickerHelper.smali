.class public Lcom/narvii/monetization/sticker/StickerHelper;
.super Ljava/lang/Object;
.source "StickerHelper.java"


# static fields
.field public static final MIN_GIF_SIZE:I = 0x44

.field public static final MIN_IMAGE_SIZE:I = 0x80

.field public static final STICKER_PENDING_REQUEST_COUNT_CAHNGE:Ljava/lang/String; = "com.narvii.action.PENDING_STICKER_CHANGED"


# instance fields
.field membershipService:Lcom/narvii/wallet/MembershipService;

.field nvContext:Lcom/narvii/app/NVContext;

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "membership"

    .line 82
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string v0, "stickerCache"

    .line 83
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/sticker/StickerCacheService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    const-string v0, "sticker"

    .line 84
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->editStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/StickerHelper;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->createSticker(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/StickerHelper;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method private createSticker(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 544
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker-collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/stickers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "icon"

    .line 545
    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 546
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$10;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-direct {v1, p0, v2, p1, p3}, Lcom/narvii/monetization/sticker/StickerHelper$10;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private editStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 216
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 219
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sticker-collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "includeStickers"

    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 220
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 221
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$3;

    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v2, p0, v3, v0, p2}, Lcom/narvii/monetization/sticker/StickerHelper$3;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private saveAsFavorite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 414
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 419
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 421
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 422
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "sticker/save-as"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v2, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {p1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 423
    new-instance p2, Lcom/narvii/monetization/sticker/StickerHelper$8;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-direct {p2, p0, v2, v0}, Lcom/narvii/monetization/sticker/StickerHelper$8;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showToast(I)V
    .locals 7

    .line 446
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/narvii/app/NVActivity;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080148

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 448
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f01004c

    const-wide/16 v5, 0x1f4

    .line 447
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canUseSticker(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/model/Sticker;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->isGift()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    iget p2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result p2

    if-eqz p2, :cond_4

    return v2

    .line 102
    :cond_4
    iget p2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x4

    if-ne p2, v3, :cond_5

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result p2

    if-eqz p2, :cond_5

    return v2

    .line 104
    :cond_5
    iget p2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 105
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 106
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    :goto_0
    return v0
.end method

.method public checkStickerCollectionCreatable(ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 115
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 117
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v1, "/sticker-collection/creatable-check"

    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "collectionType"

    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 119
    iget-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 120
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/monetization/sticker/StickerHelper$1;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 126
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method public deleteDisabledSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Sticker;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0353

    .line 352
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f0348

    .line 354
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$6;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper$6;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/Sticker;)V

    const/high16 p1, -0x10000

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 365
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 373
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 376
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 377
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sticker-collection/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    .line 378
    new-instance v3, Lcom/narvii/monetization/sticker/StickerHelper$7;

    const-class v4, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper$7;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public deleteStickerFromShareSection(Ljava/lang/String;Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 5

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 325
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 326
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store/sections/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/items/target-object/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 327
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$5;

    const-class v3, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-direct {v2, p0, v3, v0, p2}, Lcom/narvii/monetization/sticker/StickerHelper$5;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/store/data/StoreItem;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getStickerMessageImageUrl(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const-string v2, "ndcsticker://e/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 143
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public greyStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    iget v2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    .line 475
    :cond_2
    iget v2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    .line 477
    :cond_3
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 478
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 479
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    :goto_0
    return v0
.end method

.method public isAuthorMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 295
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 299
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isContributedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalAuthor()Lcom/narvii/model/User;

    move-result-object p1

    .line 309
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 310
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 313
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p1

    return p1
.end method

.method public isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isAuthorMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isStickerPackNew(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 193
    :cond_0
    iget-boolean p1, p1, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    return p1
.end method

.method public onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
.end method

.method public onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 255
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03df

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f0362

    const/4 v2, 0x1

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 258
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper$4;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 280
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V

    return-void
.end method

.method public onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V
    .locals 3

    .line 153
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-class p2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 155
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "stickerCollection"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    move-result v0

    const-string v1, "Source"

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 167
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    const-class p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p3

    .line 181
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "prefetch"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 168
    :cond_3
    :goto_0
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f0f0354

    goto :goto_1

    :cond_4
    const p3, 0x7f0f0355

    :goto_1
    invoke-virtual {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p3, 0x7f0f0193

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p2, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p3, 0x7f0f0348

    .line 171
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper$2;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    const/high16 p1, -0x10000

    invoke-virtual {p2, p3, v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 177
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 158
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->intent(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/content/Intent;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_6

    .line 160
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of p2, p2, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    const-string p3, "finishWithResult"

    .line 161
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    check-cast p2, Lcom/narvii/app/NVFragment;

    const/16 p3, 0x66

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 164
    :cond_6
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 513
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 514
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 515
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 516
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 517
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 518
    invoke-static {p1}, Lcom/narvii/photos/PhotoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    const-string v1, "sticker"

    invoke-virtual {p1, v1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->keepPng()Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->build()Lcom/narvii/photos/PhotoUploadSpec;

    move-result-object p1

    .line 519
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$9;

    invoke-direct {v1, p0, p3, p4}, Lcom/narvii/monetization/sticker/StickerHelper$9;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/photos/PhotoManager;->upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V

    :cond_0
    return-void
.end method

.method public pickStickerImage(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 509
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->pickStickerImage(Lcom/narvii/media/MediaPickerFragment;Z)V

    return-void
.end method

.method public pickStickerImage(Lcom/narvii/media/MediaPickerFragment;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 493
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v2, 0x44

    const/16 v3, 0x80

    .line 494
    invoke-virtual {v1, v3, v3, v2, v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setSize(IIII)V

    const/4 v2, 0x1

    .line 495
    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 496
    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    const/16 v3, 0xc

    .line 497
    iput v3, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    if-nez p2, :cond_1

    .line 500
    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    :cond_1
    const/4 p2, 0x0

    .line 502
    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public saveAsFavorite(Lcom/narvii/model/Sticker;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAsFavorite(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/monetization/sticker/model/PendingStickerResponse;",
            ">;)V"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 595
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/store/share-requests/pending-check"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 596
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$11;

    const-class v3, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/monetization/sticker/StickerHelper$11;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public showExpireDialog()V
    .locals 2

    .line 455
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Sticker (Dialog)"

    .line 456
    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 457
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public showMembershipDialog()V
    .locals 2

    .line 461
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "Sticker (Dialog)"

    .line 462
    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 463
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 201
    :cond_0
    iget-wide v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    const-wide/16 v3, 0x32

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
