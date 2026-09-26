.class public final synthetic Lcom/narvii/chat/core/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/narvii/chat/util/ChatMessageDto;


# direct methods
.method public synthetic constructor <init>(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/chat/core/m;->a:I

    iput-object p2, p0, Lcom/narvii/chat/core/m;->b:Lcom/narvii/chat/util/ChatMessageDto;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/narvii/chat/core/m;->a:I

    iget-object v1, p0, Lcom/narvii/chat/core/m;->b:Lcom/narvii/chat/util/ChatMessageDto;

    check-cast p1, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/core/ChatService;->e(ILcom/narvii/chat/util/ChatMessageDto;Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method
