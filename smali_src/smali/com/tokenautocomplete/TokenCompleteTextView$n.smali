.class Lcom/tokenautocomplete/TokenCompleteTextView$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field spansToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.j;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->spansToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$n;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tokenautocomplete/TokenCompleteTextView$j;Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.j;",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->spansToRemove:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 31
    move-result v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$n;->a(Lcom/tokenautocomplete/TokenCompleteTextView$j;Landroid/text/Editable;)V

    .line 35
    .line 36
    add-int/lit8 v1, v3, -0x1

    .line 37
    .line 38
    if-ltz v1, :cond_1

    .line 39
    .line 40
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 44
    move-result v5

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->n(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    .line 48
    move-result v4

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 54
    .line 55
    :cond_1
    if-ltz v2, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 61
    move-result v3

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->n(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    add-int/lit8 v1, v2, 0x1

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->k(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->q(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 84
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    .line 2
    if-lez p3, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    move-result-object p1

    .line 17
    add-int/2addr p3, p2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    move-result p4

    .line 22
    .line 23
    const/16 v0, 0x20

    .line 24
    .line 25
    if-ne p4, v0, :cond_0

    .line 26
    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 28
    .line 29
    :cond_0
    const-class p4, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2, p3, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    check-cast p4, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->spansToRemove:Ljava/util/ArrayList;

    .line 43
    array-length v0, p4

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    :goto_0
    if-ge v1, v0, :cond_2

    .line 47
    .line 48
    aget-object v2, p4, v1

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 52
    move-result v3

    .line 53
    .line 54
    if-ge v3, p3, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 58
    move-result v3

    .line 59
    .line 60
    if-ge p2, v3, :cond_1

    .line 61
    .line 62
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$n;->spansToRemove:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
