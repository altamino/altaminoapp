.class final Lcom/narvii/chat/core/ChatService$dispatchChannelPermissionChange$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->dispatchChannelPermissionChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
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
        "Lcom/narvii/chat/ThreadConfigChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $p:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$dispatchChannelPermissionChange$1;->$p:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$dispatchChannelPermissionChange$1;->$p:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1, v0}, Lcom/narvii/chat/ThreadConfigChangeListener;->onLivePermissionChanged(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/chat/ThreadConfigChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$dispatchChannelPermissionChange$1;->call(Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method
