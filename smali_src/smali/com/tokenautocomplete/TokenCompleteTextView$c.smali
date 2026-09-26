.class Lcom/tokenautocomplete/TokenCompleteTextView$c;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->val$object:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->val$sourceText:Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->val$object:Ljava/lang/Object;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->a(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->val$object:Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->j(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    .line 34
    move-result v0

    .line 35
    const/4 v1, -0x1

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->j(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    .line 53
    move-result v1

    .line 54
    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    return-void

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->val$object:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->val$sourceText:Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->m(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$c;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 91
    move-result v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 95
    :cond_3
    return-void
.end method
