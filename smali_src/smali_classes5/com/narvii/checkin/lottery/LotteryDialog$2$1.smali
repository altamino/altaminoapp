.class Lcom/narvii/checkin/lottery/LotteryDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/checkin/lottery/LotteryDialog$2;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$2;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$2$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$2$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog$2;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0836

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/checkin/lottery/LotteryBackgroundView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->revertLayerType()V

    .line 17
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
