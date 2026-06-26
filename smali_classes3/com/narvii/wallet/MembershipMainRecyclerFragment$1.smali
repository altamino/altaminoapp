.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;
.super Ljava/lang/Object;
.source "MembershipMainRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->waitingForIab:Ljava/lang/Runnable;

    .line 94
    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->access$000(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->access$000(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Lcom/narvii/wallet/MembershipMainRecyclerFragment$Adapter;

    move-result-object v0

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 96
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->access$100(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    :cond_0
    return-void
.end method
