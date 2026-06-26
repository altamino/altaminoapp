.class Lcom/narvii/checkin/CheckInHistoryView$2;
.super Ljava/lang/Object;
.source "CheckInHistoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInHistoryView;->setCheckins(J[ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInHistoryView;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInHistoryView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView$2;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView$2;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 152
    new-instance p1, Lcom/narvii/checkin/CheckInResult;

    invoke-direct {p1}, Lcom/narvii/checkin/CheckInResult;-><init>()V

    const/4 v0, -0x1

    .line 153
    iput v0, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 154
    new-instance v0, Lcom/narvii/checkin/CheckInPopUpHelper;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInHistoryView$2;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->setCenterInScreen(Z)V

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, p1, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V

    :cond_0
    return-void
.end method
