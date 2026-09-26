.class public final synthetic Lcom/narvii/chat/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/model/ChatMessage;

.field public final synthetic b:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/util/ChatRequestHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/i;->a:Lcom/narvii/model/ChatMessage;

    iput-object p2, p0, Lcom/narvii/chat/util/i;->b:Lcom/narvii/chat/util/ChatRequestHelper;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/i;->a:Lcom/narvii/model/ChatMessage;

    iget-object v1, p0, Lcom/narvii/chat/util/i;->b:Lcom/narvii/chat/util/ChatRequestHelper;

    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/util/ChatRequestHelper;->a(Lcom/narvii/model/ChatMessage;Lcom/narvii/chat/util/ChatRequestHelper;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
