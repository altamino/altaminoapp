.class Lcom/narvii/chat/screenroom/ScreenRoomService$12;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    const-string v1, "t"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-ne v0, v1, :cond_8

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
    .line 23
    const-string v2, "mute"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v0, v2

    .line 40
    .line 41
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    const-string v4, "lv"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    move v3, v4

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    .line 56
    move-result v3

    .line 57
    .line 58
    :goto_1
    iget-object v5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 59
    .line 60
    const-string v6, "pr"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    if-nez v5, :cond_2

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->floatValue()F

    .line 71
    move-result v4

    .line 72
    .line 73
    :goto_2
    iget-object v5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->val$json:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    .line 75
    const-string v6, "ao"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->booleanValue()Z

    .line 85
    move-result v5

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    move v2, v1

    .line 89
    .line 90
    :cond_3
    iget-object v5, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 91
    .line 92
    iget-boolean v6, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 93
    .line 94
    if-eq v0, v6, :cond_4

    .line 95
    .line 96
    iget v6, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 97
    or-int/2addr v1, v6

    .line 98
    .line 99
    iput v1, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 100
    .line 101
    :cond_4
    iput-boolean v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostMuted:Z

    .line 102
    .line 103
    iget v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 104
    .line 105
    cmpl-float v0, v0, v3

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 110
    .line 111
    or-int/lit8 v0, v0, 0x2

    .line 112
    .line 113
    iput v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 114
    .line 115
    :cond_5
    iput v3, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostIndicatorLevel:F

    .line 116
    .line 117
    iget v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 118
    .line 119
    cmpl-float v0, v4, v0

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 124
    .line 125
    or-int/lit8 v0, v0, 0x4

    .line 126
    .line 127
    iput v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 128
    .line 129
    :cond_6
    iput v4, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostVideoProgress:F

    .line 130
    .line 131
    iget v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostChangeFlags:I

    .line 132
    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    iget-object v0, v5, Lcom/narvii/chat/screenroom/ScreenRoomService;->srHostStatusCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRHostStatusCaller;->run()V

    .line 139
    .line 140
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$12;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 141
    .line 142
    iget-boolean v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 143
    .line 144
    if-eq v2, v1, :cond_8

    .line 145
    .line 146
    iput-boolean v2, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayAudioOnly:Z

    .line 147
    .line 148
    iget-object v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->srAudioOnlyCaller:Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService$SRAudioOnlyCaller;->run()V

    .line 152
    :cond_8
    return-void
.end method
