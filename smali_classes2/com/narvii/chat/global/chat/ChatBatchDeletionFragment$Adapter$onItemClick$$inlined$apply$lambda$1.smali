.class final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ChatBatchDeletionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item$inlined:Ljava/lang/Object;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;->$item$inlined:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;->$item$inlined:Ljava/lang/Object;

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-static {p1, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->access$selectChat(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Lcom/narvii/model/ChatThread;)V

    return-void
.end method
