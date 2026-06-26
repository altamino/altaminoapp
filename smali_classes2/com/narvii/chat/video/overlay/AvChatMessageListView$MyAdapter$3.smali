.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;
.super Ljava/lang/Object;
.source "AvChatMessageListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

.field final synthetic val$chatMessage:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->this$1:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->val$chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->this$1:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->itemClickListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->val$chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-interface {p1, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;->onItemClicked(Lcom/narvii/model/ChatMessage;)V

    :cond_0
    return-void
.end method
