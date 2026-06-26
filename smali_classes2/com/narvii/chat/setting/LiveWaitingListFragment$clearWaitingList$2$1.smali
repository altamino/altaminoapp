.class final Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 378
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;

    iget-object p1, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;

    iget-object p1, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getWaitListAdapter(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->clear()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$clearWaitingList$2$1;->call(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method
