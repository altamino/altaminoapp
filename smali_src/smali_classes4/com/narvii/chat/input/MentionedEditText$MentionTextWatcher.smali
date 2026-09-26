.class Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/MentionedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MentionTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/MentionedEditText;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/input/MentionedEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/input/MentionedEditText;Lcom/narvii/chat/input/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;-><init>(Lcom/narvii/chat/input/MentionedEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->f(Lcom/narvii/chat/input/MentionedEditText;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-lt p2, v0, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    add-int v0, p2, p3

    .line 25
    sub-int/2addr p4, p3

    .line 26
    .line 27
    if-eq p2, v0, :cond_2

    .line 28
    .line 29
    iget-object p3, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Lcom/narvii/chat/input/MentionedEditText;->d(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/List;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    .line 36
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result p3

    .line 38
    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    const-class p3, Landroid/text/style/ForegroundColorSpan;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p2, v0, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    check-cast p3, [Landroid/text/style/ForegroundColorSpan;

    .line 48
    array-length v1, p3

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    .line 53
    aget-object v3, p3, v2

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->d(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/List;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result p3

    .line 74
    .line 75
    if-eqz p3, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    check-cast p3, Lcom/narvii/chat/input/MentionedEditText$Range;

    .line 82
    .line 83
    .line 84
    invoke-static {p3, p2, v0}, Lcom/narvii/chat/input/MentionedEditText$Range;->a(Lcom/narvii/chat/input/MentionedEditText$Range;II)Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_4
    iget v1, p3, Lcom/narvii/chat/input/MentionedEditText$Range;->from:I

    .line 94
    .line 95
    if-lt v1, v0, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-static {p3, p4}, Lcom/narvii/chat/input/MentionedEditText$Range;->b(Lcom/narvii/chat/input/MentionedEditText$Range;I)V

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Lcom/narvii/chat/input/MentionedEditText;->f(Lcom/narvii/chat/input/MentionedEditText;)Z

    .line 6
    move-result p3

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p3, 0x1

    .line 11
    .line 12
    if-ne p4, p3, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result p3

    .line 17
    .line 18
    if-nez p3, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result p1

    .line 27
    .line 28
    iget-object p3, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lcom/narvii/chat/input/MentionedEditText;->c(Lcom/narvii/chat/input/MentionedEditText;)Ljava/util/Map;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    .line 39
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result p4

    .line 45
    .line 46
    if-eqz p4, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object p4

    .line 51
    .line 52
    check-cast p4, Ljava/util/Map$Entry;

    .line 53
    .line 54
    .line 55
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->j(Lcom/narvii/chat/input/MentionedEditText;I)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->e(Lcom/narvii/chat/input/MentionedEditText;)Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->b(Lcom/narvii/chat/input/MentionedEditText;)Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/chat/input/MentionedEditText;->b(Lcom/narvii/chat/input/MentionedEditText;)Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 99
    move-result-object p3

    .line 100
    .line 101
    check-cast p3, Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, p3, p2}, Lcom/narvii/chat/input/MentionedEditText$OnMentionInputListener;->onMentionCharacterInput(Ljava/lang/String;I)V

    .line 105
    .line 106
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/input/MentionedEditText$MentionTextWatcher;->this$0:Lcom/narvii/chat/input/MentionedEditText;

    .line 107
    const/4 p2, 0x0

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2}, Lcom/narvii/chat/input/MentionedEditText;->i(Lcom/narvii/chat/input/MentionedEditText;Z)V

    .line 111
    :cond_3
    return-void
.end method
