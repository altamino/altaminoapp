.class public Lcom/narvii/monetization/store/data/ShareRequest;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getRefObject()Lcom/narvii/model/NVObject;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->refObjectType:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/store/data/ShareRequest;->refObject:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->cacheRefObject:Lcom/narvii/model/NVObject;

    .line 17
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/narvii/monetization/store/data/ShareRequest;->uid:Ljava/lang/String;

    return-object v0
.end method
