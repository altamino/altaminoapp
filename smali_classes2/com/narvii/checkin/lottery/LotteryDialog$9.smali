.class Lcom/narvii/checkin/lottery/LotteryDialog$9;
.super Ljava/lang/Object;
.source "LotteryDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/lottery/LotteryDialog;->updateResultLayout()V
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

    .line 484
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/GradientView;

    const/16 v1, -0x1fc9

    const/16 v2, -0x48d9

    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 489
    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 490
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/ViewUtils;->fastFadeShow(Landroid/view/View;)V

    .line 491
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/narvii/checkin/lottery/LotteryDialog$9;->this$0:Lcom/narvii/checkin/lottery/LotteryDialog;

    const-string v1, "Dismiss"

    iput-object v1, v0, Lcom/narvii/checkin/lottery/LotteryDialog;->optinAdsAction:Ljava/lang/String;

    return-void
.end method
