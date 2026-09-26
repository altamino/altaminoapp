.class public final synthetic Lcom/narvii/chat/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/model/ChatMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/core/a;->a:Lcom/narvii/model/ChatMessage;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/core/a;->a:Lcom/narvii/model/ChatMessage;

    check-cast p1, Lcom/narvii/chat/ThreadConfigChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/core/ChatService;->b(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/ThreadConfigChangeListener;)V

    return-void
.end method
