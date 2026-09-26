.class public final synthetic Lcom/narvii/chat/rtc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/signalling/SignallingChannel;

.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/f;->a:Lcom/narvii/chat/signalling/SignallingChannel;

    iput-object p2, p0, Lcom/narvii/chat/rtc/f;->b:Ljava/util/Collection;

    iput-object p3, p0, Lcom/narvii/chat/rtc/f;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/rtc/f;->a:Lcom/narvii/chat/signalling/SignallingChannel;

    iget-object v1, p0, Lcom/narvii/chat/rtc/f;->b:Ljava/util/Collection;

    iget-object v2, p0, Lcom/narvii/chat/rtc/f;->c:Ljava/util/Collection;

    check-cast p1, Lcom/narvii/chat/waitinglist/WaitingListListener;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/rtc/RtcService;->h(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/Collection;Ljava/util/Collection;Lcom/narvii/chat/waitinglist/WaitingListListener;)V

    return-void
.end method
