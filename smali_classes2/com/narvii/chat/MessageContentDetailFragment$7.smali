.class Lcom/narvii/chat/MessageContentDetailFragment$7;
.super Ljava/lang/Object;
.source "MessageContentDetailFragment.java"

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

    .line 344
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$7;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 347
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$7;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    iget-object v0, p1, Lcom/narvii/chat/MessageContentDetailFragment;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->access$700(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/model/ChatMessage;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/MessageContentDetailFragment$7;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {v1}, Lcom/narvii/chat/MessageContentDetailFragment;->access$800(Lcom/narvii/chat/MessageContentDetailFragment;)Lcom/narvii/chat/ChatBubbleView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/chat/audio/AudioHelper;->handleChatBubbleClick(Lcom/narvii/model/ChatMessage;Landroid/view/View;Z)V

    return-void
.end method
