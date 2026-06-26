.class final Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;
.super Ljava/lang/Object;
.source "MyChatListService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/service/MyChatListService;->dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/service/MyChatListObserver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $resp:Lcom/narvii/chat/thread/ThreadListResponse;

.field final synthetic this$0:Lcom/narvii/chat/service/MyChatListService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;->this$0:Lcom/narvii/chat/service/MyChatListService;

    iput-object p2, p0, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;->$resp:Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/service/MyChatListObserver;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;->this$0:Lcom/narvii/chat/service/MyChatListService;

    iget-object v1, p0, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;->$resp:Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/service/MyChatListObserver;->onMyChatListChanged(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/narvii/chat/service/MyChatListObserver;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/service/MyChatListService$dispatchChatListChange$1;->call(Lcom/narvii/chat/service/MyChatListObserver;)V

    return-void
.end method
