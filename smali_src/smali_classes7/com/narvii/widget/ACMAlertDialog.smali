.class public Lcom/narvii/widget/ACMAlertDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ACMAlertDialog$ClickListener;
    }
.end annotation


# static fields
.field public static final STYLE_ACM:I = 0x1

.field public static final STYLE_GRAY:I


# instance fields
.field protected buttons:Landroid/view/ViewGroup;

.field public content:Landroid/view/ViewGroup;

.field protected inflater:Landroid/view/LayoutInflater;

.field pageName:Ljava/lang/String;

.field protected title:Landroid/widget/TextView;

.field private vertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p2, p0, Lcom/narvii/widget/ACMAlertDialog;->pageName:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private clearView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->getLayout()I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 14
    .line 15
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_title:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    .line 24
    .line 25
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_content:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    .line 34
    .line 35
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_buttons:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/view/ViewGroup;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 44
    return-void
.end method


# virtual methods
.method public addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->dialog_option_blue:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 4

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_button_acm:I

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p1, p0, Lcom/narvii/widget/ACMAlertDialog;->vertical:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    .line 7
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p2, 0x0

    .line 8
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_acm_divider_h:I

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_acm_divider:I

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog$ClickListener;

    invoke-direct {p1, p0, p3, p4}, Lcom/narvii/widget/ACMAlertDialog$ClickListener;-><init>(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/narvii/widget/ACMAlertDialog;->vertical:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 p2, 0x2

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, -0x444445

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public dismiss()V
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_acm_layout:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public hideMessage()V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/ACMAlertDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/ACMAlertDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/ACMAlertDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDismissByClickOutside()V
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->root:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/narvii/widget/ACMAlertDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(II)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 2

    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setVerticalButtons()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/ACMAlertDialog;->vertical:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 6
    .line 7
    check-cast v1, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    return-void
.end method
