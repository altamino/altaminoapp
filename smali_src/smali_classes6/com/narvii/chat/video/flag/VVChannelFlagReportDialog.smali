.class public Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


# instance fields
.field private isScreenRoom:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mFlagOptionLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d028c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->isScreenRoom:Z

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0a05c6

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const p2, 0x7f1207a2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    const/16 p1, 0xce

    .line 39
    .line 40
    const/16 p2, 0x7d

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setTitleColor(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    const p2, 0x7f1201e2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance p2, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog$1;-><init>(Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 68
    return-void
.end method


# virtual methods
.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/narvii/widget/FlagItemLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FlagItemLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/FlagItemLayout;->setLeftText(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/narvii/widget/FlagItemLayout;->setLeftTextColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080256

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/16 v0, 0x28

    .line 2
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->mFlagOptionLayout:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f1207a7

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f120784

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f12079b

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f120783

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    const v0, 0x7f12078b

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f120773

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7f12078c

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    const v0, 0x7f1207a0

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->listener:Landroid/view/View$OnClickListener;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/video/flag/VVChannelFlagReportDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 75
    return-void
.end method
