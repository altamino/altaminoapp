.class Lcom/narvii/checkin/CheckInPopUpHelper$2;
.super Ljava/lang/Object;
.source "CheckInPopUpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInPopUpHelper;->showFirstPopUp(Lcom/narvii/checkin/CheckInResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

.field final synthetic val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

.field final synthetic val$checkInResult:Lcom/narvii/checkin/CheckInResult;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInPopUp;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    iput-object p2, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    iput-object p3, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInResult:Lcom/narvii/checkin/CheckInResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$000(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {v0}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$100(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {v0}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$000(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;

    invoke-direct {v1, p0}, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;-><init>(Lcom/narvii/checkin/CheckInPopUpHelper$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
