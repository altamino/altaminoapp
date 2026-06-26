.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$7;
.super Ljava/lang/Object;
.source "MembershipMainRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;->switchAutoRenew(Landroid/view/View;Z)V
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

    .line 829
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$7;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 832
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$7;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    return-void
.end method
