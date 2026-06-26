.class final Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->dispatchVideoMessagePostProgressChange(Ljava/lang/String;II)V
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
        "Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $percentage:I

.field final synthetic $refId:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;->$refId:I

    iput p2, p0, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;->$percentage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V
    .locals 2

    .line 1798
    iget v0, p0, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;->$refId:I

    iget v1, p0, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;->$percentage:I

    invoke-interface {p1, v0, v1}, Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;->onProgressUpdate(II)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$dispatchVideoMessagePostProgressChange$1;->call(Lcom/narvii/chat/core/ChatService$VideoMessageProgressChangeListener;)V

    return-void
.end method
