.class public Lcom/narvii/widget/ACMAlertDialog;
.super Lcom/narvii/app/NVDialog;
.source "ACMAlertDialog.java"


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

    .line 34
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 40
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 41
    iput-object p2, p0, Lcom/narvii/widget/ACMAlertDialog;->pageName:Ljava/lang/String;

    .line 42
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private clearView()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->getLayout()I

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 48
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    .line 49
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_content:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    .line 50
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_buttons:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->dialog_option_blue:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;
    .locals 1

    .line 130
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

    .line 174
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 4

    .line 135
    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_button_acm:I

    .line 136
    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-boolean p1, p0, Lcom/narvii/widget/ACMAlertDialog;->vertical:Z

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    .line 142
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p2, 0x0

    .line 143
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 145
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_acm_divider_h:I

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_acm_divider:I

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog$ClickListener;

    invoke-direct {p1, p0, p3, p4}, Lcom/narvii/widget/ACMAlertDialog$ClickListener;-><init>(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View$OnClickListener;Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-boolean p1, p0, Lcom/narvii/widget/ACMAlertDialog;->vertical:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 160
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 163
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$drawable;->button_alert_corner_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object v0
.end method

.method public addNagativeButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, -0x444445

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()V
    .locals 0

    .line 84
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 54
    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_acm_layout:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public hideMessage()V
    .locals 2

    .line 199
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v1, 0x8

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/narvii/widget/ACMAlertDialog;->clearView()V

    .line 65
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/narvii/widget/ACMAlertDialog;->clearView()V

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/narvii/widget/ACMAlertDialog;->clearView()V

    .line 77
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDismissByClickOutside()V
    .locals 2

    .line 112
    sget v0, Lcom/narvii/lib/R$id;->root:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/widget/ACMAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/ACMAlertDialog$1;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(II)V
    .locals 1

    .line 195
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 182
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 188
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/narvii/widget/ACMAlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setVerticalButtons()V
    .locals 2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/narvii/widget/ACMAlertDialog;->vertical:Z

    .line 105
    iget-object v1, p0, Lcom/narvii/widget/ACMAlertDialog;->buttons:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
