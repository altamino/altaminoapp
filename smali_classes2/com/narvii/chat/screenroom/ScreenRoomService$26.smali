.class Lcom/narvii/chat/screenroom/ScreenRoomService$26;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onDataStreamReceived(I[BLcom/fasterxml/jackson/databind/node/ObjectNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0

    .line 1204
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1207
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_8

    const-string v1, "t"

    .line 1208
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1209
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1210
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "mute"

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1212
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "lv"

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 1213
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    move-result v3

    .line 1214
    :goto_1
    iget-object v5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v6, "pr"

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 1215
    :cond_2
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    move-result v4

    .line 1216
    :goto_2
    iget-object v5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v6, "ao"

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1217
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 1219
    :cond_3
    iget-object v5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-boolean v6, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    if-eq v0, v6, :cond_4

    .line 1220
    iget v6, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    or-int/2addr v1, v6

    iput v1, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 1222
    :cond_4
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-boolean v0, v1, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 1223
    iget v0, v1, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    .line 1224
    iget v0, v1, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 1226
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput v3, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 1227
    iget v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_6

    .line 1228
    iget v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 1230
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput v4, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 1231
    iget v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    if-eqz v1, :cond_7

    .line 1232
    iget-object v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->run()V

    .line 1235
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$26;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-boolean v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    if-eq v2, v1, :cond_8

    .line 1236
    iput-boolean v2, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 1237
    iget-object v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srAudioOnlyCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;->run()V

    :cond_8
    return-void
.end method
