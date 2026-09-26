.class public abstract Lcom/narvii/account/CodeVerifyBaseFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;


# static fields
.field private static final COLOR_DISABLE:I = -0x4a4a4b

.field protected static final COUNT_CODE_LIMIT:I = 0x6

.field private static final KEY_REMAIN_TIME:Ljava/lang/String; = "key_remain_time"

.field private static final TIMER_CIRCLE:I = 0xea60

.field private static final TIMER_CIRCLE_DEBUG:I = 0x2710

.field private static final TIMER_INTERVAL:I = 0x3e8


# instance fields
.field protected btnResend:Landroid/widget/TextView;

.field protected codeEditView:Lcom/narvii/widget/CodeEditView;

.field protected codeVerificationError:Landroid/widget/TextView;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field remainingTime:J

.field protected verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private createCountDownTimer()Landroid/os/CountDownTimer;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/narvii/account/CodeVerifyBaseFragment$1;

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    const-wide/16 v4, 0x32

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 14
    move-result-wide v4

    .line 15
    move-object v0, v6

    .line 16
    move-object v1, p0

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/narvii/account/CodeVerifyBaseFragment$1;-><init>(Lcom/narvii/account/CodeVerifyBaseFragment;JJ)V

    .line 20
    return-object v6
.end method

.method private synthetic lambda$resetTimerCount$0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xea60

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->createCountDownTimer()Landroid/os/CountDownTimer;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 15
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/CodeVerifyBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->lambda$resetTimerCount$0()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getVerifyTime()J
.end method

.method public abstract layoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onItemClicked(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public onCodeChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCodeFinished(Ljava/lang/String;)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->updateCodeErrorMessage(Z)V

    .line 16
    :goto_0
    return-void
.end method

.method public abstract onCodeFinished(Ljava/lang/String;)V
.end method

.method public abstract onCountDownTimeChange(I)V
.end method

.method public onCountDownTimeFinished()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x7f060021

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 15
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->layoutId()I

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 11
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 11
    return-void
.end method

.method protected onItemClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0c2b

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string p1, "GetNewCode"

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onResendCodeClicked()V

    .line 23
    :goto_0
    return-void
.end method

.method public onResendCodeClicked()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    const v1, -0x4a4a4b

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "key_remain_time"

    .line 6
    .line 7
    .line 8
    const v1, 0xea60

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public onTotallySuccess()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0329

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/widget/CodeEditView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Lcom/narvii/widget/CodeEditView;->setOnCodeContentChangeListener(Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;)V

    .line 23
    .line 24
    .line 25
    const p2, 0x7f0a0c2b

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 38
    .line 39
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    const v0, -0x4a4a4b

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->getVerifyTime()J

    .line 53
    move-result-wide v2

    .line 54
    sub-long/2addr v0, v2

    .line 55
    .line 56
    .line 57
    const-wide/32 v2, 0xea60

    .line 58
    sub-long/2addr v2, v0

    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    iput-wide v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->createCountDownTimer()Landroid/os/CountDownTimer;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    iput-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 76
    .line 77
    .line 78
    const p2, 0x7f0a032d

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    .line 87
    return-void
.end method

.method public resetTimerCount()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/account/g;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/account/g;-><init>(Lcom/narvii/account/CodeVerifyBaseFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 16
    :cond_0
    return-void
.end method

.method public updateCodeErrorMessage(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 p1, 0x8

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_1
    return-void
.end method

.method protected updateIndicatorStatus(I)V
    .locals 0

    return-void
.end method
