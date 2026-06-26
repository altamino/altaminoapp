.class final Lcom/narvii/chat/core/ChatService$dispatchAnnouncementChange$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->dispatchAnnouncementChange(Ljava/lang/String;Lcom/narvii/model/ChatMessage;)V
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
.field final synthetic $chatMessage:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/model/ChatMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$dispatchAnnouncementChange$1;->$chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/ThreadConfigChangeListener;)V
    .locals 2

    .line 1868
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$dispatchAnnouncementChange$1;->$chatMessage:Lcom/narvii/model/ChatMessage;

    iget v0, v0, Lcom/narvii/model/ChatMessage;->type:I

    const/16 v1, 0x79

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/narvii/chat/ThreadConfigChangeListener;->announcementPinBehaviorChanged(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/chat/ThreadConfigChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$dispatchAnnouncementChange$1;->call(Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method
