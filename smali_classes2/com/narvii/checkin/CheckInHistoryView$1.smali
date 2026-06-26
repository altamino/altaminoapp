.class Lcom/narvii/checkin/CheckInHistoryView$1;
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

.field final synthetic val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInHistoryView;Lcom/narvii/checkin/CheckInHelper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView$1;->this$0:Lcom/narvii/checkin/CheckInHistoryView;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInHistoryView$1;->val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/narvii/checkin/CheckInHistoryView$1;->val$checkInHelper:Lcom/narvii/checkin/CheckInHelper;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInHelper;->startStreakRepairDialog()V

    return-void
.end method
