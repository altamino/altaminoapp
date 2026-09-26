.class Lcom/narvii/chat/ChatBubbleView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatBubbleView;->setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatBubbleView;

.field final synthetic val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatBubbleView;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v0, "objectType"

    .line 5
    .line 6
    const-string v1, "attachedObjectInfo"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 14
    move-result p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 17
    .line 18
    const-string v2, "parentType"

    .line 19
    .line 20
    .line 21
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x7

    .line 28
    .line 29
    const-string v3, "android.intent.action.VIEW"

    .line 30
    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    const/16 p1, 0xc

    .line 34
    .line 35
    if-ne v0, p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    .line 39
    const-string v0, "objectId"

    .line 40
    .line 41
    .line 42
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 50
    .line 51
    const-string v2, "parentId"

    .line 52
    .line 53
    .line 54
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v2, "ndc://chat-message/"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p1, "?threadId="

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    new-instance v0, Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .line 95
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatBubbleView$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    const-string v0, "link"

    .line 108
    .line 109
    .line 110
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    if-eqz p1, :cond_1

    .line 118
    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView$2;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    new-instance v1, Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Lcom/narvii/chat/ChatBubbleView$2;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
