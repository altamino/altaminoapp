.class public Lcom/narvii/chat/video/ChannelAutoEndDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$3;-><init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->countDownRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    const/16 p1, 0xa

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0d01a7

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a027d

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->tvTitle:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->getCurTextSpan()Landroid/text/SpannableStringBuilder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0a0321

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$1;-><init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f0a0db7

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    new-instance v0, Lcom/narvii/chat/video/ChannelAutoEndDialog$2;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog$2;-><init>(Lcom/narvii/chat/video/ChannelAutoEndDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/ChannelAutoEndDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/video/ChannelAutoEndDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/ChannelAutoEndDialog;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/ChannelAutoEndDialog;->getCurTextSpan()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getCurTextSpan()Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    iget v4, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    .line 15
    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    aput-object v4, v3, v5

    .line 22
    .line 23
    .line 24
    const v4, 0x7f12023b

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "s"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    iget v3, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 55
    move-result v0

    .line 56
    .line 57
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 61
    .line 62
    iget v2, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->timeLeft:I

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    move-result v2

    .line 71
    add-int/2addr v2, v0

    .line 72
    .line 73
    const/16 v4, 0x21

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->countDownRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 11
    return-void
.end method

.method public setChannelEndListener(Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->channelEndListener:Lcom/narvii/chat/video/ChannelAutoEndDialog$ChannelEndListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/ChannelAutoEndDialog;->countDownRunnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 9
    return-void
.end method
