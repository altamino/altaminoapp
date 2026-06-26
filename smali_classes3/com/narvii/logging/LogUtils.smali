.class public Lcom/narvii/logging/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


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

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeNextPageRefererIfNull(Lcom/narvii/app/NVContext;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 466
    :cond_0
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-nez v0, :cond_1

    .line 467
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;

    move-result-object p0

    .line 468
    iget-object p0, p0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 469
    new-instance v0, Lcom/narvii/logging/PageRefererInfo;

    invoke-direct {v0, p0}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    :cond_1
    return-void
.end method

.method public static completeLogEvent(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 185
    instance-of v0, p0, Lcom/narvii/logging/Page;

    if-eqz v0, :cond_2

    .line 186
    move-object v0, p0

    check-cast v0, Lcom/narvii/logging/Page;

    .line 187
    invoke-interface {v0}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-interface {v0}, Lcom/narvii/logging/Page;->isValidPage()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v0, p1}, Lcom/narvii/logging/Page;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 193
    invoke-interface {v0}, Lcom/narvii/logging/Page;->isFinalPage()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 198
    :cond_2
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static findShownInAdapter(Landroid/view/View;)Lcom/narvii/logging/Area;
    .locals 3

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 287
    sget v1, Lcom/narvii/lib/R$id;->_shown_in_adapter:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 288
    instance-of v2, v1, Lcom/narvii/logging/Area;

    if-eqz v2, :cond_0

    .line 289
    check-cast v1, Lcom/narvii/logging/Area;

    return-object v1

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    return-object v0

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static flipperShownInAdapter(Landroid/view/View;Lcom/narvii/list/NVAdapter;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 344
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_contains_flipper:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 345
    invoke-static {p0, p1}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    return-void
.end method

.method public static getAttachedObject(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 266
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_attached_object:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFlatJSONObject(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 408
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 409
    invoke-static {v0, p0}, Lcom/narvii/logging/LogUtils;->getFlatJSONObjectInternal(Lorg/json/JSONObject;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    return-object v0
.end method

.method private static getFlatJSONObjectInternal(Lorg/json/JSONObject;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 4

    .line 414
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object p1

    .line 415
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 416
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 419
    sget-object v2, Lcom/narvii/logging/LogUtils$2;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    .line 427
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isLong()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isInt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isDouble()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 434
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 435
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isFloat()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 438
    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "convert"

    .line 441
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 421
    :cond_6
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    .line 422
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogUtils;->getFlatJSONObjectInternal(Lorg/json/JSONObject;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static getLogContextInfo(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogContextInfo;
    .locals 8

    .line 203
    new-instance v0, Lcom/narvii/logging/LogContextInfo;

    invoke-direct {v0}, Lcom/narvii/logging/LogContextInfo;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 208
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_7

    const/4 v4, 0x1

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 212
    instance-of v5, p0, Lcom/narvii/logging/Page;

    if-eqz v5, :cond_3

    .line 213
    move-object v5, p0

    check-cast v5, Lcom/narvii/logging/Page;

    .line 214
    invoke-interface {v5}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-interface {v5}, Lcom/narvii/logging/Page;->isValidPage()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v6, :cond_3

    .line 220
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 221
    iget-object v6, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 222
    invoke-interface {v5}, Lcom/narvii/logging/Page;->getPvId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

    .line 225
    :cond_2
    invoke-interface {v5}, Lcom/narvii/logging/Page;->isFinalPage()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 231
    :cond_3
    instance-of v4, p0, Lcom/narvii/logging/Area;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/narvii/logging/LogContextInfo;->areaName:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 232
    move-object v4, p0

    check-cast v4, Lcom/narvii/logging/Area;

    invoke-interface {v4}, Lcom/narvii/logging/Area;->getAreaName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/logging/LogContextInfo;->areaName:Ljava/lang/String;

    .line 235
    :cond_4
    instance-of v4, p0, Lcom/narvii/logging/Page;

    if-eqz v4, :cond_5

    iget-object v5, v0, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 236
    move-object v5, p0

    check-cast v5, Lcom/narvii/logging/Page;

    invoke-interface {v5}, Lcom/narvii/logging/Page;->getStrategyInfo()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/narvii/logging/LogContextInfo;->strategyInfo:Ljava/lang/String;

    :cond_5
    if-eqz v4, :cond_6

    .line 239
    iget-object v4, v0, Lcom/narvii/logging/LogContextInfo;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-nez v4, :cond_6

    .line 240
    move-object v4, p0

    check-cast v4, Lcom/narvii/logging/Page;

    invoke-interface {v4}, Lcom/narvii/logging/Page;->getPageRefererInfo()Lcom/narvii/logging/PageRefererInfo;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/logging/LogContextInfo;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 243
    :cond_6
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p0

    goto :goto_0

    .line 246
    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    if-nez v3, :cond_8

    const-string p0, "-"

    .line 247
    invoke-static {p0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/narvii/logging/LogContextInfo;->pageName:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/4 p0, 0x0

    .line 249
    iput-object p0, v0, Lcom/narvii/logging/LogContextInfo;->pvId:Ljava/lang/String;

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

    .line 173
    :pswitch_0
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->story:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 171
    :pswitch_1
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->external_post:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 169
    :pswitch_2
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->image:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 167
    :pswitch_3
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->quiz:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 165
    :pswitch_4
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->link:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 163
    :pswitch_5
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->poll:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 161
    :pswitch_6
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->question:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 159
    :pswitch_7
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->repost:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    .line 157
    :cond_3
    sget-object p0, Lcom/narvii/logging/ObjectSubType;->normal:Lcom/narvii/logging/ObjectSubType;

    return-object p0

    :cond_4
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
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

    .line 143
    :cond_0
    instance-of v1, p0, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_1

    .line 144
    check-cast p0, Lcom/narvii/model/Blog;

    .line 145
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

    .line 134
    :cond_0
    sget-object p0, Lcom/narvii/logging/ObjectType;->suggest_query:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 121
    :cond_1
    sget-object p0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 126
    :cond_2
    sget-object p0, Lcom/narvii/logging/ObjectType;->chat:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 130
    :cond_3
    sget-object p0, Lcom/narvii/logging/ObjectType;->comment:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 132
    :cond_4
    sget-object p0, Lcom/narvii/logging/ObjectType;->item:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 124
    :cond_5
    sget-object p0, Lcom/narvii/logging/ObjectType;->blog:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 128
    :cond_6
    sget-object p0, Lcom/narvii/logging/ObjectType;->user:Lcom/narvii/logging/ObjectType;

    return-object p0
.end method

.method public static getObjectType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectType;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 63
    :cond_0
    instance-of v1, p0, Lcom/narvii/model/story/StoryTopic;

    if-eqz v1, :cond_1

    .line 64
    sget-object p0, Lcom/narvii/logging/ObjectType;->topic:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 66
    :cond_1
    instance-of v1, p0, Lcom/narvii/model/InterestData;

    if-eqz v1, :cond_2

    .line 67
    sget-object p0, Lcom/narvii/logging/ObjectType;->interest:Lcom/narvii/logging/ObjectType;

    return-object p0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    if-nez v1, :cond_3

    .line 70
    instance-of v2, p0, Lcom/narvii/model/User;

    if-nez v2, :cond_3

    return-object v0

    .line 74
    :cond_3
    instance-of v2, p0, Lcom/narvii/model/Blog;

    if-eqz v2, :cond_4

    .line 75
    check-cast p0, Lcom/narvii/model/Blog;

    iget v2, p0, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    iget-object p0, p0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz p0, :cond_4

    .line 76
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getObjectType(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/ObjectType;

    move-result-object p0

    return-object p0

    .line 79
    :cond_4
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getObjectType(I)Lcom/narvii/logging/ObjectType;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    return-object v0
.end method

.method public static getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_3

    .line 385
    sget v2, Lcom/narvii/lib/R$id;->_shown_in_fragment:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 386
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_1

    .line 387
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 388
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isValidPage()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 392
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 393
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/app/NVContext;

    if-eqz v1, :cond_4

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/narvii/app/NVContext;

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static getShownInAdapter(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 280
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_shown_in_adapter:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getValidResumingPage()Lcom/narvii/app/NVContext;
    .locals 3

    .line 87
    sget-object v0, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 89
    sget-object v1, Lcom/narvii/logging/LogUtils;->resumingContextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVContext;

    .line 90
    instance-of v2, v1, Lcom/narvii/logging/Page;

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v1

    check-cast v2, Lcom/narvii/logging/Page;

    invoke-interface {v2}, Lcom/narvii/logging/Page;->getPageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isParentContext(Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 110
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isStoryDetailPage(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "StoryDetailPage"

    .line 478
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static notSetCellTag(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 352
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_not_set_cell_tag:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static recyclerShownInAdapter(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Area;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 314
    :cond_2
    sget v0, Lcom/narvii/lib/R$id;->_contains_recycler:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    return-void

    .line 317
    :cond_3
    new-instance v0, Lcom/narvii/logging/LogUtils$1;

    invoke-direct {v0, p2}, Lcom/narvii/logging/LogUtils$1;-><init>(Lcom/narvii/logging/Area;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 324
    sget p1, Lcom/narvii/lib/R$id;->_contains_recycler:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 325
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

    .line 335
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/logging/Impression/ImpressionCollector;->getAdapter()Lcom/narvii/logging/Area;

    move-result-object v0

    .line 336
    invoke-virtual {p1}, Lcom/narvii/logging/Impression/ContainerInListViewImpressionCollector;->getContainerId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 337
    invoke-static {p0, p1, v0}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/narvii/logging/Area;)V

    return-void
.end method

.method public static resetLogInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 101
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 102
    sput-object v0, Lcom/narvii/logging/LogUtils;->optionMenuClickArea:Ljava/lang/String;

    return-void
.end method

.method public static setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 259
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_attached_object:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 273
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_shown_in_adapter:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

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

    if-nez p0, :cond_0

    return-void

    .line 359
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_extra_map:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static tagFragment(Landroid/view/View;Lcom/narvii/app/NVFragment;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 373
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_shown_in_fragment:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

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

    if-nez p0, :cond_0

    return-void

    .line 366
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->_local_map:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static takeLogContextInfoWhenStartPage(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 501
    :cond_0
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    const-string v1, "__strategyInfo"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_1
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    if-eqz v0, :cond_2

    .line 506
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "__pageRefererInfo"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static takeOldStrategyInfo(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;
    .locals 2

    .line 482
    instance-of v0, p0, Lcom/narvii/model/StrategyObject;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/narvii/model/StrategyObject;

    if-eqz v0, :cond_0

    .line 483
    check-cast p0, Lcom/narvii/model/StrategyObject;

    invoke-interface {p0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 486
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 487
    move-object v1, v0

    check-cast v1, Lcom/narvii/model/StrategyObject;

    invoke-interface {v1, p0}, Lcom/narvii/model/StrategyObject;->setStrategyInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "replace object"

    .line 490
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method public static teaValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 449
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 450
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 451
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 452
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "True"

    goto :goto_0

    :cond_1
    const-string p0, "False"

    :goto_0
    return-object p0

    :cond_2
    const-string v0, ""

    .line 453
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "null"

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    if-nez p0, :cond_4

    return-object v1

    :cond_4
    return-object p0
.end method
