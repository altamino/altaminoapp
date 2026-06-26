.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$9;
.super Ljava/lang/Object;
.source "MembershipMainRecyclerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 841
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$9;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 844
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$9;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->updateHeader()V

    return-void
.end method
