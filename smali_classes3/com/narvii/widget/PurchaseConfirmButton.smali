.class public Lcom/narvii/widget/PurchaseConfirmButton;
.super Landroid/widget/FrameLayout;
.source "PurchaseConfirmButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;
    }
.end annotation


# instance fields
.field private final animation:Landroid/view/animation/RotateAnimation;

.field private final coinView:Landroid/view/View;

.field private confirmText:Ljava/lang/String;

.field private confirmingText:Ljava/lang/String;

.field private final container:Landroid/view/View;

.field private isSending:Z

.field private listener:Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;

.field private showCoinIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/PurchaseConfirmButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/PurchaseConfirmButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0b05bb

    .line 46
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902c8

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->container:Landroid/view/View;

    const v0, 0x7f0902c7

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->coinView:Landroid/view/View;

    .line 52
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->animation:Landroid/view/animation/RotateAnimation;

    .line 53
    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->animation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 54
    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->container:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget-object v0, Lcom/narvii/amino/R$styleable;->PurchaseConfirmButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmingText:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/PurchaseConfirmButton;->showCoinIcon:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/widget/PurchaseConfirmButton;->updateTextStatus()V

    return-void
.end method


# virtual methods
.method public isSending()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 70
    iget-boolean p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    if-eqz p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->listener:Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1}, Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;->doSubmit()V

    :cond_1
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/narvii/widget/PurchaseConfirmButton;->updateTextStatus()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->container:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setSubmitListener(Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->listener:Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;

    return-void
.end method

.method public updateSendingStatus(Z)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    const v0, 0x7f0902c9

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/widget/PurchaseConfirmButton;->updateTextStatus()V

    return-void
.end method

.method public updateTextStatus()V
    .locals 5

    const v0, 0x7f0902c9

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0902ca

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-boolean v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->coinView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmingText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    const v1, 0x7f0f10b9

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->coinView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/narvii/widget/PurchaseConfirmButton;->showCoinIcon:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const v1, 0x7f0f02e9

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void
.end method
