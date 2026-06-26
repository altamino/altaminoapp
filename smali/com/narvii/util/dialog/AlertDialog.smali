.class public Lcom/narvii/util/dialog/AlertDialog;
.super Lcom/narvii/app/NVDialog;
.source "AlertDialog.java"


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

    .line 40
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 45
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 46
    iput-object p2, p0, Lcom/narvii/util/dialog/AlertDialog;->pageName:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private clearView()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    .line 53
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->baseLayoutId()I

    move-result p1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 54
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    .line 55
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_content:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    .line 56
    sget p1, Lcom/narvii/lib/R$id;->alert_dialog_buttons:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    .line 110
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

    .line 142
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_gray:I

    goto :goto_0

    .line 136
    :cond_0
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_green_inside:I

    goto :goto_0

    .line 124
    :cond_1
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_purple:I

    goto :goto_0

    .line 139
    :cond_2
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_transparent:I

    goto :goto_0

    .line 133
    :cond_3
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_grey:I

    goto :goto_0

    .line 130
    :cond_4
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_red_corner:I

    goto :goto_0

    .line 127
    :cond_5
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_red:I

    goto :goto_0

    .line 121
    :cond_6
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_green:I

    goto :goto_0

    .line 118
    :cond_7
    sget p2, Lcom/narvii/lib/R$layout;->dialog_alert_button_blue:I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 147
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-boolean p1, p0, Lcom/narvii/util/dialog/AlertDialog;->vertical:Z

    if-eqz p1, :cond_8

    .line 149
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    .line 150
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 151
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 153
    :cond_8
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    .line 154
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_button_divider:I

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 156
    :cond_9
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog$ClickListener;

    invoke-direct {p1, p0, p3}, Lcom/narvii/util/dialog/AlertDialog$ClickListener;-><init>(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object p2
.end method

.method protected baseLayoutId()I
    .locals 1

    .line 66
    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_layout:I

    return v0
.end method

.method public clearButtons()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public getEditText()Ljava/lang/String;
    .locals 1

    .line 229
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditTextView()Landroid/widget/EditText;
    .locals 2

    .line 221
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Landroid/widget/EditText;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrimEditText()Ljava/lang/String;
    .locals 3

    .line 237
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/narvii/util/dialog/AlertDialog;->clearView()V

    .line 76
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/narvii/util/dialog/AlertDialog;->clearView()V

    .line 82
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/narvii/util/dialog/AlertDialog;->clearView()V

    .line 88
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEditText()Landroid/widget/EditText;
    .locals 1

    .line 201
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 203
    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_edit:I

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 204
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :cond_0
    return-object v0
.end method

.method public setEditTextBlackCursor()Landroid/widget/EditText;
    .locals 1

    .line 211
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 213
    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_edit_black_cursor:I

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 214
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_edit:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :cond_0
    return-object v0
.end method

.method public setEditTextMaxLength(I)V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/narvii/util/dialog/AlertDialog;->getEditTextView()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 192
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 194
    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_message:I

    invoke-virtual {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 195
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setVerticalButtons()V
    .locals 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/narvii/util/dialog/AlertDialog;->vertical:Z

    .line 61
    iget-object v1, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    iget-object v0, p0, Lcom/narvii/util/dialog/AlertDialog;->buttons:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
