.class public Lcom/tokenautocomplete/b;
.super Lcom/tokenautocomplete/e;
.source "SourceFile"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;III)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p5}, Lcom/tokenautocomplete/e;-><init>(Landroid/view/View;I)V

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    iput-object p2, p0, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 15
    .line 16
    check-cast p2, Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    const/4 p3, 0x0

    .line 21
    int-to-float p4, p4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/b;->b(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "+"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/tokenautocomplete/b;->text:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method
