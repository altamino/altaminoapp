.class public Lcom/narvii/wallet/CoinHistory;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public deepLink()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "objectDeeplinkUrl"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "description"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getBonusCoinsFloat()D
    .locals 2

    iget-wide v0, p0, Lcom/narvii/wallet/CoinHistory;->bonusCoinsFloat:D

    return-wide v0
.end method

.method public getCompareDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->createdTime:Ljava/util/Date;

    return-object v0
.end method

.method public icon()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "icon"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
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
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "subtitle"

    .line 6
    .line 7
    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/wallet/CoinHistory;->uid:Ljava/lang/String;

    return-object v0
.end method
