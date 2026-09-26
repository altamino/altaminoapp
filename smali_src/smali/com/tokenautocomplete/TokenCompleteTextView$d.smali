.class Lcom/tokenautocomplete/TokenCompleteTextView$d;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->val$object:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

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
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    check-cast v3, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->val$object:Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x0

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    check-cast v2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->c(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->h(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$m;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0, v2, v3, v3}, Lcom/tokenautocomplete/TokenCompleteTextView$m;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_3
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->p(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 97
    move-result v1

    .line 98
    .line 99
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$j;

    .line 106
    array-length v1, v0

    .line 107
    .line 108
    :goto_2
    if-ge v3, v1, :cond_5

    .line 109
    .line 110
    aget-object v2, v0, v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/tokenautocomplete/TokenCompleteTextView$j;->b()Ljava/lang/Object;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->val$object:Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v4

    .line 121
    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$d;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 125
    .line 126
    .line 127
    invoke-static {v4, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->o(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$j;)V

    .line 128
    .line 129
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    return-void
.end method
