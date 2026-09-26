.class Lcom/narvii/util/dialog/RequestDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/RequestDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/RequestDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/RequestDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result v2

    .line 11
    sub-int/2addr v0, v2

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    .line 21
    .line 22
    iget v0, v0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 26
    move-result p1

    .line 27
    sub-int/2addr v0, p1

    .line 28
    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 34
    .line 35
    const/high16 v0, -0x10000

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    const v0, -0x333334

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :goto_0
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
