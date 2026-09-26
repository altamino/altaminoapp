.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->C(Lcom/narvii/wallet/MembershipMainRecyclerFragment;I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 12
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->C(Lcom/narvii/wallet/MembershipMainRecyclerFragment;I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$4;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    .line 12
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
