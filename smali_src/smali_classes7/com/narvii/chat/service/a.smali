.class public final synthetic Lcom/narvii/chat/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/service/MyChatListService;

.field public final synthetic b:Lcom/narvii/chat/thread/ThreadListResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/service/a;->a:Lcom/narvii/chat/service/MyChatListService;

    iput-object p2, p0, Lcom/narvii/chat/service/a;->b:Lcom/narvii/chat/thread/ThreadListResponse;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/service/a;->a:Lcom/narvii/chat/service/MyChatListService;

    iget-object v1, p0, Lcom/narvii/chat/service/a;->b:Lcom/narvii/chat/thread/ThreadListResponse;

    check-cast p1, Lcom/narvii/chat/service/MyChatListObserver;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/service/MyChatListService;->a(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/chat/thread/ThreadListResponse;Lcom/narvii/chat/service/MyChatListObserver;)V

    return-void
.end method
