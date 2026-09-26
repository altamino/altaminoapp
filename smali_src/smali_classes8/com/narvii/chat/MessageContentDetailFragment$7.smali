.class Lcom/narvii/chat/MessageContentDetailFragment$7;
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


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageContentDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$7;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$7;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/MessageContentDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->q(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatMessage;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment$7;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/chat/MessageContentDetailFragment;->o(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/chat/ChatBubbleView;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/chat/audio/AudioHelper;->handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V

    .line 19
    return-void
.end method
