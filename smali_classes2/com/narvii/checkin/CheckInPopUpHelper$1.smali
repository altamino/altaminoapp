.class Lcom/narvii/checkin/CheckInPopUpHelper$1;
.super Ljava/lang/Object;
.source "CheckInPopUpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInPopUpHelper;->showSecondPopUp(Lcom/narvii/checkin/CheckInResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

.field final synthetic val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInPopUp;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$1;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInPopUpHelper$1;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$1;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$1;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$000(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$1;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {v0}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$100(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$1;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
