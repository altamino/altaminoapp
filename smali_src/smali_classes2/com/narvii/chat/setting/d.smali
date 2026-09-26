.class public final synthetic Lcom/narvii/chat/setting/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/d;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/setting/d;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->y(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
