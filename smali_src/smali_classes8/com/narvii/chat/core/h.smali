.class public final synthetic Lcom/narvii/chat/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/util/ChatMessageDto;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/h;->a:Lcom/narvii/chat/util/ChatMessageDto;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/core/h;->a:Lcom/narvii/chat/util/ChatMessageDto;

    check-cast p1, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-static {v0, p1}, Lcom/narvii/chat/core/ChatService;->f(Lcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method
