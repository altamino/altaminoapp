.class Lcom/narvii/checkin/lottery/LotteryDialog$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$flipLayoutWidth:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/narvii/checkin/lottery/LotteryDialog$3;ILcom/narvii/widget/FlipLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/checkin/lottery/LotteryDialog$3;->lambda$onAnimationEnd$0(ILcom/narvii/widget/FlipLayout;Z)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(ILcom/narvii/widget/FlipLayout;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/narvii/checkin/lottery/LotteryDialog;->g(Lcom/narvii/checkin/lottery/LotteryDialog;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/checkin/lottery/LotteryDialog;->clicked:Landroid/view/View;

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/widget/FlipLayout;->flip()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$flipLayout:Lcom/narvii/widget/FlipLayout;

    .line 22
    .line 23
    iget v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$3;->val$flipLayoutWidth:I

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/checkin/lottery/f;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, v0}, Lcom/narvii/checkin/lottery/f;-><init>(Lcom/narvii/checkin/lottery/LotteryDialog$3;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/narvii/widget/FlipLayout;->setFlipListener(Lcom/narvii/widget/FlipLayout$FlipListener;)V

    .line 32
    return-void
.end method
