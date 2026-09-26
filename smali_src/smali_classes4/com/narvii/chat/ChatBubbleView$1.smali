.class Lcom/narvii/chat/ChatBubbleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView$1;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/ChatBubbleView$1;->val$linkSnippet:Lcom/narvii/model/LinkSummary;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView$1;->this$0:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/ChatBubbleView;->a(Lcom/narvii/chat/ChatBubbleView;)Lcom/narvii/chat/util/ChatHelper;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView$1;->val$linkSnippet:Lcom/narvii/model/LinkSummary;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->handleLinkSnippetClick(Lcom/narvii/model/LinkSummary;)V

    .line 12
    return-void
.end method
