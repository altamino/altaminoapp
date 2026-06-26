.class Lcom/narvii/checkin/lottery/LotteryDialog$7;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->onFlipEnded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$7;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 424
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Lucky Draw"

    .line 425
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$7;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$7;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    return-void
.end method
