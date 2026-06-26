.class Lcom/tokenautocomplete/TokenCompleteTextView$5;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 977
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 982
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 983
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v5, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 986
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$900(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    move-result-object v5

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
