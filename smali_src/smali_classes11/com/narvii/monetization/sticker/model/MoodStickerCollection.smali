.class public Lcom/narvii/monetization/sticker/model/MoodStickerCollection;
.super Lcom/narvii/monetization/sticker/model/StickerCollection;
.source "SourceFile"


# static fields
.field public static final MOOD_COLLECTION_ID:Ljava/lang/String; = "mood"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;-><init>()V

    const-string v0, "mood"

    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    const-string v0, "res://icon_mood_sticker_collection"

    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    const-string v0, "res://icon_small_mood_sticker_collection"

    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    const-string v0, "res://mood_sticker_collection_banner"

    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->bannerUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 2
    new-instance v1, Lcom/narvii/model/OwnershipInfo;

    invoke-direct {v1}, Lcom/narvii/model/OwnershipInfo;-><init>()V

    iput-object v1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    iput v0, v1, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 3
    new-instance v0, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {v0}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>()V

    const v0, 0x7f120cbe

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    const v0, 0x7f120cbd

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getBannerUrl()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
