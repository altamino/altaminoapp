.class Lcom/narvii/media/color/HexadecimalInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mUpperCase:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    .line 2
    sub-int p4, p3, p2

    .line 3
    const/4 p5, 0x0

    .line 4
    .line 5
    if-gtz p4, :cond_0

    .line 6
    return-object p5

    .line 7
    :cond_0
    const/4 p6, 0x0

    .line 8
    move v0, p2

    .line 9
    move-object v1, p5

    .line 10
    move v4, p6

    .line 11
    .line 12
    :goto_0
    if-ge v0, p3, :cond_9

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 20
    move-result v3

    .line 21
    .line 22
    const/16 v5, 0x41

    .line 23
    .line 24
    if-eq v3, v5, :cond_1

    .line 25
    .line 26
    const/16 v5, 0x42

    .line 27
    .line 28
    if-eq v3, v5, :cond_1

    .line 29
    .line 30
    const/16 v5, 0x43

    .line 31
    .line 32
    if-eq v3, v5, :cond_1

    .line 33
    .line 34
    const/16 v5, 0x44

    .line 35
    .line 36
    if-eq v3, v5, :cond_1

    .line 37
    .line 38
    const/16 v5, 0x45

    .line 39
    .line 40
    if-eq v3, v5, :cond_1

    .line 41
    .line 42
    const/16 v5, 0x46

    .line 43
    .line 44
    if-eq v3, v5, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 48
    move-result v5

    .line 49
    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    if-nez v1, :cond_8

    .line 53
    .line 54
    new-array v1, p4, [C

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2, v0, v1, p6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_1
    iget-boolean v5, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    if-ne v2, v3, :cond_3

    .line 65
    .line 66
    :cond_2
    if-nez v5, :cond_6

    .line 67
    .line 68
    if-ne v2, v3, :cond_6

    .line 69
    .line 70
    :cond_3
    if-nez v1, :cond_4

    .line 71
    .line 72
    new-array v1, p4, [C

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2, v0, v1, p6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 76
    .line 77
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 78
    .line 79
    iget-boolean v6, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    .line 80
    .line 81
    if-eqz v6, :cond_5

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 86
    move-result v3

    .line 87
    .line 88
    :goto_1
    aput-char v3, v1, v4

    .line 89
    move v4, v5

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_6
    if-eqz v1, :cond_7

    .line 93
    .line 94
    add-int/lit8 v2, v4, 0x1

    .line 95
    .line 96
    aput-char v3, v1, v4

    .line 97
    move v4, v2

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_9
    if-eqz v1, :cond_c

    .line 106
    .line 107
    if-lt v4, p4, :cond_a

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 111
    move-result-object p3

    .line 112
    goto :goto_3

    .line 113
    .line 114
    .line 115
    :cond_a
    invoke-static {v1, p6, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    .line 116
    move-result-object p3

    .line 117
    .line 118
    :goto_3
    instance-of p4, p1, Landroid/text/Spanned;

    .line 119
    .line 120
    if-eqz p4, :cond_b

    .line 121
    .line 122
    new-instance p4, Landroid/text/SpannableString;

    .line 123
    .line 124
    .line 125
    invoke-direct {p4, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    move-object v2, p1

    .line 127
    .line 128
    check-cast v2, Landroid/text/Spanned;

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v7, 0x0

    .line 131
    move v3, p2

    .line 132
    move-object v6, p4

    .line 133
    .line 134
    .line 135
    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 136
    return-object p4

    .line 137
    :cond_b
    return-object p3

    .line 138
    :cond_c
    return-object p5
.end method
