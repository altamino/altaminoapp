.class public final synthetic Lcom/narvii/chat/setting/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/rtc/RtcService$WaitingListCallback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/e;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/e;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/setting/e;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iget-object v1, p0, Lcom/narvii/chat/setting/e;->b:Lcom/narvii/model/User;

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->u(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V

    return-void
.end method
