.class public Lcom/tokenautocomplete/CountSpan;
.super Lcom/tokenautocomplete/ViewSpan;
.source "CountSpan.java"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;III)V
    .locals 1

    .line 18
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p5}, Lcom/tokenautocomplete/ViewSpan;-><init>(Landroid/view/View;I)V

    const-string p2, ""

    .line 15
    iput-object p2, p0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 19
    iget-object p2, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    .line 20
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float p3, p4

    const/4 p4, 0x0

    .line 21
    invoke-virtual {p2, p4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    return-void
.end method


# virtual methods
.method public setCount(I)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tokenautocomplete/CountSpan;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
