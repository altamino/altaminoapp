.class public Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;
.super Lcom/narvii/monetization/store/data/StoreItemStub;
.source "StoreItemStubStickCollection.java"


# instance fields
.field private ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/narvii/monetization/store/data/StoreItemStub;-><init>()V

    const/16 v0, 0x72

    .line 20
    iput v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 21
    new-instance v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-direct {v0, p1}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 22
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    new-instance p1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    invoke-direct {p1}, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    iput-object v1, p1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    .line 25
    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    .line 26
    new-instance p1, Lcom/narvii/model/RestrictionInfo;

    invoke-direct {p1}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 27
    iget-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    const/4 v0, 0x3

    iput v0, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    return-void
.end method


# virtual methods
.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    return-object v0
.end method
