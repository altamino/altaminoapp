.class Lcom/narvii/chat/ChatBubbleView$1;
.super Ljava/lang/Object;
.source "ChatBubbleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatBubbleView;

.field final synthetic val$linkSnippet:Lcom/narvii/model/LinkSummary;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatBubbleView;Lcom/narvii/model/LinkSummary;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView$1;->this$0:Lcom/narvii/chat/ChatBubbleView;

    iput-object p2, p0, Lcom/narvii/chat/ChatBubbleView$1;->val$linkSnippet:Lcom/narvii/model/LinkSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$1;->this$0:Lcom/narvii/chat/ChatBubbleView;

    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->access$000(Lcom/narvii/chat/ChatBubbleView;)Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView$1;->val$linkSnippet:Lcom/narvii/model/LinkSummary;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->handleLinkSnippetClick(Lcom/narvii/model/LinkSummary;)V

    return-void
.end method
