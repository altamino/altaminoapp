.class public Lcom/narvii/checkin/CheckInPopUpHelper;
.super Ljava/lang/Object;
.source "CheckInPopUpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field private animFadeOut:Landroid/view/animation/Animation;

.field private animIn:Landroid/view/animation/Animation;

.field private centerInScreen:Z

.field private decor:Landroid/view/ViewGroup;

.field onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f010019

    .line 40
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animIn:Landroid/view/animation/Animation;

    const v0, 0x7f01002a

    .line 41
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animFadeOut:Landroid/view/animation/Animation;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animFadeOut:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showSecondPopUp(Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method private addCheckInPopUp()Lcom/narvii/checkin/CheckInPopUp;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    new-instance v1, Lcom/narvii/checkin/CheckInPopUp;

    invoke-direct {v1, v0}, Lcom/narvii/checkin/CheckInPopUp;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    const v2, 0x7f09021c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    iget-boolean v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->centerInScreen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {v1, v0}, Lcom/narvii/checkin/CheckInPopUp;->setCenterInScreen(Z)V

    :cond_1
    return-object v1
.end method

.method private showFirstPopUp(Lcom/narvii/checkin/CheckInResult;)V
    .locals 5

    .line 90
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInPopUpHelper;->addCheckInPopUp()Lcom/narvii/checkin/CheckInPopUp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpBG:Landroid/widget/ImageView;

    const v2, 0x7f080495

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget v1, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 97
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->checkStorke:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " REP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_0
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    const v4, 0x7f0f06c0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u270c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;

    if-eqz v1, :cond_2

    .line 105
    iget v2, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    invoke-interface {v1, v2}, Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;->onEarned(I)V

    .line 108
    :cond_2
    new-instance v1, Lcom/narvii/checkin/CheckInPopUpHelper$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/checkin/CheckInPopUpHelper$2;-><init>(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInPopUp;Lcom/narvii/checkin/CheckInResult;)V

    const-wide/16 v2, 0x7d0

    .line 134
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showSecondPopUp(Lcom/narvii/checkin/CheckInResult;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInPopUpHelper;->addCheckInPopUp()Lcom/narvii/checkin/CheckInPopUp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpBG:Landroid/widget/ImageView;

    const v2, 0x7f0806f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " REP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    const v4, 0x7f0f1060

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;

    if-eqz v1, :cond_1

    .line 63
    iget p1, p1, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    invoke-interface {v1, p1}, Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;->onEarned(I)V

    .line 66
    :cond_1
    new-instance p1, Lcom/narvii/checkin/CheckInPopUpHelper$1;

    invoke-direct {p1, p0, v0}, Lcom/narvii/checkin/CheckInPopUpHelper$1;-><init>(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInPopUp;)V

    const-wide/16 v0, 0x5dc

    .line 73
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public setCenterInScreen(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->centerInScreen:Z

    return-void
.end method

.method public showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V
    .locals 0

    .line 47
    iput-object p2, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showFirstPopUp(Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method
