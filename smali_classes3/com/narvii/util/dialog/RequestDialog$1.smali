.class Lcom/narvii/util/dialog/RequestDialog$1;
.super Ljava/lang/Object;
.source "RequestDialog.java"

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

    .line 33
    iput-object p1, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    iget-object v1, v0, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    iget v0, v0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    iget v0, v0, Lcom/narvii/util/dialog/RequestDialog;->maxCount:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    iget-object p1, p1, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/dialog/RequestDialog$1;->this$0:Lcom/narvii/util/dialog/RequestDialog;

    iget-object p1, p1, Lcom/narvii/util/dialog/RequestDialog;->tvCountHint:Landroid/widget/TextView;

    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

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
