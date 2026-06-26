.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;
.super Ljava/lang/Object;
.source "MembershipMainRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;->showCofetti(J)V
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

    .line 744
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    iget-object v0, v0, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cofettiView:Lcom/narvii/widget/cofetti/CofettiView;

    invoke-virtual {v0}, Lcom/narvii/widget/cofetti/CofettiView;->fire()V

    return-void
.end method
