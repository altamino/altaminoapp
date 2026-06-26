.class public Lcom/narvii/logging/LogEvent$Builder;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/logging/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field logEvent:Lcom/narvii/logging/LogEvent;

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 62
    instance-of v0, p1, Lcom/narvii/logging/LogProxyNVContext;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/logging/LogProxyNVContext;

    invoke-interface {p1}, Lcom/narvii/logging/LogProxyNVContext;->getLogNVContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/narvii/logging/LogProxyNVContext;->getLogNVContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 65
    :cond_0
    new-instance p1, Lcom/narvii/logging/LogEvent;

    invoke-direct {p1}, Lcom/narvii/logging/LogEvent;-><init>()V

    iput-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 66
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventId:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    sget-object v0, Lcom/narvii/logging/LogEventType;->UserEvent:Lcom/narvii/logging/LogEventType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    return-void
.end method

.method private actSemantic(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public actClick()Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 161
    sget-object v0, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 157
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public actType(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    return-object p0
.end method

.method public allowNoPage()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/logging/LogEvent;->allowNoPage:Z

    return-object p0
.end method

.method public appEvent()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    sget-object v1, Lcom/narvii/logging/LogEventType;->AppEvent:Lcom/narvii/logging/LogEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    return-object p0
.end method

.method public area(Lcom/narvii/logging/Area;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-interface {p1}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    return-object p0
.end method

.method public area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    return-object p0
.end method

.method public areaIfNotSet(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 134
    sget-object v0, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    return-object p0
.end method

.method public build()Lcom/narvii/logging/LogEvent;
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_6

    .line 355
    invoke-static {v0, p0}, Lcom/narvii/logging/LogUtils;->completeLogEvent(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent$Builder;)V

    .line 357
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 359
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 363
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 367
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->areaName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v2, v2, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v4, v4, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 374
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 377
    :cond_4
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-nez v2, :cond_5

    .line 378
    iget-object v0, v0, Lcom/narvii/logging/LogContextInfo;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iput-object v0, v1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget v0, v0, Lcom/narvii/logging/LogEvent;->ndcId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 382
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 383
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, v1, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 388
    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 391
    :cond_7
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    return-object v0
.end method

.method public containExtraKey(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_1

    return v0

    .line 214
    :cond_1
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public extraInfo(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p0
.end method

.method public extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v1, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_0

    .line 224
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 227
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 228
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 229
    :cond_1
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 230
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 231
    :cond_2
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 232
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 233
    :cond_3
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 234
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 235
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 236
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 237
    :cond_5
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_6

    .line 238
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    :cond_6
    if-nez p2, :cond_7

    .line 240
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 242
    :cond_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    return-object p0
.end method

.method public extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    if-nez p2, :cond_0

    return-object p0

    .line 203
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-object p0
.end method

.method public getLogEvent()Lcom/narvii/logging/LogEvent;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    return-object v0
.end method

.method public impression()Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 165
    sget-object v0, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 166
    sget-object v0, Lcom/narvii/logging/ActSemantic;->objectImpression:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    return-object p0
.end method

.method public impressionQuit()Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 171
    sget-object v0, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 172
    sget-object v0, Lcom/narvii/logging/ActSemantic;->objectImpressionQuit:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    return-object p0
.end method

.method public ndcId(I)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput p1, v0, Lcom/narvii/logging/LogEvent;->ndcId:I

    return-object p0
.end method

.method public object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 302
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->isStory()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 304
    iget-object v2, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iget-object v0, v0, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iput-object v0, v2, Lcom/narvii/logging/LogEvent;->parentId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->nvObject:Lcom/narvii/model/NVObject;

    .line 307
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    .line 308
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getObjectType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectType;

    move-result-object v0

    .line 309
    iget-object v2, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, v2, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    .line 310
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getObjectSubType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectSubType;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :cond_3
    iput-object v3, v1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 312
    instance-of v0, p1, Lcom/narvii/model/StrategyObject;

    if-eqz v0, :cond_4

    .line 313
    check-cast p1, Lcom/narvii/model/StrategyObject;

    invoke-interface {p1}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->strategyInfo(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_4
    return-object p0
.end method

.method public objectId(I)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 258
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method public objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 285
    :cond_0
    iget v0, p1, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->screenPos(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 286
    iget-object v0, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 287
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 289
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 290
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/logging/ObjectInfo;->extraHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public objectSubType(Lcom/narvii/logging/ObjectSubType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    return-object p0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    return-object p0
.end method

.method public objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    return-object p0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    return-object p0
.end method

.method public onlyInternalLogging()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/logging/LogEvent;->onlyInternalLogging:Z

    return-object p0
.end method

.method public page(Lcom/narvii/logging/Page;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-interface {p1}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    return-object p0
.end method

.method public page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    return-object p0
.end method

.method public pageRefererInfo(Lcom/narvii/logging/PageRefererInfo;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    return-object p0
.end method

.method public pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    sget-object v1, Lcom/narvii/logging/LogEventType;->PageViewEvent:Lcom/narvii/logging/LogEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    return-object p0
.end method

.method public pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    return-object p0
.end method

.method public reqId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->reqId:Ljava/lang/String;

    return-object p0
.end method

.method public screenPos(I)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput p1, v0, Lcom/narvii/logging/LogEvent;->screenPos:I

    return-object p0
.end method

.method public send()Lcom/narvii/logging/LogEvent;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->access$000(Lcom/narvii/logging/LogEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "log event has been sent"

    .line 329
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    return-object v0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->build()Lcom/narvii/logging/LogEvent;

    .line 333
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    const-string v1, "logEvent"

    .line 334
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/logging/service/LogEventService;

    if-eqz v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-interface {v0, v1}, Lcom/narvii/logging/service/LogEventService;->logEvent(Lcom/narvii/logging/LogEvent;)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->access$002(Lcom/narvii/logging/LogEvent;Z)Z

    .line 340
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    return-object v0
.end method

.method public strategyInfo(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    return-object p0
.end method

.method public subArea(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    return-object p0
.end method

.method public toThirdParty()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/logging/LogEvent;->sendToThirdParty:Z

    return-object p0
.end method

.method public type(Lcom/narvii/logging/LogEventType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    return-object p0
.end method
