.class Lcom/tokenautocomplete/TokenCompleteTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->init()V
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
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->j(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    .line 6
    move-result p2

    .line 7
    const/4 p3, -0x1

    .line 8
    .line 9
    const-string p4, ""

    .line 10
    .line 11
    if-eq p2, p3, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->e(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result p2

    .line 22
    .line 23
    iget-object p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 24
    .line 25
    .line 26
    invoke-static {p3}, Lcom/tokenautocomplete/TokenCompleteTextView;->j(Lcom/tokenautocomplete/TokenCompleteTextView;)I

    .line 27
    move-result p3

    .line 28
    .line 29
    if-ne p2, p3, :cond_0

    .line 30
    return-object p4

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    move-result p2

    .line 35
    const/4 p3, 0x1

    .line 36
    .line 37
    if-ne p2, p3, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 40
    const/4 p3, 0x0

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 44
    move-result p1

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->n(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 56
    return-object p4

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    move-result p1

    .line 67
    const/4 p2, 0x0

    .line 68
    .line 69
    if-ge p5, p1, :cond_4

    .line 70
    .line 71
    if-nez p5, :cond_2

    .line 72
    .line 73
    if-nez p6, :cond_2

    .line 74
    return-object p2

    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 84
    move-result p1

    .line 85
    .line 86
    if-gt p6, p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    .line 99
    :cond_3
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$a;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 106
    .line 107
    .line 108
    invoke-static {p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->f(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 113
    move-result p2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p5, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_4
    return-object p2
.end method
