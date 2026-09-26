.class public Lcom/narvii/model/ChatBubble;
.super Lcom/narvii/model/StoreItemBaseObject;
.source "SourceFile"


# static fields
.field public static final CHAT_BUBBLE_TYPE_CUSTOM:I = 0x1

.field public static final CHAT_BUBBLE_TYPE_OFFICIAL:I = 0x2

.field public static final DEFAULT_BUBBLE_ID:Ljava/lang/String; = "default"

.field public static final EDIT_BUBBLE_ID:Ljava/lang/String; = "edit"

.field public static final LOCAL_TYPE_DEFAULE:I = -0x1

.field public static final LOCAL_TYPE_EDIT:I = -0x2


# instance fields
.field public backgroundImage:Ljava/lang/String;

.field public bannerImage:Ljava/lang/String;

.field public config:Lcom/narvii/model/BubbleInfo;

.field public coverImage:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public deletable:Z

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bubbleId"
    .end annotation
.end field

.field public md5:Ljava/lang/String;

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public resourceUrl:Ljava/lang/String;

.field public status:I

.field public templateId:Ljava/lang/String;

.field public type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bubbleType"
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/StoreItemBaseObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getBackgroundUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->backgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->bannerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnTime()Ljava/util/Date;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->createdTime:Ljava/util/Date;

    .line 12
    :goto_0
    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/ChatBubble;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/model/StoreItemBaseObject;->isTotalOwned()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x74

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public version()I
    .locals 1

    iget v0, p0, Lcom/narvii/model/ChatBubble;->version:I

    return v0
.end method
