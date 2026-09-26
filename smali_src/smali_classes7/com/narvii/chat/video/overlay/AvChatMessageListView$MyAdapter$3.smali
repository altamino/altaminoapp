.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->this$1:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->val$chatMessage:Lcom/narvii/model/ChatMessage;

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
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->this$1:Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->itemClickListener:Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;->val$chatMessage:Lcom/narvii/model/ChatMessage;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;->onItemClicked(Lcom/narvii/model/ChatMessage;)V

    .line 14
    :cond_0
    return-void
.end method
