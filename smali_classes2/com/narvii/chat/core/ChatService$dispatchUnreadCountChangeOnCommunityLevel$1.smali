.class final Lcom/narvii/chat/core/ChatService$dispatchUnreadCountChangeOnCommunityLevel$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->dispatchUnreadCountChangeOnCommunityLevel(I)V
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
        "Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $ndcId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/core/ChatService$dispatchUnreadCountChangeOnCommunityLevel$1;->$ndcId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    .line 322
    iget v0, p0, Lcom/narvii/chat/core/ChatService$dispatchUnreadCountChangeOnCommunityLevel$1;->$ndcId:I

    invoke-interface {p1, v0}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onUnreadThreadCountChanged(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$dispatchUnreadCountChangeOnCommunityLevel$1;->call(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method
