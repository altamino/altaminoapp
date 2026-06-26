.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenTextWatcher"
.end annotation


# instance fields
.field spansToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenImageSpan;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V
    .locals 0

    .line 1146
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1181
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1182
    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1183
    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1185
    invoke-virtual {p0, v1, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->removeToken(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;Landroid/text/Editable;)V

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v1, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v3, 0x1

    .line 1192
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    if-ltz v2, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v1, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 1196
    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1200
    :cond_2
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1300(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 1201
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1700(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    if-lez p3, :cond_2

    .line 1156
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1157
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    add-int/2addr p3, p2

    .line 1161
    invoke-interface {p1, p2}, Landroid/text/Editable;->charAt(I)C

    move-result p4

    const/16 v0, 0x20

    if-ne p4, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 1165
    :cond_0
    const-class p4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {p1, p2, p3, p4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    .line 1170
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    .line 1171
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, p3, :cond_1

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 1172
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected removeToken(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView<",
            "TT;>.TokenImageSpan;",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .line 1150
    invoke-interface {p2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method
