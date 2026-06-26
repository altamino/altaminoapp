.class Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;
.super Ljava/lang/Object;
.source "ThreadDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

.field final synthetic val$thread:Lcom/narvii/model/ChatThread;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->val$thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 4

    .line 1168
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    invoke-direct {p1, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1169
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->this$1:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1170
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->val$thread:Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->val$thread:Lcom/narvii/model/ChatThread;

    new-instance v3, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3$1;-><init>(Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendJoinChatThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
