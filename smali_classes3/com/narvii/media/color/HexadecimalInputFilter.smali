.class Lcom/narvii/media/color/HexadecimalInputFilter;
.super Ljava/lang/Object;
.source "HexadecimalInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mUpperCase:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    sub-int p4, p3, p2

    const/4 p5, 0x0

    if-gtz p4, :cond_0

    return-object p5

    :cond_0
    const/4 p6, 0x0

    move v0, p2

    move-object v1, p5

    const/4 v4, 0x0

    :goto_0
    if-ge v0, p3, :cond_9

    .line 31
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v5, 0x41

    if-eq v3, v5, :cond_1

    const/16 v5, 0x42

    if-eq v3, v5, :cond_1

    const/16 v5, 0x43

    if-eq v3, v5, :cond_1

    const/16 v5, 0x44

    if-eq v3, v5, :cond_1

    const/16 v5, 0x45

    if-eq v3, v5, :cond_1

    const/16 v5, 0x46

    if-eq v3, v5, :cond_1

    .line 39
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v1, :cond_8

    .line 42
    new-array v1, p4, [C

    .line 43
    invoke-static {p1, p2, v0, v1, p6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    goto :goto_2

    .line 45
    :cond_1
    iget-boolean v5, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    if-eqz v5, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    iget-boolean v5, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    if-nez v5, :cond_6

    if-ne v2, v3, :cond_6

    :cond_3
    if-nez v1, :cond_4

    .line 49
    new-array v1, p4, [C

    .line 50
    invoke-static {p1, p2, v0, v1, p6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 52
    iget-boolean v6, p0, Lcom/narvii/media/color/HexadecimalInputFilter;->mUpperCase:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    :goto_1
    aput-char v3, v1, v4

    move v4, v5

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    add-int/lit8 v2, v4, 0x1

    .line 56
    aput-char v3, v1, v4

    move v4, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_c

    if-lt v4, p4, :cond_a

    .line 71
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 73
    :cond_a
    invoke-static {v1, p6, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p3

    .line 76
    :goto_3
    instance-of p4, p1, Landroid/text/Spanned;

    if-eqz p4, :cond_b

    .line 77
    new-instance p4, Landroid/text/SpannableString;

    invoke-direct {p4, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v3, p2

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object p4

    :cond_b
    return-object p3

    :cond_c
    return-object p5
.end method
