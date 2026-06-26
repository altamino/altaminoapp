.class public abstract Lcom/narvii/account/CodeVerifyBaseFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "CodeVerifyBaseFragment.java"

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

.field protected verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    return-void
.end method

.method private createCountDownTimer()Landroid/os/CountDownTimer;
    .locals 7

    .line 52
    new-instance v6, Lcom/narvii/account/CodeVerifyBaseFragment$1;

    iget-wide v2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    const-wide/16 v4, 0x32

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/account/CodeVerifyBaseFragment$1;-><init>(Lcom/narvii/account/CodeVerifyBaseFragment;JJ)V

    return-object v6
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getVerifyTime()J
.end method

.method public synthetic lambda$resetTimerCount$0$CodeVerifyBaseFragment()V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 166
    iput-wide v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    .line 167
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->createCountDownTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 168
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public abstract layoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onItemClicked(Landroid/view/View;)V

    return-void
.end method

.method public onCodeChanged(Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->onCodeFinished(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->updateCodeErrorMessage(Z)V

    :goto_0
    return-void
.end method

.method public abstract onCodeFinished(Ljava/lang/String;)V
.end method

.method public abstract onCountDownTimeChange(I)V
.end method

.method public onCountDownTimeFinished()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060020

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance p1, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->layoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    return-void
.end method

.method protected onItemClicked(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09096d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "GetNewCode"

    .line 156
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 157
    invoke-virtual {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->onResendCodeClicked()V

    :goto_0
    return-void
.end method

.method public onResendCodeClicked()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const v1, -0x4a4a4b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_remain_time"

    const v1, 0xea60

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTotallySuccess()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090262

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/CodeEditView;

    iput-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    .line 79
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 80
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/CodeEditView;->setOnCodeContentChangeListener(Lcom/narvii/widget/CodeEditView$CodeContentChangeListener;)V

    const p2, 0x7f09096d

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    .line 83
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 84
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const v0, -0x4a4a4b

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->getVerifyTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->remainingTime:J

    .line 87
    invoke-direct {p0}, Lcom/narvii/account/CodeVerifyBaseFragment;->createCountDownTimer()Landroid/os/CountDownTimer;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 88
    iget-object p2, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const p2, 0x7f090265

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    return-void
.end method

.method public resetTimerCount()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 165
    new-instance v0, Lcom/narvii/account/-$$Lambda$CodeVerifyBaseFragment$J3B85TZP3RSjxkFEYaXG0X6vDxw;

    invoke-direct {v0, p0}, Lcom/narvii/account/-$$Lambda$CodeVerifyBaseFragment$J3B85TZP3RSjxkFEYaXG0X6vDxw;-><init>(Lcom/narvii/account/CodeVerifyBaseFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateCodeErrorMessage(Z)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 184
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected updateIndicatorStatus(I)V
    .locals 0

    return-void
.end method
