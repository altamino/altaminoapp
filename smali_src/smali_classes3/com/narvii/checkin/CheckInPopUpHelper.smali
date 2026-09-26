.class public Lcom/narvii/checkin/CheckInPopUpHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    const v0, 0x7f010027

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animIn:Landroid/view/animation/Animation;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f010038

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animFadeOut:Landroid/view/animation/Animation;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    .line 39
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animFadeOut:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private addCheckInPopUp()Lcom/narvii/checkin/CheckInPopUp;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/narvii/checkin/CheckInPopUp;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInPopUp;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    const v2, 0x7f0a02d4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->centerInScreen:Z

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInPopUp;->setCenterInScreen(Z)V

    .line 38
    :cond_1
    return-object v0
.end method

.method static bridge synthetic b(Lcom/narvii/checkin/CheckInPopUpHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->decor:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showSecondPopUp(Lcom/narvii/checkin/CheckInResult;)V

    return-void
.end method

.method private showFirstPopUp(Lcom/narvii/checkin/CheckInResult;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInPopUpHelper;->addCheckInPopUp()Lcom/narvii/checkin/CheckInPopUp;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animIn:Landroid/view/animation/Animation;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpBG:Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0805be

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    iget v1, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-gtz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->checkStorke:Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpView:Landroid/widget/TextView;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v4, "+"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget v4, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, " REP"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    :goto_0
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    iget-object v3, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    const v4, 0x7f12076c

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "\u270c"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    iget v2, p1, Lcom/narvii/checkin/CheckInResult;->earnedReputationPoint:I

    .line 103
    .line 104
    .line 105
    invoke-interface {v1, v2}, Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;->onEarned(I)V

    .line 106
    .line 107
    :cond_2
    new-instance v1, Lcom/narvii/checkin/CheckInPopUpHelper$2;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/checkin/CheckInPopUpHelper$2;-><init>(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInPopUp;Lcom/narvii/checkin/CheckInResult;)V

    .line 111
    .line 112
    const-wide/16 v2, 0x7d0

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 116
    return-void
.end method

.method private showSecondPopUp(Lcom/narvii/checkin/CheckInResult;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/checkin/CheckInPopUpHelper;->addCheckInPopUp()Lcom/narvii/checkin/CheckInPopUp;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->animIn:Landroid/view/animation/Animation;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13
    .line 14
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpBG:Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0808f3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->rpView:Landroid/widget/TextView;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v3, "+"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget v3, p1, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, " REP"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->text:Landroid/widget/TextView;

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    iget-object v1, v0, Lcom/narvii/checkin/CheckInPopUp;->title:Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    iget v3, p1, Lcom/narvii/checkin/CheckInResult;->consecutiveCheckInDays:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "x "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->activity:Landroid/app/Activity;

    .line 76
    .line 77
    .line 78
    const v4, 0x7f12115d

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;

    .line 95
    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    iget p1, p1, Lcom/narvii/checkin/CheckInResult;->additionalReputationPoint:I

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, p1}, Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;->onEarned(I)V

    .line 102
    .line 103
    :cond_1
    new-instance p1, Lcom/narvii/checkin/CheckInPopUpHelper$1;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p0, v0}, Lcom/narvii/checkin/CheckInPopUpHelper$1;-><init>(Lcom/narvii/checkin/CheckInPopUpHelper;Lcom/narvii/checkin/CheckInPopUp;)V

    .line 107
    .line 108
    const-wide/16 v0, 0x5dc

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 112
    return-void
.end method


# virtual methods
.method public setCenterInScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->centerInScreen:Z

    return-void
.end method

.method public showCheckInPopUp(Lcom/narvii/checkin/CheckInResult;Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/checkin/CheckInPopUpHelper;->onRPEarnedListener:Lcom/narvii/checkin/CheckInPopUpHelper$OnRPEarnedListener;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/checkin/CheckInPopUpHelper;->showFirstPopUp(Lcom/narvii/checkin/CheckInResult;)V

    .line 6
    return-void
.end method
