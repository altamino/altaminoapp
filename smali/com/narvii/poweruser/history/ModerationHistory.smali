.class public Lcom/narvii/poweruser/history/ModerationHistory;
.super Lcom/narvii/model/NVObject;
.source "ModerationHistory.java"


# static fields
.field public static final LEVEL_DANGER:Ljava/lang/String; = "danger"

.field public static final LEVEL_DEFAULT:Ljava/lang/String; = "default"

.field public static final LEVEL_SUCCESS:Ljava/lang/String; = "success"

.field public static final LEVEL_WARNING:Ljava/lang/String; = "warning"

.field public static final MODERATION_LEVEL_CURATOR:I = 0x1

.field public static final MODERATION_LEVEL_IMOD:I = 0x3

.field public static final MODERATION_LEVEL_LEADER:I = 0x2

.field public static final MODERATION_LEVEL_NONE:I = 0x0

.field public static final OP_ADMIN_SEND_STRIKE_TO_USER:I = 0xcd

.field public static final OP_ADMIN_SEND_WARNING_TO_USER:I = 0x10b


# instance fields
.field public author:Lcom/narvii/model/User;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extData:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public logId:J

.field public moderationLevel:I

.field public ndcId:I

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public objectUrl:Ljava/lang/String;

.field public operation:I

.field public operationDetail:Ljava/lang/String;

.field public operationLevel:Ljava/lang/String;

.field public operationName:Ljava/lang/String;

.field public refObject:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/narvii/poweruser/history/ModerationHistory;->logId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x384

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

    .line 70
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistory;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
