.class public Lcom/narvii/poweruser/SendBroadcastDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SendBroadcastDialog.java"


# instance fields
.field content:Landroid/widget/EditText;

.field context:Landroid/content/Context;

.field private linkSummary:Lcom/narvii/model/LinkSummary;

.field membersCount:I

.field numberFormat:Ljava/text/NumberFormat;

.field private postImg:Lcom/narvii/widget/NVImageView;

.field private postTitle:Landroid/widget/TextView;

.field public time:I

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/narvii/model/LinkSummary;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 46
    iput p3, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->membersCount:I

    .line 47
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->numberFormat:Ljava/text/NumberFormat;

    .line 48
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Dialog;)V

    .line 49
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0900d0

    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    const v3, 0x7f0f0132

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090b79

    .line 56
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    const v4, 0x7f0f0365

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900cc

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    const v2, 0x7f0f02c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->membersCount:I

    invoke-static {v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090b73

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->timeView:Landroid/widget/TextView;

    .line 63
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialog;->refreshTimeView()V

    const v0, 0x7f090b13

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v1, 0x7f0902d0

    .line 68
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->content:Landroid/widget/EditText;

    .line 69
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->content:Landroid/widget/EditText;

    new-instance v2, Lcom/narvii/poweruser/SendBroadcastDialog$1;

    invoke-direct {v2, p0}, Lcom/narvii/poweruser/SendBroadcastDialog$1;-><init>(Lcom/narvii/poweruser/SendBroadcastDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->content:Landroid/widget/EditText;

    new-instance v2, Lcom/narvii/poweruser/SendBroadcastDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/narvii/poweruser/SendBroadcastDialog$2;-><init>(Lcom/narvii/poweruser/SendBroadcastDialog;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f09088c

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postImg:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f0908bb

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postTitle:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postImg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 106
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->postTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private refreshTimeView()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->timeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    iget v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    iget v1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->context:Landroid/content/Context;

    const v1, 0x7f0f012f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->formatDeliveryTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected baseLayoutId()I
    .locals 1

    const v0, 0x7f0b019b

    return v0
.end method

.method public setTime(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/narvii/poweruser/SendBroadcastDialog;->time:I

    .line 125
    invoke-direct {p0}, Lcom/narvii/poweruser/SendBroadcastDialog;->refreshTimeView()V

    return-void
.end method
