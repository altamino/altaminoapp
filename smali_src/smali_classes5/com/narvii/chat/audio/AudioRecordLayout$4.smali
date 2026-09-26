.class Lcom/narvii/chat/audio/AudioRecordLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$4;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRecordTimeChange(J)V
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p1, v0

    .line 4
    .line 5
    const-wide/16 v0, 0xb4

    .line 6
    sub-long/2addr v0, p1

    .line 7
    long-to-int p1, v0

    .line 8
    .line 9
    const/16 p2, 0xa

    .line 10
    .line 11
    if-gt p1, p2, :cond_0

    .line 12
    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout$4;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    const v0, 0x7f120fd2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, " ("

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, ")"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    new-instance v1, Landroid/text/SpannableString;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 59
    const/4 v2, 0x1

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 66
    move-result v2

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 72
    move-result p2

    .line 73
    .line 74
    add-int/lit8 p2, p2, 0x2

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p1, ""

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 95
    move-result p1

    .line 96
    add-int/2addr p2, p1

    .line 97
    .line 98
    const/16 p1, 0x21

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v0, v2, p2, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$4;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method
