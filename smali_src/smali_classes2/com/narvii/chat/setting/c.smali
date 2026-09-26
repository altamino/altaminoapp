.class public final synthetic Lcom/narvii/chat/setting/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/setting/c;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/c;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/setting/c;->a:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iget-object v1, p0, Lcom/narvii/chat/setting/c;->b:Lcom/narvii/model/User;

    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->w(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
