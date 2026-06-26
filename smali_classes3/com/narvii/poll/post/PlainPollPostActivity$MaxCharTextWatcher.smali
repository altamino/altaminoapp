.class Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;
.super Ljava/lang/Object;
.source "PlainPollPostActivity.java"

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

    .line 178
    iput-object p1, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->this$0:Lcom/narvii/poll/post/PlainPollPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->counterTextView:Landroid/widget/TextView;

    .line 180
    iput p3, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->MAX_LEN:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;ILcom/narvii/poll/post/PlainPollPostActivity$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;-><init>(Lcom/narvii/poll/post/PlainPollPostActivity;Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 193
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->counterTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/poll/post/PlainPollPostActivity$MaxCharTextWatcher;->MAX_LEN:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
