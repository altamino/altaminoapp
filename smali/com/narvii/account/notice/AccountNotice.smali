.class public Lcom/narvii/account/notice/AccountNotice;
.super Lcom/narvii/model/NVObject;
.source "AccountNotice.java"


# static fields
.field public static final LEVEL_FAIL:Ljava/lang/String; = "fail"

.field public static final LEVEL_MESSAGE:Ljava/lang/String; = "message"

.field public static final LEVEL_SUCCESS:Ljava/lang/String; = "success"

.field public static final NOTICE_PENALTY_TYPE_MUTE:I = 0x1

.field public static final NOTICE_PENALTY_TYPE_NONE:I = 0x0

.field public static final NOTICE_STATUS_ACCEPTED:I = 0x2

.field public static final NOTICE_STATUS_DECLINED:I = 0x3

.field public static final NOTICE_STATUS_NONE:I = 0x0

.field public static final NOTICE_STATUS_PENDING:I = 0x1

.field public static final NOTICE_TYPE_COPYRIGHT_TAKE_DOWN:I = 0x5

.field public static final NOTICE_TYPE_GLOBAL_NOTICE_USER:I = 0x8

.field public static final NOTICE_TYPE_GLOBAL_STRIKE_USER:I = 0xa

.field public static final NOTICE_TYPE_GLOBAL_SYSTEM_MESSAGE:I = 0xb

.field public static final NOTICE_TYPE_GLOBAL_WARN_USER:I = 0x9

.field public static final NOTICE_TYPE_NONE:I = 0x0

.field public static final NOTICE_TYPE_NOTICE_USER:I = 0x6

.field public static final NOTICE_TYPE_PROMOTE_CURATOR:I = 0x2

.field public static final NOTICE_TYPE_PROMOTE_LEADER:I = 0x1

.field public static final NOTICE_TYPE_STRIKE_USER:I = 0x4

.field public static final NOTICE_TYPE_TRANSFER_AGENT:I = 0x3

.field public static final NOTICE_TYPE_WARN_USER:I = 0x7


# instance fields
.field public cid:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ndcId"
    .end annotation
.end field

.field public community:Lcom/narvii/model/Community;

.field public content:Ljava/lang/String;

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public icon:Ljava/lang/String;

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public noticeId:Ljava/lang/String;

.field public operator:Lcom/narvii/model/User;

.field public penaltyType:I

.field public penaltyValue:J

.field public status:I

.field public targetUser:Lcom/narvii/model/User;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public attachContent()Ljava/lang/String;
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "content"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attachObjectFirstMedia()Lcom/narvii/model/Media;
    .locals 5

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "attachedObjectInfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "mediaList"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-class v2, Lcom/narvii/model/Media;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public attachTitle()Ljava/lang/String;
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attchObjectId()Ljava/lang/String;
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "objectId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attchObjectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attchObjectType()I
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "objectType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public attchParentId()Ljava/lang/String;
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "parentId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attchParentType()I
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "parentType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAppealTicketId()Ljava/lang/String;
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appealTicketId"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachDuration()I
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "attachedObjectInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "extensions"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "duration"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeDouble(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getAttachMedias()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mediaList"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/narvii/account/notice/AccountNoticeConfig;
    .locals 4

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "config"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/account/notice/AccountNoticeConfig;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/notice/AccountNoticeConfig;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtentionContent()Ljava/lang/String;
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "content"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMuteTime()I
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "penaltyType"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v3

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "penaltyValue"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    .line 176
    div-int/lit16 v0, v0, 0xe10

    return v0
.end method

.method public getNoticeLabel()Ljava/lang/String;
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "label"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoticeLableColor()I
    .locals 6

    .line 200
    invoke-virtual {p0}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLevel()Ljava/lang/String;

    move-result-object v0

    const v1, -0xed8c1b

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6f4abffd

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x2fd71e

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "fail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    return v1

    :cond_4
    const v0, -0x8800

    return v0

    :cond_5
    const v0, -0xff3b8a

    return v0
.end method

.method public getNoticeLevel()Ljava/lang/String;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "level"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/narvii/account/notice/AccountNoticeStyle;
    .locals 4

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "style"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/account/notice/AccountNoticeStyle;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/notice/AccountNoticeStyle;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "penaltyType"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->noticeId:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    .line 184
    iget v0, p0, Lcom/narvii/account/notice/AccountNotice;->cid:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

.method public strikeContent()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/narvii/account/notice/AccountNotice;->getExtentionContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/narvii/account/notice/AccountNotice;->getExtentionContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/account/notice/AccountNotice;->content:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
