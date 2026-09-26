.class public Lcom/narvii/util/dialog/AlertDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/dialog/AlertDialog$ClickListener;
    }
.end annotation


# static fields
.field public static final STYLE_BLUE:I = 0x2

.field public static final STYLE_EDIT_MULTI_LINE:I = 0x100

.field public static final STYLE_GREEN:I = 0x4

.field public static final STYLE_GREEN_INSIDE:I = 0x400

.field public static final STYLE_GREY:I = 0x20

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_PURPLE:I = 0x200

.field public static final STYLE_RED:I = 0x8

.field public static final STYLE_RED_CORNER:I = 0x10

.field public static final STYLE_TRANSPARENT:I = 0x40


# instance fields
.field protected buttons:Landroid/view/ViewGroup;

.field content:Landroid/view/ViewGroup;

.field protected inflater:Landroid/view/LayoutInflater;

.field pageName:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field protected vertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object p2, p0, Lcom/narvii/util/dialog/AlertDialog;->pageName:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private clearView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

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
    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->baseLayoutId()I

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
    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

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
    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 44
    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/16 v0, 0x8

    if-eq p2, v0, :cond_5

    const/16 v0, 0x10

    if-eq p2, v0, :cond_4

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const/16 v0, 0x40

    if-eq p2, v0, :cond_2

    const/16 v0, 0x200

    if-eq p2, v0, :cond_1

    const/16 v0, 0x400

    if-eq p2, v0, :cond_0

    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_gray:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_green_inside:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_purple:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_transparent:I

    goto :goto_0

    :cond_3
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_grey:I

    goto :goto_0

    :cond_4
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_red_corner:I

    goto :goto_0

    :cond_5
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_red:I

    goto :goto_0

    :cond_6
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_green:I

    goto :goto_0

    :cond_7
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_blue:I

    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/narvii/util/dialog/AlertDialog;->vertical:Z

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    .line 5
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 6
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_8
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_button_divider:I

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_9
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog$ClickListener;

    invoke-direct {p1, p0, p3}, Lcom/narvii/util/dialog/AlertDialog$ClickListener;-><init>(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method protected baseLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_layout:I

    return v0
.end method

.method public clearButtons()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

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
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getEditTextView()Landroid/widget/EditText;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Landroid/widget/EditText;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/EditText;

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrimEditText()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

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
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "\n"

    .line 25
    .line 26
    const-string v2, " "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/dialog/AlertDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/narvii/util/dialog/AlertDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/narvii/util/dialog/AlertDialog;->clearView()V

    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEditText()Landroid/widget/EditText;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroid/widget/EditText;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$layout;->dialog_alert_edit:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    check-cast v1, Landroid/widget/EditText;

    .line 23
    :cond_0
    return-object v1
.end method

.method public setEditTextBlackCursor()Landroid/widget/EditText;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroid/widget/EditText;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$layout;->dialog_alert_edit_black_cursor:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    check-cast v1, Landroid/widget/EditText;

    .line 23
    :cond_0
    return-object v1
.end method

.method public setEditTextMaxLength(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->getEditTextView()Landroid/widget/EditText;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 8
    .line 9
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    aput-object v2, v1, p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 19
    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    sget v1, Lcom/narvii/lib/R$layout;->dialog_alert_message:I

    .line 3
    invoke-virtual {p0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 5
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    return-void
.end method

.method public setVerticalButtons()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/dialog/AlertDialog;->vertical:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 6
    .line 7
    check-cast v1, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, -0x2

    .line 18
    .line 19
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    return-void
.end method
