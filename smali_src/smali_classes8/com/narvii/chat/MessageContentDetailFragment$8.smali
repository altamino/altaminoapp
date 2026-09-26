.class Lcom/narvii/chat/MessageContentDetailFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/MessageContentDetailFragment;->updateChatMessageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/MessageContentDetailFragment;

.field final synthetic val$chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field final synthetic val$linkSnippet:Lcom/narvii/model/LinkSummary;


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/LinkSummary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$8;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/MessageContentDetailFragment$8;->val$chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/MessageContentDetailFragment$8;->val$linkSnippet:Lcom/narvii/model/LinkSummary;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$8;->val$chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/MessageContentDetailFragment$8;->val$linkSnippet:Lcom/narvii/model/LinkSummary;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/ChatHelper;->handleLinkSnippetClick(Lcom/narvii/model/LinkSummary;)V

    .line 8
    return-void
.end method
