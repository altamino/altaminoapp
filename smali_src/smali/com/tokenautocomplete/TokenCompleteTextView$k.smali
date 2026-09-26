.class Lcom/tokenautocomplete/TokenCompleteTextView$k;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$k;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 6
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$k;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$k;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-gt v0, v1, :cond_0

    .line 20
    move p1, v2

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$k;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->l(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :cond_2
    return v2
.end method
