.class public Lcom/narvii/monetization/sticker/StickerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "membership"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 16
    .line 17
    const-string/jumbo v0, "stickerCache"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/sticker/StickerCacheService;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 26
    .line 27
    const-string/jumbo v0, "sticker"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 36
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/sticker/StickerHelper;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->createSticker(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->editStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string/jumbo v3, "sticker-collection/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "/stickers"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string v2, "icon"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$10;

    .line 57
    .line 58
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerResponse;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0, v2, p1, p3}, Lcom/narvii/monetization/sticker/StickerHelper$10;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 65
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/monetization/sticker/StickerHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->showToast(I)V

    return-void
.end method

.method private editStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v3, "/sticker-collection/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    const-string v1, "includeStickers"

    .line 56
    .line 57
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 68
    .line 69
    const-string v2, "api"

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 76
    .line 77
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$3;

    .line 78
    .line 79
    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, p0, v3, v0, p2}, Lcom/narvii/monetization/sticker/StickerHelper$3;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 86
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private saveAsFavorite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    .line 6
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string/jumbo v3, "sticker/save-as"

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

    .line 8
    new-instance p2, Lcom/narvii/monetization/sticker/StickerHelper$8;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerResponse;

    invoke-direct {p2, p0, v2, v0}, Lcom/narvii/monetization/sticker/StickerHelper$8;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showToast(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    const v2, 0x7f0801d7

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    const v4, 0x7f01006a

    .line 46
    .line 47
    const-wide/16 v5, 0x1f4

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 66
    :goto_0
    return-void
.end method


# virtual methods
.method public canUseSticker(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/model/Sticker;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    return v0

    .line 8
    .line 9
    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->isGift()Z

    .line 15
    move-result p2

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    :cond_2
    if-nez v1, :cond_3

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_3
    iget p2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 25
    const/4 v3, 0x3

    .line 26
    .line 27
    if-ne p2, v3, :cond_4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 31
    move-result p2

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    return v2

    .line 35
    .line 36
    :cond_4
    iget p2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 37
    const/4 v3, 0x4

    .line 38
    .line 39
    if-ne p2, v3, :cond_5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 43
    move-result p2

    .line 44
    .line 45
    if-eqz p2, :cond_5

    .line 46
    return v2

    .line 47
    .line 48
    :cond_5
    iget p2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 49
    const/4 v1, 0x2

    .line 50
    .line 51
    if-ne p2, v1, :cond_6

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 57
    move-result p2

    .line 58
    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    return v2

    .line 67
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    const-string v1, "/sticker-collection/creatable-check"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    const-string v1, "collectionType"

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    const-string v1, "api"

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 57
    .line 58
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/monetization/sticker/StickerHelper$1;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 68
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

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f1203ab

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f1201e2

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$6;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper$6;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/util/Callback;Ljava/lang/String;Lcom/narvii/model/Sticker;)V

    .line 35
    .line 36
    const/high16 p1, -0x10000

    .line 37
    .line 38
    .line 39
    const p2, 0x7f1203a0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2, v1, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public deleteStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    const-string v2, "api"

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string/jumbo v4, "sticker-collection/"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    new-instance v3, Lcom/narvii/monetization/sticker/StickerHelper$7;

    .line 67
    .line 68
    const-class v4, Lcom/narvii/monetization/sticker/model/StickerResponse;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper$7;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 75
    return-void
.end method

.method public deleteStickerFromShareSection(Ljava/lang/String;Lcom/narvii/monetization/store/data/StoreItem;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v2, "api"

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string/jumbo v4, "store/sections/"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "/items/target-object/"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object p1, p2, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$5;

    .line 75
    .line 76
    const-class v3, Lcom/narvii/monetization/sticker/model/StickerResponse;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, p0, v3, v0, p2}, Lcom/narvii/monetization/sticker/StickerHelper$5;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public getStickerMessageImageUrl(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "ndcsticker://e/"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v0, 0xf

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v1, "assets://"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/util/emojione/EmojionePng;->getAssetsPath(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getStickerInfo()Lcom/narvii/model/Sticker;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object v0, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 69
    .line 70
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    return-object v0

    .line 80
    .line 81
    :cond_3
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 82
    return-object p1

    .line 83
    :cond_4
    :goto_1
    return-object v0
.end method

.method public greyStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_1
    iget v2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    if-ne v2, v3, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    return v4

    .line 25
    .line 26
    :cond_2
    iget v2, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 27
    const/4 v3, 0x4

    .line 28
    .line 29
    if-ne v2, v3, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    return v4

    .line 37
    .line 38
    :cond_3
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 39
    const/4 v2, 0x2

    .line 40
    .line 41
    if-ne v1, v2, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    return v4

    .line 57
    :cond_4
    :goto_0
    return v0
.end method

.method public isAuthorMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v2, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->uid()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public isContributedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalAuthor()Lcom/narvii/model/User;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v1, "account"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    move-object p1, v1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    :goto_0
    if-nez v0, :cond_2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isAuthorMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
.end method

.method public isStickerCollectionValid(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 32
    return p1
.end method

.method public isStickerPackNew(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-boolean p1, p1, Lcom/narvii/model/StoreItemBaseObject;->isNew:Z

    .line 7
    return p1
.end method

.method public onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    return-void
.end method

.method public onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12044a

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f1203ba

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 6
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper$4;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V

    return-void
.end method

.method public onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;Z)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;

    .line 3
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string/jumbo p3, "stickerCollection"

    .line 4
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isNormal()Z

    move-result v0

    const-string v1, "Source"

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const-class p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 9
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "prefetch"

    .line 10
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "id"

    .line 11
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    invoke-static {p1, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    goto :goto_3

    .line 14
    :cond_3
    :goto_0
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p3, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p3

    if-eqz p3, :cond_4

    const p3, 0x7f1203ac

    goto :goto_1

    :cond_4
    const p3, 0x7f1203ad

    :goto_1
    invoke-virtual {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p3, 0x7f1201e2

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 17
    new-instance p3, Lcom/narvii/monetization/sticker/StickerHelper$2;

    invoke-direct {p3, p0, p1}, Lcom/narvii/monetization/sticker/StickerHelper$2;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    const/high16 p1, -0x10000

    const v0, 0x7f1203a0

    invoke-virtual {p2, v0, p3, p1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 18
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 19
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->intent(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/content/Intent;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_6

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    instance-of p2, p2, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_6

    const-string p2, "finishWithResult"

    const/4 p3, 0x1

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    check-cast p2, Lcom/narvii/app/NVFragment;

    const/16 p3, 0x66

    invoke-static {p2, p1, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 24
    invoke-static {p2, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

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

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/Media;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    const-string v1, "photo"

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/photos/PhotoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string/jumbo v1, "sticker"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->keepPng()Lcom/narvii/photos/PhotoUploadSpec$Builder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->build()Lcom/narvii/photos/PhotoUploadSpec;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    new-instance v1, Lcom/narvii/monetization/sticker/StickerHelper$9;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, p0, p3, p4}, Lcom/narvii/monetization/sticker/StickerHelper$9;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/narvii/photos/PhotoManager;->upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    const-string/jumbo p3, "statistics"

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 80
    .line 81
    const-string p3, "Add a Sticker"

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    if-nez p2, :cond_0

    .line 88
    const/4 p2, 0x0

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_0
    const-string p3, "pickSource"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    :goto_0
    const-string p3, "Type"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    const-string p2, "Keyboard"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    const-string p2, "Add a Sticker Total"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    :cond_1
    return-void
.end method

.method public pickStickerImage(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->pickStickerImage(Lcom/narvii/media/MediaPickerFragment;Z)V

    return-void
.end method

.method public pickStickerImage(Lcom/narvii/media/MediaPickerFragment;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v2, 0x80

    const/16 v3, 0x44

    .line 4
    invoke-virtual {v1, v2, v2, v3, v3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setSize(IIII)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    const/16 v3, 0xc

    iput v3, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    if-nez p2, :cond_1

    iput-boolean v2, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    :cond_1
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public saveAsFavorite(Lcom/narvii/model/Sticker;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->saveAsFavorite(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAsFavorite(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "/store/share-requests/pending-check"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const/16 v2, 0x72

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    const-string v3, "objectType"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/monetization/sticker/StickerHelper$11;

    .line 39
    .line 40
    const-class v3, Lcom/narvii/monetization/sticker/model/PendingStickerResponse;

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/monetization/sticker/StickerHelper$11;-><init>(Lcom/narvii/monetization/sticker/StickerHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 47
    return-void
.end method

.method public showExpireDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    const-string v1, "Sticker (Dialog)"

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 15
    return-void
.end method

.method public showMembershipDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    const-string v1, "Sticker (Dialog)"

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 15
    return-void
.end method

.method public showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-wide v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    .line 7
    .line 8
    const-wide/16 v3, 0x32

    .line 9
    .line 10
    cmp-long p1, v1, v3

    .line 11
    .line 12
    if-ltz p1, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    return v0
.end method
