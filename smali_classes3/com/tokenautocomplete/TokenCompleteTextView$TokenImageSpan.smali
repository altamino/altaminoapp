.class public Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;
.super Lcom/tokenautocomplete/ViewSpan;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TokenImageSpan"
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

    .line 1062
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 1063
    invoke-direct {p0, p2, p4}, Lcom/tokenautocomplete/ViewSpan;-><init>(Landroid/view/View;I)V

    .line 1064
    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .line 1072
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1075
    :cond_0
    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$7;->$SwitchMap$com$tokenautocomplete$TokenCompleteTextView$TokenClickStyle:[I

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1200(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    .line 1097
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v1

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    if-eq v1, v3, :cond_4

    .line 1099
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1300(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 1081
    iget-object v0, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1200(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    move-result-object v0

    sget-object v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;->SelectDeselect:Lcom/tokenautocomplete/TokenCompleteTextView$TokenClickStyle;

    if-ne v0, v1, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/tokenautocomplete/ViewSpan;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1087
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->invalidate()V

    goto :goto_0

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    :cond_4
    :goto_0
    return-void
.end method
