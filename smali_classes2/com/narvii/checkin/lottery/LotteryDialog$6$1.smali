.class Lcom/narvii/checkin/lottery/LotteryDialog$6$1;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Lcom/narvii/widget/FlipLayout$FlipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/checkin/lottery/LotteryDialog$6;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/lottery/LotteryDialog$6;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlipEnd(Lcom/narvii/widget/FlipLayout;Z)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$6$1;->this$1:Lcom/narvii/checkin/lottery/LotteryDialog$6;

    iget-object p2, p1, Lcom/narvii/checkin/lottery/LotteryDialog$6;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    iget p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog$6;->val$flipLayoutWidth:I

    invoke-static {p2, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->access$300(Lcom/narvii/checkin/lottery/LotteryDialog;I)V

    return-void
.end method
