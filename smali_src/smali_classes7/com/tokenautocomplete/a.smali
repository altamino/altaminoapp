.class public Lcom/tokenautocomplete/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# instance fields
.field splitChar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([C)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    array-length v1, p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    aget-char v2, p1, v1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :goto_0
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    return p2

    .line 24
    .line 25
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3

    .line 1
    move v0, p2

    .line 2
    .line 3
    :goto_0
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 6
    .line 7
    add-int/lit8 v2, v0, -0x1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 30
    move-result v1

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :goto_0
    const/16 v1, 0x20

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v2, v0, -0x1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 25
    sub-int/2addr v0, v2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    iget-object v3, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    .line 54
    if-le v3, v2, :cond_2

    .line 55
    .line 56
    iget-object v3, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    check-cast v3, Ljava/lang/Character;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 66
    move-result v3

    .line 67
    .line 68
    if-ne v3, v1, :cond_2

    .line 69
    .line 70
    iget-object v1, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    :goto_1
    check-cast v1, Ljava/lang/Character;

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_2
    iget-object v1, p0, Lcom/tokenautocomplete/a;->splitChar:Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, " "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    instance-of v1, p1, Landroid/text/Spanned;

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    new-instance v1, Landroid/text/SpannableString;

    .line 103
    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    move-object v2, p1

    .line 122
    .line 123
    check-cast v2, Landroid/text/Spanned;

    .line 124
    const/4 v3, 0x0

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 128
    move-result v4

    .line 129
    .line 130
    const-class v5, Ljava/lang/Object;

    .line 131
    const/4 v7, 0x0

    .line 132
    move-object v6, v1

    .line 133
    .line 134
    .line 135
    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 136
    return-object v1

    .line 137
    .line 138
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    return-object p1
.end method
