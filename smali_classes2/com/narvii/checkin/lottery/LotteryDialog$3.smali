.class Lcom/narvii/checkin/lottery/LotteryDialog$3;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

.field final synthetic val$mainLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog;Landroid/view/View;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iput-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$mainLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010023

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/narvii/checkin/lottery/LotteryDialog$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/checkin/lottery/LotteryDialog$3$1;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog$3;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$mainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
