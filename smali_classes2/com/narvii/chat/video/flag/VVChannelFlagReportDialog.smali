.class public Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "VVChannelFlagReportDialog.java"


# instance fields
.field private isScreenRoom:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mFlagOptionLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0b0262

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 29
    iput-boolean p2, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->isScreenRoom:Z

    const p1, 0x7f090486

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f06f9

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/16 p2, 0xce

    const/16 v0, 0x7d

    .line 32
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0193

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;-><init>(Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;)V

    invoke-virtual {p0, p2, p1, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 75
    new-instance v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlagItemLayout;->setLeftText(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/narvii/widget/FlagItemLayout;->setLeftTextColor(I)V

    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const p2, 0x7f0801cb

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_0
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x28

    .line 67
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v0, 0x7f0f06fe

    .line 50
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06d8

    .line 51
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06f2

    .line 52
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06d7

    .line 53
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06e2

    .line 54
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06c7

    .line 55
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06e3

    .line 56
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f06f7

    .line 57
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
