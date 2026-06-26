.class Lcom/narvii/wallet/MembershipSubscribeFragment$10;
.super Ljava/lang/Object;
.source "MembershipSubscribeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->purchaseSubscribe(Lcom/narvii/wallet/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$10;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 905
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$10;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 906
    iput-object v0, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabPendingProduct:Lcom/narvii/wallet/Product;

    return-void
.end method
