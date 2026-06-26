.class Lcom/narvii/chat/audio/AudioRecordLayout$4;
.super Ljava/lang/Object;
.source "AudioRecordLayout.java"

# interfaces
.implements Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioRecordLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$4;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordTimeChange(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 421
    div-long/2addr p1, v0

    const-wide/16 v0, 0xb4

    sub-long/2addr v0, p1

    long-to-int p1, v0

    const/16 p2, 0xa

    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    .line 424
    iget-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout$4;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0eb3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    const/16 p1, 0x21

    invoke-interface {v1, v0, v2, p2, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 428
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$4;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
