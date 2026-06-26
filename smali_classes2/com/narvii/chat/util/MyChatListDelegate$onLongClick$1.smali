.class final Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;
.super Ljava/lang/Object;
.source "MyChatListDelegate.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroid/support/v4/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic $fragmentManager:Landroid/support/v4/app/FragmentManager;

.field final synthetic $itemIds:[I

.field final synthetic $ndcId:I

.field final synthetic this$0:Lcom/narvii/chat/util/MyChatListDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/MyChatListDelegate;[ILcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatRequestHelper;ILandroid/support/v4/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    iput-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$itemIds:[I

    iput-object p3, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    iput-object p4, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iput p5, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$ndcId:I

    iput-object p6, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 194
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$itemIds:[I

    aget p1, p1, p2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 204
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {p1}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 205
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {p1}, Lcom/narvii/chat/util/MyChatListDelegate;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    iget-object v0, p2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/chat/util/ChatHelper;->leaveChat(Ljava/lang/String;Lcom/narvii/model/ChatThread;Landroid/support/v4/app/FragmentManager;)V

    goto :goto_1

    .line 208
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {p1}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    const v1, 0x7f0f0238

    iget-object v2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$itemIds:[I

    aget p2, v2, p2

    if-ne v1, p2, :cond_0

    sget-object p2, Lcom/narvii/logging/ActSemantic;->pin:Lcom/narvii/logging/ActSemantic;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/narvii/logging/ActSemantic;->unpin:Lcom/narvii/logging/ActSemantic;

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$ndcId:I

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {v0}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    goto :goto_1

    .line 196
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {p1}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->unread:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 197
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$ndcId:I

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {v0}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->markUnread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    goto :goto_1

    .line 200
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {p1}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->read:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 201
    iget-object p1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatRequestHelper:Lcom/narvii/chat/util/ChatRequestHelper;

    iget p2, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$ndcId:I

    iget-object v0, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->this$0:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {v0}, Lcom/narvii/chat/util/MyChatListDelegate;->getAdapter()Lcom/narvii/list/NVAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/util/MyChatListDelegate$onLongClick$1;->$chatThread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->markAsread(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f021e -> :sswitch_3
        0x7f0f021f -> :sswitch_2
        0x7f0f0238 -> :sswitch_1
        0x7f0f0246 -> :sswitch_1
        0x7f0f0348 -> :sswitch_0
    .end sparse-switch
.end method
