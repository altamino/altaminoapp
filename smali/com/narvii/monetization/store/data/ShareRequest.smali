.class public Lcom/narvii/monetization/store/data/ShareRequest;
.super Lcom/narvii/model/NVObject;
.source "ShareRequest.java"


# static fields
.field public static final OBJECT_APPROVAL_STATUS_APPROVED:I = 0x2

.field public static final OBJECT_APPROVAL_STATUS_NONE:I = 0x0

.field public static final OBJECT_APPROVAL_STATUS_PENDING:I = 0x1

.field public static final OBJECT_APPROVAL_STATUS_REJECTED:I = 0x3


# instance fields
.field private cacheRefObject:Lcom/narvii/model/NVObject;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public refObject:Lcom/fasterxml/jackson/databind/JsonNode;

.field public refObjectId:Ljava/lang/String;

.field public refObjectType:I

.field public requestId:Ljava/lang/String;

.field public status:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->cacheRefObject:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_0

    .line 63
    iget v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->refObjectType:I

    iget-object v1, p0, Lcom/narvii/monetization/store/data/ShareRequest;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0, v1}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->cacheRefObject:Lcom/narvii/model/NVObject;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->requestId:Ljava/lang/String;

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

.method public uid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->uid:Ljava/lang/String;

    return-object v0
.end method
