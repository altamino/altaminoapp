.class Lcom/narvii/checkin/lottery/LotteryDialog$11;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->setUpCardBackViews(Lcom/narvii/widget/FlipLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$finalSticker:Lcom/narvii/model/Sticker;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$11;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$11;->val$finalSticker:Lcom/narvii/model/Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 573
    const-class p1, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 574
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$11;->val$finalSticker:Lcom/narvii/model/Sticker;

    iget-object v0, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    const-string v1, "stickerCollectionId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$11;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->cid:I

    const-string v1, "__communityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$11;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object v0, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 577
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$11;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->dismiss()V

    return-void
.end method
