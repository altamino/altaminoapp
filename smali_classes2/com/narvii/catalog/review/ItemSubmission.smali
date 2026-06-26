.class public Lcom/narvii/catalog/review/ItemSubmission;
.super Lcom/narvii/model/NVObject;
.source "ItemSubmission.java"


# static fields
.field public static final STATUS_APPROVED:I = 0x2

.field public static final STATUS_CANCELLED:I = 0x4

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_REJECTED:I = 0x3


# instance fields
.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation
.end field

.field public destinationItemId:Ljava/lang/String;

.field public item:Lcom/narvii/model/Item;

.field public itemId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation
.end field

.field public operator:Lcom/narvii/model/User;

.field public originalItem:Lcom/narvii/model/Item;

.field public requestId:Ljava/lang/String;

.field public responseMessage:Ljava/lang/String;

.field public status:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/catalog/review/ItemSubmission;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public objectTypeName()Ljava/lang/String;
    .locals 1

    const-string v0, "itemSubmission"

    return-object v0
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

    .line 65
    iget-object v0, p0, Lcom/narvii/catalog/review/ItemSubmission;->uid:Ljava/lang/String;

    return-object v0
.end method
