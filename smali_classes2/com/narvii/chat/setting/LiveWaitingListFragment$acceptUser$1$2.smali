.class final Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$2;
.super Ljava/lang/Object;
.source "LiveWaitingListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->call(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 399
    iget-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1$2;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;

    iget-object v0, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    iget-object p1, p1, Lcom/narvii/chat/setting/LiveWaitingListFragment$acceptUser$1;->$user:Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$cancelJoin(Lcom/narvii/chat/setting/LiveWaitingListFragment;Lcom/narvii/model/User;)V

    return-void
.end method
