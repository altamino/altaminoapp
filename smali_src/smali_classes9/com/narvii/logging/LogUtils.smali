.class public Lcom/narvii/logging/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static lastPauseContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVContext;",
            ">;"
        }
    .end annotation
.end field

.field public static nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

.field public static nextPageStrategyInfo:Ljava/lang/String;

.field public static optionMenuClickArea:Ljava/lang/String;

.field public static resumingContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/app/NVContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static changeNextPageRefererIfNull(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/logging/PageRefererInfo;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 23
    :cond_1
    return-void
.end method

.method public static completeLogEvent(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 8
    .line 9
    instance-of v0, p0, Lcom/narvii/logging/Page;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    move-object v0, p0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/logging/Page;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/narvii/logging/Page;->isValidPage()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/narvii/logging/Page;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lcom/narvii/logging/Page;->isFinalPage()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    return-void
.end method

.method public static findShownInAdapter(Landroid/view/View;)Lcom/narvii/logging/Area;
    .locals 3

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    sget v1, Lcom/narvii/lib/R$id;->_shown_in_adapter:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    instance-of v2, v1, Lcom/narvii/logging/Area;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/logging/Area;

    .line 16
    return-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    instance-of v1, v1, Landroid/view/View;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    instance-of v1, v1, Landroid/widget/ListView;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    return-object v0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Landroid/view/View;

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object p0, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-object v0
.end method

.method public static flipperShownInAdapter(Landroid/view/View;Lcom/narvii/list/NVAdapter;)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_contains_flipper:I

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 14
    return-void
.end method

.method public static getAttachedObject(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_attached_object:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static getFlatJSONObject(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Lcom/narvii/logging/LogUtils;->getFlatJSONObjectInternal(Lorg/json/JSONObject;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 13
    return-object v0
.end method

.method private static getFlatJSONObjectInternal(Lorg/json/JSONObject;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    .line 30
    sget-object v2, Lcom/narvii/logging/LogUtils$2;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v3

    .line 39
    .line 40
    aget v2, v2, v3

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    if-eq v2, v3, :cond_6

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isLong()Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    .line 77
    move-result-wide v2

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isInt()Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    .line 99
    move-result v0

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isDouble()Z

    .line 115
    move-result v2

    .line 116
    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->doubleValue()D

    .line 121
    move-result-wide v2

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    .line 137
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isFloat()Z

    .line 138
    move-result v2

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    .line 144
    move-result v0

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :goto_1
    const-string v1, "convert"

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_6
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 180
    .line 181
    if-eqz v1, :cond_0

    .line 182
    .line 183
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 184
    .line 185
    .line 186
    invoke-static {p0, v0}, Lcom/narvii/logging/LogUtils;->getFlatJSONObjectInternal(Lorg/json/JSONObject;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    :cond_7
    return-void
.end method

.method public static getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/logging/LogContextInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/logging/LogContextInfo;-><init>()V

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-eqz p0, :cond_7

    .line 18
    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    if-nez v3, :cond_3

    .line 22
    .line 23
    instance-of v4, p0, Lcom/narvii/logging/Page;

    .line 24
    .line 25
    if-eqz v4, :cond_3

    .line 26
    move-object v4, p0

    .line 27
    .line 28
    check-cast v4, Lcom/narvii/logging/Page;

    .line 29
    .line 30
    .line 31
    invoke-interface {v4}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-interface {v4}, Lcom/narvii/logging/Page;->isValidPage()Z

    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x1

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    if-nez v5, :cond_1

    .line 42
    move v3, v7

    .line 43
    .line 44
    :cond_1
    if-eqz v5, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 48
    .line 49
    iget-object v5, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-interface {v4}, Lcom/narvii/logging/Page;->getPvId()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    iput-object v5, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-interface {v4}, Lcom/narvii/logging/Page;->isFinalPage()Z

    .line 61
    move-result v4

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    move v2, v7

    .line 65
    .line 66
    :cond_3
    instance-of v4, p0, Lcom/narvii/logging/Area;

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    iget-object v4, v0, Lcom/narvii/logging/LogContextInfo;->areaName:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v4, :cond_4

    .line 73
    move-object v4, p0

    .line 74
    .line 75
    check-cast v4, Lcom/narvii/logging/Area;

    .line 76
    .line 77
    .line 78
    invoke-interface {v4}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    iput-object v4, v0, Lcom/narvii/logging/LogContextInfo;->areaName:Ljava/lang/String;

    .line 82
    .line 83
    :cond_4
    instance-of v4, p0, Lcom/narvii/logging/Page;

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    iget-object v5, v0, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    .line 88
    .line 89
    if-nez v5, :cond_5

    .line 90
    move-object v5, p0

    .line 91
    .line 92
    check-cast v5, Lcom/narvii/logging/Page;

    .line 93
    .line 94
    .line 95
    invoke-interface {v5}, Lcom/narvii/logging/Page;->getStrategyInfo()Ljava/lang/String;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    iput-object v5, v0, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    .line 99
    .line 100
    :cond_5
    if-eqz v4, :cond_6

    .line 101
    .line 102
    iget-object v4, v0, Lcom/narvii/logging/LogContextInfo;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 103
    .line 104
    if-nez v4, :cond_6

    .line 105
    move-object v4, p0

    .line 106
    .line 107
    check-cast v4, Lcom/narvii/logging/Page;

    .line 108
    .line 109
    .line 110
    invoke-interface {v4}, Lcom/narvii/logging/Page;->getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    iput-object v4, v0, Lcom/narvii/logging/LogContextInfo;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 114
    .line 115
    .line 116
    :cond_6
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 117
    move-result-object p0

    .line 118
    goto :goto_0

    .line 119
    .line 120
    .line 121
    :cond_7
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 122
    move-result p0

    .line 123
    .line 124
    if-nez p0, :cond_8

    .line 125
    .line 126
    if-nez v3, :cond_8

    .line 127
    .line 128
    const-string p0, "-"

    .line 129
    .line 130
    .line 131
    invoke-static {p0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    iput-object p0, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    const/4 p0, 0x0

    .line 137
    .line 138
    iput-object p0, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    .line 139
    :goto_1
    return-object v0
.end method

.method public static getObjectSubType(II)Lcom/narvii/logging/ObjectSubType;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/16 v1, 0x83

    if-ne p0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_2
    return-object v0

    .line 4
    :pswitch_0
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->external_post:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 5
    :pswitch_1
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->image:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 6
    :pswitch_2
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->quiz:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 7
    :pswitch_3
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->link:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 8
    :pswitch_4
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->poll:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 9
    :pswitch_5
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->question:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 10
    :pswitch_6
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->repost:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 11
    :cond_3
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->normal:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    :cond_4
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getObjectSubType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectSubType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Lcom/narvii/model/Blog;

    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/Blog;->objectType()I

    move-result v0

    iget p0, p0, Lcom/narvii/model/Blog;->type:I

    invoke-static {v0, p0}, Lcom/narvii/logging/LogUtils;->getObjectSubType(II)Lcom/narvii/logging/ObjectSubType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getObjectType(I)Lcom/narvii/logging/ObjectType;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xc

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x83

    if-eq p0, v0, :cond_5

    const/16 v0, 0x385

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lcom/narvii/logging/ObjectType;->suggest_query:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 9
    :cond_1
    sget-object p0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 10
    :cond_2
    sget-object p0, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 11
    :cond_3
    sget-object p0, Lcom/narvii/logging/ObjectType;->comment:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 12
    :cond_4
    sget-object p0, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 13
    :cond_5
    sget-object p0, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 14
    :cond_6
    sget-object p0, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    return-object p0
.end method

.method public static getObjectType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Lcom/narvii/model/story/StoryTopic;

    if-eqz v1, :cond_1

    .line 2
    sget-object p0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 3
    :cond_1
    instance-of v1, p0, Lcom/narvii/model/InterestData;

    if-eqz v1, :cond_2

    .line 4
    sget-object p0, Lcom/narvii/logging/ObjectType;->interest:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    if-nez v1, :cond_3

    .line 6
    instance-of p0, p0, Lcom/narvii/model/User;

    if-nez p0, :cond_3

    return-object v0

    .line 7
    :cond_3
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getObjectType(I)Lcom/narvii/logging/ObjectType;

    move-result-object p0

    return-object p0
.end method

.method public static getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    move-object v1, p0

    .line 6
    .line 7
    :goto_0
    if-eqz v1, :cond_3

    .line 8
    .line 9
    sget v2, Lcom/narvii/lib/R$id;->_shown_in_fragment:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isValidPage()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    return-object v2

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    instance-of v2, v2, Landroid/view/View;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Landroid/view/View;

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v1, v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    instance-of v1, v1, Lcom/narvii/app/NVContext;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    check-cast p0, Lcom/narvii/app/NVContext;

    .line 58
    return-object p0

    .line 59
    :cond_4
    return-object v0
.end method

.method public static getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_shown_in_adapter:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static getValidResumingPage()Lcom/narvii/app/NVContext;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    instance-of v2, v1, Lcom/narvii/logging/Page;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    move-object v2, v1

    .line 24
    .line 25
    check-cast v2, Lcom/narvii/logging/Page;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    return-object v1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method public static isParentContext(Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method public static isStoryDetailPage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "StoryDetailPage"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static notSetCellTag(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_not_set_cell_tag:I

    .line 6
    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static recyclerShownInAdapter(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Area;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    sget v0, Lcom/narvii/lib/R$id;->_contains_recycler:I

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance v1, Lcom/narvii/logging/LogUtils$1;

    invoke-direct {v1, p2}, Lcom/narvii/logging/LogUtils$1;-><init>(Lcom/narvii/logging/Area;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    invoke-static {p0, p2}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    return-void
.end method

.method public static recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/logging/Impression/ImpressionCollector;->getAdapter()Lcom/narvii/logging/Area;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;->getContainerId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-static {p0, p1, v0}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Lcom/narvii/logging/Area;)V

    return-void
.end method

.method public static resetLogInfo()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    sput-object v0, Lcom/narvii/logging/LogUtils;->optionMenuClickArea:Ljava/lang/String;

    return-void
.end method

.method public static setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_attached_object:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
.end method

.method public static setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_shown_in_adapter:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
.end method

.method public static tagExtraMap(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_extra_map:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
.end method

.method public static tagFragment(Landroid/view/View;Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_shown_in_fragment:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
.end method

.method public static tagLocalMap(Landroid/view/View;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_local_map:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    return-void
.end method

.method public static takeLogContextInfoWhenStartPage(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "__strategyInfo"

    .line 14
    .line 15
    sget-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string v1, "__pageRefererInfo"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_2
    return-void
.end method

.method public static takeOldStrategyInfo(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/model/StrategyObject;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/StrategyObject;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcom/narvii/model/StrategyObject;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 20
    move-result-object v0

    .line 21
    move-object v1, v0

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/model/StrategyObject;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, p0}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    .line 30
    const-string v0, "replace object"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_0
    return-object p1
.end method

.method public static teaValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Double;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    .line 10
    move-result p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    check-cast p0, Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p0, "True"

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    const-string p0, "False"

    .line 33
    :goto_0
    return-object p0

    .line 34
    .line 35
    :cond_2
    const-string v0, ""

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    const-string v1, "null"

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    return-object v1

    .line 45
    .line 46
    :cond_3
    if-nez p0, :cond_4

    .line 47
    return-object v1

    .line 48
    :cond_4
    return-object p0
.end method
