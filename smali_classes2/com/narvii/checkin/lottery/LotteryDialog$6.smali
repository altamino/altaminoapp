.class Lcom/narvii/checkin/lottery/LotteryDialog$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LotteryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->startShowResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$flipLayout:Lcom/narvii/widget/FlipLayout;

.field final synthetic val$flipLayoutWidth:I


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;Lcom/narvii/widget/FlipLayout;I)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    iput p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->val$flipLayoutWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/FlipLayout;->flip()V

    .line 382
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    new-instance v0, Lcom/narvii/checkin/lottery/LotteryDialog$6$1;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$6$1;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog$6;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/FlipLayout;->setFlipListener(Lcom/narvii/widget/FlipLayout$FlipListener;)V

    return-void
.end method
