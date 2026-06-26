.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;
.super Ljava/lang/Object;
.source "MembershipMainRecyclerFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;->flipCard()V
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

    .line 789
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 802
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    .line 803
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 796
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$6;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    const/4 v0, 0x0

    iput v0, p1, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->cardSide:I

    .line 797
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
