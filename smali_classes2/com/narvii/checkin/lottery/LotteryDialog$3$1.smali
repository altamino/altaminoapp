.class Lcom/narvii/checkin/lottery/LotteryDialog$3$1;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/checkin/lottery/LotteryDialog$3;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$3;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$3;

    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog$3;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v0, 0x7f0906ab

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/checkin/lottery/LotteryBackgroundView;

    .line 243
    invoke-virtual {p1}, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->revertLayerType()V

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
