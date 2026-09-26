.class public Lcom/tokenautocomplete/TokenCompleteTextView$j;
.super Lcom/tokenautocomplete/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "j"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field private token:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p4}, Lcom/tokenautocomplete/e;-><init>(Landroid/view/View;I)V

    .line 6
    .line 7
    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->token:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public c()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$g;->$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle:[I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    .line 23
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    const/4 v3, 0x2

    .line 28
    .line 29
    if-eq v1, v3, :cond_1

    .line 30
    const/4 v3, 0x3

    .line 31
    .line 32
    if-eq v1, v3, :cond_3

    .line 33
    .line 34
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 42
    move-result v3

    .line 43
    add-int/2addr v3, v2

    .line 44
    .line 45
    if-eq v1, v3, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 51
    move-result v0

    .line 52
    add-int/2addr v0, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->k(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->i(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$h;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$h;

    .line 84
    .line 85
    if-ne v0, v1, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/tokenautocomplete/e;->view:Landroid/view/View;

    .line 88
    const/4 v1, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_3
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$j;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->o(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    .line 103
    :cond_4
    :goto_0
    return-void
.end method
