.class Lcom/narvii/checkin/CheckInPopUpHelper$2$1;
.super Ljava/lang/Object;
.source "CheckInPopUpHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInPopUpHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/checkin/CheckInPopUpHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInPopUpHelper$2;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;->this$1:Lcom/narvii/checkin/CheckInPopUpHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;->this$1:Lcom/narvii/checkin/CheckInPopUpHelper$2;

    iget-object v0, p1, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInResult:Lcom/narvii/checkin/CheckInResult;

    iget v1, v0, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    if-lez v1, :cond_0

    .line 122
    iget-object p1, p1, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {p1, v0}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$200(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInResult;)V

    .line 123
    iget-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;->this$1:Lcom/narvii/checkin/CheckInPopUpHelper$2;

    iget-object p1, p1, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    invoke-static {p1}, Lcom/narvii/checkin/CheckInPopUpHelper;->access$000(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
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
