.class public final synthetic Lcom/narvii/chat/waitinglist/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/signalling/SignallingChannel;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/c;->a:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p2, p0, Lcom/narvii/chat/waitinglist/c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/c;->a:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/waitinglist/c;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/waitinglist/WaitingListService;->b(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
