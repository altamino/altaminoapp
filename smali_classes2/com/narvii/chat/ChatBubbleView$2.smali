.class Lcom/narvii/chat/ChatBubbleView$2;
.super Ljava/lang/Object;
.source "ChatBubbleView.java"

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

    .line 436
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->this$0:Lcom/narvii/chat/ChatBubbleView;

    iput-object p2, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 439
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "attachedObjectInfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-string v5, "objectType"

    aput-object v5, v1, v4

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    .line 440
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v5, v0, [Ljava/lang/String;

    aput-object v2, v5, v3

    const-string v6, "parentType"

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v1

    const-string v5, "android.intent.action.VIEW"

    const/4 v6, 0x7

    if-ne p1, v6, :cond_0

    const/16 p1, 0xc

    if-ne v1, p1, :cond_0

    .line 443
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v6, "objectId"

    aput-object v6, v1, v4

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 444
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v2, "parentId"

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://chat-message/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?threadId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 448
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$2;->val$node:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v1, "link"

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 456
    :try_start_1
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView$2;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
