.class public Lcom/narvii/widget/PurchaseConfirmButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/PurchaseConfirmButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/PurchaseConfirmButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d0673

    .line 4
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0390

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->container:Landroid/view/View;

    const v1, 0x7f0a038f

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->coinView:Landroid/view/View;

    .line 8
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->animation:Landroid/view/animation/RotateAnimation;

    const/4 v2, -0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v2, 0x3e8

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget-object v0, Lcom/narvii/amino/R$styleable;->PurchaseConfirmButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmingText:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/PurchaseConfirmButton;->showCoinIcon:Z

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0}, Lcom/narvii/widget/PurchaseConfirmButton;->updateTextStatus()V

    return-void
.end method


# virtual methods
.method public isSending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->listener:Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;->doSubmit()V

    .line 13
    :cond_1
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/PurchaseConfirmButton;->updateTextStatus()V

    .line 6
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->container:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 9
    return-void
.end method

.method public setSubmitListener(Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->listener:Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;

    return-void
.end method

.method public updateSendingStatus(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a0391

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/PurchaseConfirmButton;->animation:Landroid/view/animation/RotateAnimation;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/widget/PurchaseConfirmButton;->updateTextStatus()V

    .line 33
    return-void
.end method

.method public updateTextStatus()V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0391

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0392

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->isSending:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->coinView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmingText:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmingText:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    const v1, 0x7f1211b4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->coinView:Landroid/view/View;

    .line 62
    .line 63
    iget-boolean v4, p0, Lcom/narvii/widget/PurchaseConfirmButton;->showCoinIcon:Z

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v2, v3

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/widget/PurchaseConfirmButton;->confirmText:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    goto :goto_2

    .line 85
    .line 86
    .line 87
    :cond_4
    const v1, 0x7f120334

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :goto_2
    return-void
.end method
