.class public final synthetic Lcom/narvii/chat/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/chat/core/i;->a:I

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/narvii/chat/core/i;->a:I

    check-cast p1, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-static {v0, p1}, Lcom/narvii/chat/core/ChatService;->n(ILcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method
