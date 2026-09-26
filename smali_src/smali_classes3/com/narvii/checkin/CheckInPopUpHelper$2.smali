.class Lcom/narvii/checkin/CheckInPopUpHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInResult:Lcom/narvii/checkin/CheckInResult;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/checkin/CheckInPopUpHelper;->a(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/checkin/CheckInPopUpHelper;->b(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/ViewGroup;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->val$checkInPopUp:Lcom/narvii/checkin/CheckInPopUp;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper$2;->this$0:Lcom/narvii/checkin/CheckInPopUpHelper;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/checkin/CheckInPopUpHelper;->a(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/narvii/checkin/CheckInPopUpHelper$2$1;-><init>(Lcom/narvii/checkin/CheckInPopUpHelper$2;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    return-void
.end method
