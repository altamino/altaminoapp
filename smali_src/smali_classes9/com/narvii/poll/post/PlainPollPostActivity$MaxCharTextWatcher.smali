.class Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/post/PlainPollPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxCharTextWatcher"
.end annotation


# instance fields
.field private final MAX_LEN:I

.field private counterTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/poll/post/PlainPollPostActivity;


# direct methods
.method private constructor <init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->this$0:Lcom/narvii/poll/post/PlainPollPostActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->counterTextView:Landroid/widget/TextView;

    iput p3, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->MAX_LEN:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;ILcom/narvii/poll/post/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->counterTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->MAX_LEN:I

    .line 19
    sub-int/2addr v2, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
