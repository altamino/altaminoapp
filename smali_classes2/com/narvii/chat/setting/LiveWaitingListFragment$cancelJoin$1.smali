.class final Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment;->cancelJoin(Lcom/narvii/model/User;)V
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
        "Lcom/narvii/chat/signalling/SignallingChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;->$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 2

    .line 410
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getWaitListAdapter(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;->$user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    const-string/jumbo v1, "user.uid"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->removeUserInList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$cancelJoin$1;->call(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
