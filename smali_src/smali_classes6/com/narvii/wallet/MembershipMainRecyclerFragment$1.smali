.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->F(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->z(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Lcom/narvii/wallet/membership/MembershipDataAdapter;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->z(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)Lcom/narvii/wallet/membership/MembershipDataAdapter;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const/16 v2, 0x100

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$1;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->G(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V

    .line 31
    :cond_0
    return-void
.end method
