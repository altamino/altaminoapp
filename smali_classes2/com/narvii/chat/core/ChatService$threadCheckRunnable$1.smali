.class final Lcom/narvii/chat/core/ChatService$threadCheckRunnable$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$threadCheckRunnable$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 648
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$threadCheckRunnable$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v0}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo$default(Lcom/narvii/chat/core/ChatService;Ljava/util/Set;ZILjava/lang/Object;)V

    return-void
.end method
