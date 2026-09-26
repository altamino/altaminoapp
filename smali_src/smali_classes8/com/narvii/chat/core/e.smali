.class public final synthetic Lcom/narvii/chat/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/core/ChatService;

.field public final synthetic b:Lcom/narvii/model/ChatMessage;

.field public final synthetic c:Lcom/narvii/model/ChatMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/e;->a:Lcom/narvii/chat/core/ChatService;

    iput-object p2, p0, Lcom/narvii/chat/core/e;->b:Lcom/narvii/model/ChatMessage;

    iput-object p3, p0, Lcom/narvii/chat/core/e;->c:Lcom/narvii/model/ChatMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/core/e;->a:Lcom/narvii/chat/core/ChatService;

    iget-object v1, p0, Lcom/narvii/chat/core/e;->b:Lcom/narvii/model/ChatMessage;

    iget-object v2, p0, Lcom/narvii/chat/core/e;->c:Lcom/narvii/model/ChatMessage;

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/core/ChatService;->c(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method
