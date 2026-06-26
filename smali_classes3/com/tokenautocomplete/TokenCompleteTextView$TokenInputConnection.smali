.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TokenCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 1359
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 1360
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 3

    .line 1368
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$500(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenInputConnection;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1800(Lcom/tokenautocomplete/TokenCompleteTextView;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
