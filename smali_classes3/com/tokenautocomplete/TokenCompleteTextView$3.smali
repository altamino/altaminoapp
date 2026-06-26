.class Lcom/tokenautocomplete/TokenCompleteTextView$3;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->addObject(Ljava/lang/Object;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$sourceText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$object:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$sourceText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$object:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$600(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$200(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$200(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$object:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->val$sourceText:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$700(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 810
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$3;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(I)V

    :cond_3
    return-void
.end method
