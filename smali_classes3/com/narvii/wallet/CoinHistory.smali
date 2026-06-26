.class public Lcom/narvii/wallet/CoinHistory;
.super Lcom/narvii/model/NVObject;
.source "CoinHistory.java"

# interfaces
.implements Lcom/narvii/list/DateCompare;


# static fields
.field public static final COIN_SOURCE_TYPE_FANS_BACKWARD:I = 0x10


# instance fields
.field public bonusCoinsFloat:D

.field public changedCoins:I

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation
.end field

.field public extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public originCoinsFloat:D

.field public sourceType:I

.field public taxCoinsFloat:D

.field public totalCoins:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deepLink()Ljava/lang/String;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "objectDeeplinkUrl"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "description"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBonusCoinsFloat()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/narvii/wallet/CoinHistory;->bonusCoinsFloat:D

    return-wide v0
.end method

.method public getCompareDate()Ljava/util/Date;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public icon()Ljava/lang/String;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "icon"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "subtitle"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->uid:Ljava/lang/String;

    return-object v0
.end method
