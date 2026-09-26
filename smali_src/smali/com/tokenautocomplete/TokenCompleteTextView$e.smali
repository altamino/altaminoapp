.class Lcom/tokenautocomplete/TokenCompleteTextView$e;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$e;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$e;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

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
    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v1

    .line 14
    .line 15
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 23
    array-length v2, v1

    .line 24
    .line 25
    :goto_0
    if-ge v3, v2, :cond_1

    .line 26
    .line 27
    aget-object v4, v1, v3

    .line 28
    .line 29
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$e;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 30
    .line 31
    .line 32
    invoke-static {v5, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->o(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    .line 33
    .line 34
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$e;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 35
    .line 36
    .line 37
    invoke-static {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->h(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 42
    move-result v6

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 46
    move-result v7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/tokenautocomplete/TokenCompleteTextView$m;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
