.class Lcom/tokenautocomplete/TokenCompleteTextView$4;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->removeObject(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 836
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$800(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 842
    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 843
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 847
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$800(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 849
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$900(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_1

    .line 852
    :cond_3
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1000(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 855
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 856
    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v2, v0, v3

    .line 857
    invoke-virtual {v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 858
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
