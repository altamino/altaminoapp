.class public Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;
.super Lcom/narvii/monetization/store/data/StoreItemStub;
.source "SourceFile"


# instance fields
.field private ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/data/StoreItemStub;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x72

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObjectType:I

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 15
    .line 16
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    .line 24
    new-instance p1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;-><init>()V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->name:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/model/RestrictionInfo;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Lcom/narvii/model/RestrictionInfo;-><init>()V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 47
    const/4 v0, 0x3

    .line 48
    .line 49
    iput v0, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 50
    return-void
.end method


# virtual methods
.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/store/data/StoreItemStubStickCollection;->ref:Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    return-object v0
.end method
