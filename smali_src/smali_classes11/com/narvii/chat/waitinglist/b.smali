.class public final synthetic Lcom/narvii/chat/waitinglist/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/signalling/SignallingChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/b;->a:Lcom/narvii/chat/signalling/SignallingChannel;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/b;->a:Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService;->a(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
