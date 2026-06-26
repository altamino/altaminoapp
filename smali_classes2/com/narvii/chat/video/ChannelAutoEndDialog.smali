.class public Lcom/narvii/chat/video/ChannelAutoEndDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "ChannelAutoEndDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;
    }
.end annotation


# static fields
.field private static final TIME_LEFT_ENDING:I = 0xa


# instance fields
.field channelEndListener:Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;

.field countDownRunnable:Ljava/lang/Runnable;

.field private timeLeft:I

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;-><init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V

    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->countDownRunnable:Ljava/lang/Runnable;

    const/16 p1, 0xa

    .line 40
    iput p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    const p1, 0x7f0b0189

    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const p1, 0x7f0901c6

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->tvTitle:Landroid/widget/TextView;

    .line 44
    iget-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->tvTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->getCurTextSpan()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09025e

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;-><init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090abd

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/video/ChannelAutoEndDialog$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$2;-><init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/chat/video/ChannelAutoEndDialog;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    return p1
.end method

.method static synthetic access$010(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I
    .locals 2

    .line 19
    iget v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    return v0
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->getCurTextSpan()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private getCurTextSpan()Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0f01ec

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    iget v3, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v2, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 73
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public setChannelEndListener(Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->channelEndListener:Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->countDownRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 68
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
