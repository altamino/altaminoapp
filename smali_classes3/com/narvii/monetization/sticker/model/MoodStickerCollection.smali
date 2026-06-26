.class public Lcom/narvii/monetization/sticker/model/MoodStickerCollection;
.super Lcom/narvii/monetization/sticker/model/StickerCollection;
.source "MoodStickerCollection.java"


# static fields
.field public static final MOOD_COLLECTION_ID:Ljava/lang/String; = "mood"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;-><init>()V

    const-string v0, "mood"

    .line 20
    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    const-string v0, "res://icon_mood_sticker_collection"

    .line 21
    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    const-string v0, "res://icon_small_mood_sticker_collection"

    .line 22
    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    const-string v0, "res://mood_sticker_collection_banner"

    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->bannerUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 25
    new-instance v1, Lcom/narvii/model/OwnershipInfo;

    invoke-direct {v1}, Lcom/narvii/model/OwnershipInfo;-><init>()V

    iput-object v1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 26
    iget-object v1, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    iput v0, v1, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 27
    new-instance v0, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {v0}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 28
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>()V

    const v0, 0x7f0f0bb8

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    const v0, 0x7f0f0bb7

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/model/StickerCollection;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
