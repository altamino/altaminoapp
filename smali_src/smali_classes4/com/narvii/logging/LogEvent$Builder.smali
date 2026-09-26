.class public Lcom/narvii/logging/LogEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/logging/LogProxyNVContext;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/logging/LogProxyNVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/logging/LogProxyNVContext;->getLogNVContext()Lcom/narvii/app/NVContext;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/logging/LogProxyNVContext;->getLogNVContext()Lcom/narvii/app/NVContext;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    :cond_0
    new-instance p1, Lcom/narvii/logging/LogEvent;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Lcom/narvii/logging/LogEvent;-><init>()V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 43
    .line 44
    sget-object v0, Lcom/narvii/logging/LogEventType;->UserEvent:Lcom/narvii/logging/LogEventType;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private actSemantic(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 1
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public actClick()Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->actType(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public actType(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 1
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    return-object p0
.end method

.method public allowNoPage()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/logging/LogEvent;->allowNoPage:Z

    .line 6
    return-object p0
.end method

.method public appEvent()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/logging/LogEventType;->AppEvent:Lcom/narvii/logging/LogEventType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    return-object p0
.end method

.method public area(Lcom/narvii/logging/Area;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 1
    invoke-interface {p1}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    return-object p0
.end method

.method public area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 2
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    return-object p0
.end method

.method public areaIfNotSet(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActType;->pageView:Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    :cond_0
    return-object p0
.end method

.method public build()Lcom/narvii/logging/LogEvent;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/narvii/logging/LogUtils;->completeLogEvent(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent$Builder;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->areaName:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v4, "-"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 66
    .line 67
    iget-object v4, v4, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    const-string v2, ""

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 87
    .line 88
    :cond_3
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 89
    .line 90
    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    iget-object v2, v0, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 97
    .line 98
    :cond_4
    iget-object v2, v1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 99
    .line 100
    if-nez v2, :cond_5

    .line 101
    .line 102
    iget-object v0, v0, Lcom/narvii/logging/LogContextInfo;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 103
    .line 104
    iput-object v0, v1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 105
    .line 106
    :cond_5
    iget v0, v1, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 107
    const/4 v1, -0x1

    .line 108
    .line 109
    if-ne v0, v1, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 112
    .line 113
    const-string v1, "config"

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 125
    move-result v0

    .line 126
    .line 127
    iput v0, v1, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 128
    .line 129
    :cond_6
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 130
    .line 131
    iget-object v1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v1, :cond_7

    .line 134
    .line 135
    iget-object v1, v0, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 140
    :cond_7
    return-object v0
.end method

.method public containExtraKey(Ljava/lang/String;)Z
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
    :cond_0
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_2
    return v0
.end method

.method public extraInfo(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    return-object p0
.end method

.method public extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 17
    .line 18
    instance-of v1, p2, Ljava/lang/Integer;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    instance-of v1, p2, Ljava/lang/Long;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    instance-of v1, p2, Ljava/lang/Float;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    check-cast p2, Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    instance-of v1, p2, Ljava/lang/Double;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 68
    move-result-wide v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    check-cast p2, Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    move-result p2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_5
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_6
    if-nez p2, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 110
    :goto_0
    return-object p0
.end method

.method public extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 7
    return-object p0
.end method

.method public getLogEvent()Lcom/narvii/logging/LogEvent;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    return-object v0
.end method

.method public impression()Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/logging/ActSemantic;->objectImpression:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    return-object p0
.end method

.method public impressionQuit()Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActType;->impression:Lcom/narvii/logging/ActType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/logging/ActSemantic;->objectImpressionQuit:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 11
    return-object p0
.end method

.method public ndcId(I)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 5
    return-object p0
.end method

.method public object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 6
    .line 7
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->nvObject:Lcom/narvii/model/NVObject;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getObjectType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectType;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v2

    .line 29
    .line 30
    :goto_0
    iput-object v0, v1, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/logging/LogUtils;->getObjectSubType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectSubType;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    :cond_2
    iput-object v2, v1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 45
    .line 46
    instance-of v0, p1, Lcom/narvii/model/StrategyObject;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/model/StrategyObject;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->strategyInfo(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 58
    :cond_3
    return-object p0
.end method

.method public objectId(I)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public objectId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 1
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method public objectIfNotNull(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    iget v0, p1, Lcom/narvii/logging/ObjectInfo;->screenPos:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->screenPos(I)Lcom/narvii/logging/LogEvent$Builder;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/narvii/logging/ObjectInfo;->object:Lcom/narvii/model/NVObject;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/logging/ObjectInfo;->getExtraInfo()Ljava/util/HashMap;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    instance-of v2, v1, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    move-object v2, v1

    .line 47
    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p1, Lcom/narvii/logging/ObjectInfo;->extraHashMap:Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object p0
.end method

.method public objectSubType(Lcom/narvii/logging/ObjectSubType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 17
    return-object p0
.end method

.method public objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    .line 8
    return-object p0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    .line 17
    return-object p0
.end method

.method public onlyInternalLogging()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/logging/LogEvent;->onlyInternalLogging:Z

    .line 6
    return-object p0
.end method

.method public page(Lcom/narvii/logging/Page;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 1
    invoke-interface {p1}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    return-object p0
.end method

.method public page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 2
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    return-object p0
.end method

.method public pageRefererInfo(Lcom/narvii/logging/PageRefererInfo;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 5
    return-object p0
.end method

.method public pageViewEvent()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/logging/LogEventType;->PageViewEvent:Lcom/narvii/logging/LogEventType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 11
    return-object p0
.end method

.method public pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public reqId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->reqId:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public screenPos(I)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 5
    return-object p0
.end method

.method public send()Lcom/narvii/logging/LogEvent;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/logging/LogEvent;->a(Lcom/narvii/logging/LogEvent;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "log event has been sent"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 16
    return-object v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/logging/LogEvent$Builder;->build()Lcom/narvii/logging/LogEvent;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v1, "logEvent"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/logging/service/LogEventService;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/narvii/logging/service/LogEventService;->logEvent(Lcom/narvii/logging/LogEvent;)V

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->b(Lcom/narvii/logging/LogEvent;Z)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 47
    return-object v0
.end method

.method public strategyInfo(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public subArea(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public toThirdParty()Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/logging/LogEvent;->sendToThirdParty:Z

    .line 6
    return-object p0
.end method

.method public type(Lcom/narvii/logging/LogEventType;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEvent$Builder;->logEvent:Lcom/narvii/logging/LogEvent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, v0, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 9
    return-object p0
.end method
