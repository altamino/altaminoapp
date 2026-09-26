.class Lcom/narvii/checkin/CheckInHistoryView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView$2;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView$2;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    instance-of p1, p1, Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/checkin/CheckInResult;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Lcom/narvii/checkin/CheckInResult;-><init>()V

    .line 16
    const/4 v0, -0x1

    .line 17
    .line 18
    iput v0, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/checkin/CheckInHistoryView$2;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Landroid/app/Activity;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;-><init>(Landroid/app/Activity;)V

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->setCenterInScreen(Z)V

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V

    .line 40
    :cond_0
    return-void
.end method
