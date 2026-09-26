.class public abstract Lkotlinx/serialization/json/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,650:1\n1#2:651\n*E\n"
.end annotation


# instance fields
.field protected currentPosition:I

.field private escapedString:Ljava/lang/StringBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final path:Lkotlinx/serialization/json/internal/d0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private peekedString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lkotlinx/serialization/json/internal/d0;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lkotlinx/serialization/json/internal/d0;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lkotlinx/serialization/json/internal/a;->escapedString:Ljava/lang/StringBuilder;

    .line 18
    return-void
.end method

.method private final B(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    move-result p1

    .line 5
    .line 6
    const/16 p2, 0x30

    .line 7
    .line 8
    if-gt p2, p1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x3a

    .line 11
    .line 12
    if-ge p1, v0, :cond_0

    .line 13
    sub-int/2addr p1, p2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const/16 p2, 0x61

    .line 17
    .line 18
    if-gt p2, p1, :cond_1

    .line 19
    .line 20
    const/16 p2, 0x67

    .line 21
    .line 22
    if-ge p1, p2, :cond_1

    .line 23
    .line 24
    add-int/lit8 p1, p1, -0x57

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const/16 p2, 0x41

    .line 28
    .line 29
    if-gt p2, p1, :cond_2

    .line 30
    .line 31
    const/16 p2, 0x47

    .line 32
    .line 33
    if-ge p1, p2, :cond_2

    .line 34
    .line 35
    add-int/lit8 p1, p1, -0x37

    .line 36
    :goto_0
    return p1

    .line 37
    .line 38
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v0, "Invalid toHexChar char \'"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p1, "\' in unicode escape"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x6

    .line 62
    const/4 v5, 0x0

    .line 63
    move-object v0, p0

    .line 64
    .line 65
    .line 66
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 67
    .line 68
    new-instance p1, Lw7/i;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 72
    throw p1
.end method

.method private final K()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->peekedString:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Lkotlinx/serialization/json/internal/a;->peekedString:Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method private final O()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x22

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    return v2
.end method

.method public static final synthetic a(Lkotlinx/serialization/json/internal/a;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 3
    return p0
.end method

.method private final b(I)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    add-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    move-result p1

    .line 18
    .line 19
    const/16 v0, 0x75

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/a;->d(Ljava/lang/CharSequence;I)I

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/b;->b(I)C

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->escapedString:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    return v1

    .line 43
    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v1, "Invalid escaped char \'"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const/16 p1, 0x27

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x6

    .line 68
    const/4 v6, 0x0

    .line 69
    move-object v1, p0

    .line 70
    .line 71
    .line 72
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 73
    .line 74
    new-instance p1, Lw7/i;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 78
    throw p1

    .line 79
    .line 80
    :cond_2
    const-string v1, "Expected escape sequence to continue, got EOF"

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x6

    .line 84
    const/4 v5, 0x0

    .line 85
    move-object v0, p0

    .line 86
    .line 87
    .line 88
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 89
    .line 90
    new-instance p1, Lw7/i;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 94
    throw p1
.end method

.method private final c(II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 4
    .line 5
    add-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2}, Lkotlinx/serialization/json/internal/a;->b(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method private final d(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    .line 2
    add-int/lit8 v0, p2, 0x4

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-lt v0, v1, :cond_1

    .line 9
    .line 10
    iput p2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->v()V

    .line 14
    .line 15
    iget p2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x4

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ge p2, v0, :cond_0

    .line 24
    .line 25
    iget p2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->d(Ljava/lang/CharSequence;I)I

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    .line 32
    :cond_0
    const-string v1, "Unexpected EOF during unicode escape"

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x6

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, p0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 41
    .line 42
    new-instance p1, Lw7/i;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 46
    throw p1

    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->escapedString:Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 52
    move-result v2

    .line 53
    .line 54
    shl-int/lit8 v2, v2, 0xc

    .line 55
    .line 56
    add-int/lit8 v3, p2, 0x1

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 60
    move-result v3

    .line 61
    .line 62
    shl-int/lit8 v3, v3, 0x8

    .line 63
    add-int/2addr v2, v3

    .line 64
    .line 65
    add-int/lit8 v3, p2, 0x2

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 69
    move-result v3

    .line 70
    .line 71
    shl-int/lit8 v3, v3, 0x4

    .line 72
    add-int/2addr v2, v3

    .line 73
    .line 74
    add-int/lit8 p2, p2, 0x3

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->B(Ljava/lang/CharSequence;I)I

    .line 78
    move-result p1

    .line 79
    add-int/2addr v2, p1

    .line 80
    int-to-char p1, v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    return v0
.end method

.method private final h(I)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-ge p1, v0, :cond_2

    .line 15
    const/4 v0, -0x1

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    add-int/lit8 v1, p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    move-result p1

    .line 28
    .line 29
    or-int/lit8 p1, p1, 0x20

    .line 30
    .line 31
    const/16 v0, 0x66

    .line 32
    .line 33
    if-eq p1, v0, :cond_1

    .line 34
    .line 35
    const/16 v0, 0x74

    .line 36
    .line 37
    if-ne p1, v0, :cond_0

    .line 38
    .line 39
    const-string p1, "rue"

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/a;->j(Ljava/lang/String;I)V

    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v0, "Expected valid boolean literal prefix, but had \'"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const/16 v0, 0x27

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x6

    .line 74
    const/4 v6, 0x0

    .line 75
    move-object v1, p0

    .line 76
    .line 77
    .line 78
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 79
    .line 80
    new-instance p1, Lw7/i;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 84
    throw p1

    .line 85
    .line 86
    :cond_1
    const-string p1, "alse"

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/a;->j(Ljava/lang/String;I)V

    .line 90
    const/4 p1, 0x0

    .line 91
    :goto_0
    return p1

    .line 92
    .line 93
    :cond_2
    const-string v1, "EOF"

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x6

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v0, p0

    .line 99
    .line 100
    .line 101
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 102
    .line 103
    new-instance p1, Lw7/i;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 107
    throw p1
.end method

.method private final j(Ljava/lang/String;I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result v0

    .line 9
    sub-int/2addr v0, p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-lt v0, v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    :goto_0
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    add-int v4, p2, v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 36
    move-result v3

    .line 37
    .line 38
    or-int/lit8 v3, v3, 0x20

    .line 39
    .line 40
    if-ne v2, v3, :cond_0

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string p2, "Expected valid boolean literal prefix, but had \'"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const/16 p2, 0x27

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x6

    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v0, p0

    .line 75
    .line 76
    .line 77
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 78
    .line 79
    new-instance p1, Lw7/i;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 83
    throw p1

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 87
    move-result p1

    .line 88
    add-int/2addr p2, p1

    .line 89
    .line 90
    iput p2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 91
    return-void

    .line 92
    .line 93
    :cond_2
    const-string v1, "Unexpected end of boolean literal"

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x6

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v0, p0

    .line 99
    .line 100
    .line 101
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 102
    .line 103
    new-instance p1, Lw7/i;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 107
    throw p1
.end method

.method private final u(II)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 4
    .line 5
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->escapedString:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string p2, "escapedString.toString()"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object p2, p0, Lkotlinx/serialization/json/internal/a;->escapedString:Ljava/lang/StringBuilder;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 21
    return-object p1
.end method

.method public static synthetic y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 1
    .line 2
    if-nez p5, :cond_2

    .line 3
    .line 4
    and-int/lit8 p5, p4, 0x2

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    iget p2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/a;->x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    .line 21
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    .line 23
    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/a;->J(II)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x6

    .line 16
    const/4 v7, 0x0

    .line 17
    move-object v3, p1

    .line 18
    .line 19
    .line 20
    invoke-static/range {v2 .. v7}, Lkotlin/text/k;->i0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 21
    move-result v0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Encountered an unknown key \'"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const/16 p1, 0x27

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v1, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/serialization/json/internal/a;->x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 49
    .line 50
    new-instance p1, Lw7/i;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 54
    throw p1
.end method

.method protected abstract C()Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final D(C)Z
    .locals 2

    .line 1
    const/16 v0, 0x7d

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_2

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v1

    return p1
.end method

.method public final E()B
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    move-result v2

    .line 20
    .line 21
    const/16 v4, 0x20

    .line 22
    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    const/16 v3, 0xd

    .line 28
    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x9

    .line 32
    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 47
    return v3
.end method

.method public final F(Z)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    if-eq v0, v2, :cond_2

    .line 21
    return-object v1

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->peekedString:Ljava/lang/String;

    .line 28
    return-object p1
.end method

.method public abstract G(I)I
.end method

.method public final H(Z)V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x6

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 24
    move-result v1

    .line 25
    const/4 v4, 0x1

    .line 26
    .line 27
    if-ne v1, v4, :cond_2

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->k()Ljava/lang/String;

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    if-ne v1, v3, :cond_3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_3
    if-ne v1, v2, :cond_4

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_4
    const/16 v4, 0x9

    .line 53
    .line 54
    if-ne v1, v4, :cond_6

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    check-cast v1, Ljava/lang/Number;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 64
    move-result v1

    .line 65
    .line 66
    if-ne v1, v3, :cond_5

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/collections/t;->M(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_5
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v1, "found ] instead of } at path: "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/internal/b0;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/x;

    .line 99
    move-result-object p1

    .line 100
    throw p1

    .line 101
    :cond_6
    const/4 v4, 0x7

    .line 102
    .line 103
    if-ne v1, v4, :cond_8

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    check-cast v1, Ljava/lang/Number;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 113
    move-result v1

    .line 114
    .line 115
    if-ne v1, v2, :cond_7

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lkotlin/collections/t;->M(Ljava/util/List;)Ljava/lang/Object;

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_7
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    const-string v1, "found } instead of ] at path: "

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/internal/b0;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/x;

    .line 148
    move-result-object p1

    .line 149
    throw p1

    .line 150
    .line 151
    :cond_8
    const/16 v4, 0xa

    .line 152
    .line 153
    if-eq v1, v4, :cond_9

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 157
    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 160
    move-result v1

    .line 161
    .line 162
    if-nez v1, :cond_0

    .line 163
    return-void

    .line 164
    .line 165
    :cond_9
    const-string v5, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v8, 0x6

    .line 169
    const/4 v9, 0x0

    .line 170
    move-object v4, p0

    .line 171
    .line 172
    .line 173
    invoke-static/range {v4 .. v9}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 174
    .line 175
    new-instance p1, Lw7/i;

    .line 176
    .line 177
    .line 178
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 179
    throw p1
.end method

.method public I()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    move-result v1

    .line 18
    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    const/16 v2, 0xa

    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 39
    return v0
.end method

.method public J(II)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public abstract L()Z
.end method

.method public final M()Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v0

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x4

    .line 20
    .line 21
    if-lt v1, v3, :cond_4

    .line 22
    const/4 v4, -0x1

    .line 23
    .line 24
    if-ne v0, v4, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v4, 0x0

    .line 27
    move v5, v4

    .line 28
    .line 29
    :goto_0
    if-ge v5, v3, :cond_2

    .line 30
    .line 31
    const-string v6, "null"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 35
    move-result v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 39
    move-result-object v7

    .line 40
    .line 41
    add-int v8, v0, v5

    .line 42
    .line 43
    .line 44
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    move-result v7

    .line 46
    .line 47
    if-eq v6, v7, :cond_1

    .line 48
    return v2

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    if-le v1, v3, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    add-int/lit8 v5, v0, 0x4

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 67
    move-result v1

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    return v2

    .line 71
    :cond_3
    add-int/2addr v0, v3

    .line 72
    .line 73
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 74
    return v4

    .line 75
    :cond_4
    :goto_1
    return v2
.end method

.method protected final N(C)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x22

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "null"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x4

    .line 29
    .line 30
    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    .line 31
    .line 32
    const-string v1, "Expected string literal but \'null\' literal was found"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, p1, v0}, Lkotlinx/serialization/json/internal/a;->x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    .line 36
    .line 37
    new-instance p1, Lw7/i;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 41
    throw p1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 45
    move-result p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->z(B)Ljava/lang/Void;

    .line 49
    .line 50
    new-instance p1, Lw7/i;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 54
    throw p1
.end method

.method protected e(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->escapedString:Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 10
    return-void
.end method

.method public abstract f()Z
.end method

.method public final g()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/a;->h(I)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final i()Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    move-result v1

    .line 23
    .line 24
    const/16 v2, 0x22

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/a;->h(I)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 48
    move-result v4

    .line 49
    .line 50
    if-eq v1, v4, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget v4, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    move-result v1

    .line 61
    .line 62
    if-ne v1, v2, :cond_1

    .line 63
    .line 64
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 65
    add-int/2addr v1, v3

    .line 66
    .line 67
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    const-string v3, "Expected closing quotation mark"

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x6

    .line 74
    const/4 v7, 0x0

    .line 75
    move-object v2, p0

    .line 76
    .line 77
    .line 78
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 79
    .line 80
    new-instance v0, Lw7/i;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 84
    throw v0

    .line 85
    .line 86
    :cond_2
    const-string v2, "EOF"

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x6

    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v1, p0

    .line 92
    .line 93
    .line 94
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 95
    .line 96
    new-instance v0, Lw7/i;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 100
    throw v0

    .line 101
    :cond_3
    :goto_1
    return v0

    .line 102
    .line 103
    :cond_4
    const-string v2, "EOF"

    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x6

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v1, p0

    .line 109
    .line 110
    .line 111
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 112
    .line 113
    new-instance v0, Lw7/i;

    .line 114
    .line 115
    .line 116
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 117
    throw v0
.end method

.method public abstract k()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;Z)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract m()B
.end method

.method public final n(B)B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    return v0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->z(B)Ljava/lang/Void;

    .line 11
    .line 12
    new-instance p1, Lw7/i;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 16
    throw p1
.end method

.method public o(C)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->v()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    .line 16
    if-eq v1, v2, :cond_3

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    move-result v1

    .line 23
    .line 24
    const/16 v3, 0x20

    .line 25
    .line 26
    if-eq v1, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    if-eq v1, v3, :cond_2

    .line 31
    .line 32
    const/16 v3, 0xd

    .line 33
    .line 34
    if-eq v1, v3, :cond_2

    .line 35
    .line 36
    const/16 v3, 0x9

    .line 37
    .line 38
    if-ne v1, v3, :cond_0

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    iput v2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 42
    .line 43
    if-ne v1, p1, :cond_1

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 48
    :cond_2
    :goto_1
    move v1, v2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_3
    iput v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    .line 55
    return-void
.end method

.method public final p()J
    .locals 16

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v6, v0}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_f

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    if-eq v0, v1, :cond_f

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    move-result v1

    .line 32
    .line 33
    const/16 v2, 0x22

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eq v0, v1, :cond_0

    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    const-string v1, "EOF"

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x6

    .line 55
    const/4 v5, 0x0

    .line 56
    .line 57
    move-object/from16 v0, p0

    .line 58
    .line 59
    .line 60
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 61
    .line 62
    new-instance v0, Lw7/i;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 66
    throw v0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    .line 69
    :goto_0
    const-wide/16 v7, 0x0

    .line 70
    move v9, v0

    .line 71
    move-wide v11, v7

    .line 72
    const/4 v5, 0x1

    .line 73
    const/4 v10, 0x0

    .line 74
    .line 75
    :goto_1
    if-eqz v5, :cond_7

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 79
    move-result-object v13

    .line 80
    .line 81
    .line 82
    invoke-interface {v13, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 83
    move-result v13

    .line 84
    .line 85
    const/16 v14, 0x2d

    .line 86
    .line 87
    if-ne v13, v14, :cond_3

    .line 88
    .line 89
    if-ne v9, v0, :cond_2

    .line 90
    .line 91
    add-int/lit8 v9, v9, 0x1

    .line 92
    const/4 v10, 0x1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_2
    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    .line 96
    const/4 v2, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x6

    .line 99
    const/4 v5, 0x0

    .line 100
    .line 101
    move-object/from16 v0, p0

    .line 102
    .line 103
    .line 104
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 105
    .line 106
    new-instance v0, Lw7/i;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 110
    throw v0

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-static {v13}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 114
    move-result v14

    .line 115
    .line 116
    if-nez v14, :cond_7

    .line 117
    .line 118
    add-int/lit8 v9, v9, 0x1

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 122
    move-result-object v5

    .line 123
    .line 124
    .line 125
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 126
    move-result v5

    .line 127
    .line 128
    if-eq v9, v5, :cond_4

    .line 129
    const/4 v5, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    const/4 v5, 0x0

    .line 132
    .line 133
    :goto_2
    add-int/lit8 v14, v13, -0x30

    .line 134
    .line 135
    if-ltz v14, :cond_6

    .line 136
    .line 137
    const/16 v15, 0xa

    .line 138
    .line 139
    if-ge v14, v15, :cond_6

    .line 140
    int-to-long v3, v15

    .line 141
    mul-long/2addr v11, v3

    .line 142
    int-to-long v3, v14

    .line 143
    sub-long/2addr v11, v3

    .line 144
    .line 145
    cmp-long v3, v11, v7

    .line 146
    .line 147
    if-gtz v3, :cond_5

    .line 148
    goto :goto_1

    .line 149
    .line 150
    :cond_5
    const-string v1, "Numeric value overflow"

    .line 151
    const/4 v2, 0x0

    .line 152
    const/4 v3, 0x0

    .line 153
    const/4 v4, 0x6

    .line 154
    const/4 v5, 0x0

    .line 155
    .line 156
    move-object/from16 v0, p0

    .line 157
    .line 158
    .line 159
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 160
    .line 161
    new-instance v0, Lw7/i;

    .line 162
    .line 163
    .line 164
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 165
    throw v0

    .line 166
    .line 167
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    const-string v1, "Unexpected symbol \'"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v1, "\' in numeric literal"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    const/4 v2, 0x0

    .line 189
    const/4 v3, 0x0

    .line 190
    const/4 v4, 0x6

    .line 191
    const/4 v5, 0x0

    .line 192
    .line 193
    move-object/from16 v0, p0

    .line 194
    .line 195
    .line 196
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 197
    .line 198
    new-instance v0, Lw7/i;

    .line 199
    .line 200
    .line 201
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 202
    throw v0

    .line 203
    .line 204
    :cond_7
    if-eq v0, v9, :cond_e

    .line 205
    .line 206
    if-eqz v10, :cond_8

    .line 207
    .line 208
    add-int/lit8 v3, v9, -0x1

    .line 209
    .line 210
    if-eq v0, v3, :cond_e

    .line 211
    .line 212
    :cond_8
    if-eqz v1, :cond_b

    .line 213
    .line 214
    if-eqz v5, :cond_a

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 222
    move-result v0

    .line 223
    .line 224
    if-ne v0, v2, :cond_9

    .line 225
    .line 226
    add-int/lit8 v9, v9, 0x1

    .line 227
    goto :goto_3

    .line 228
    .line 229
    :cond_9
    const-string v1, "Expected closing quotation mark"

    .line 230
    const/4 v2, 0x0

    .line 231
    const/4 v3, 0x0

    .line 232
    const/4 v4, 0x6

    .line 233
    const/4 v5, 0x0

    .line 234
    .line 235
    move-object/from16 v0, p0

    .line 236
    .line 237
    .line 238
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 239
    .line 240
    new-instance v0, Lw7/i;

    .line 241
    .line 242
    .line 243
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 244
    throw v0

    .line 245
    .line 246
    :cond_a
    const-string v1, "EOF"

    .line 247
    const/4 v2, 0x0

    .line 248
    const/4 v3, 0x0

    .line 249
    const/4 v4, 0x6

    .line 250
    const/4 v5, 0x0

    .line 251
    .line 252
    move-object/from16 v0, p0

    .line 253
    .line 254
    .line 255
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 256
    .line 257
    new-instance v0, Lw7/i;

    .line 258
    .line 259
    .line 260
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 261
    throw v0

    .line 262
    .line 263
    :cond_b
    :goto_3
    iput v9, v6, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 264
    .line 265
    if-eqz v10, :cond_c

    .line 266
    goto :goto_4

    .line 267
    .line 268
    :cond_c
    const-wide/high16 v0, -0x8000000000000000L

    .line 269
    .line 270
    cmp-long v0, v11, v0

    .line 271
    .line 272
    if-eqz v0, :cond_d

    .line 273
    neg-long v11, v11

    .line 274
    :goto_4
    return-wide v11

    .line 275
    .line 276
    :cond_d
    const-string v1, "Numeric value overflow"

    .line 277
    const/4 v2, 0x0

    .line 278
    const/4 v3, 0x0

    .line 279
    const/4 v4, 0x6

    .line 280
    const/4 v5, 0x0

    .line 281
    .line 282
    move-object/from16 v0, p0

    .line 283
    .line 284
    .line 285
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 286
    .line 287
    new-instance v0, Lw7/i;

    .line 288
    .line 289
    .line 290
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 291
    throw v0

    .line 292
    .line 293
    :cond_e
    const-string v1, "Expected numeric literal"

    .line 294
    const/4 v2, 0x0

    .line 295
    const/4 v3, 0x0

    .line 296
    const/4 v4, 0x6

    .line 297
    const/4 v5, 0x0

    .line 298
    .line 299
    move-object/from16 v0, p0

    .line 300
    .line 301
    .line 302
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 303
    .line 304
    new-instance v0, Lw7/i;

    .line 305
    .line 306
    .line 307
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 308
    throw v0

    .line 309
    .line 310
    :cond_f
    const-string v1, "EOF"

    .line 311
    const/4 v2, 0x0

    .line 312
    const/4 v3, 0x0

    .line 313
    const/4 v4, 0x6

    .line 314
    const/4 v5, 0x0

    .line 315
    .line 316
    move-object/from16 v0, p0

    .line 317
    .line 318
    .line 319
    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 320
    .line 321
    new-instance v0, Lw7/i;

    .line 322
    .line 323
    .line 324
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 325
    throw v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->peekedString:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;->K()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->k()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected final r(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 11
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    const/16 v2, 0x22

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0x5c

    .line 18
    const/4 v4, -0x1

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->c(II)I

    .line 24
    move-result p2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 28
    move-result v7

    .line 29
    .line 30
    if-eq v7, v4, :cond_0

    .line 31
    :goto_1
    move v1, v3

    .line 32
    move p2, v7

    .line 33
    move p3, p2

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_0
    const-string v6, "EOF"

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x4

    .line 39
    const/4 v10, 0x0

    .line 40
    move-object v5, p0

    .line 41
    .line 42
    .line 43
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 44
    .line 45
    new-instance p1, Lw7/i;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 55
    move-result v0

    .line 56
    .line 57
    if-lt p3, v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 64
    move-result v7

    .line 65
    .line 66
    if-eq v7, v4, :cond_2

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_2
    const-string v6, "EOF"

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x4

    .line 72
    const/4 v10, 0x0

    .line 73
    move-object v5, p0

    .line 74
    .line 75
    .line 76
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 77
    .line 78
    new-instance p1, Lw7/i;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 82
    throw p1

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_2
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_4
    if-nez v1, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->J(II)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    goto :goto_3

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/a;->u(II)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    :goto_3
    add-int/2addr p3, v3

    .line 100
    .line 101
    iput p3, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 102
    return-object p1
.end method

.method public final s()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->peekedString:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;->K()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->I()I

    .line 13
    move-result v3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ge v3, v0, :cond_7

    .line 24
    const/4 v0, -0x1

    .line 25
    .line 26
    if-eq v3, v0, :cond_7

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_1
    if-nez v1, :cond_6

    .line 49
    const/4 v1, 0x0

    .line 50
    move v4, v1

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    move-result v5

    .line 59
    .line 60
    .line 61
    invoke-static {v5}, Lkotlinx/serialization/json/internal/b;->a(C)B

    .line 62
    move-result v5

    .line 63
    .line 64
    if-nez v5, :cond_4

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 74
    move-result v5

    .line 75
    .line 76
    if-lt v3, v5, :cond_2

    .line 77
    .line 78
    iget v4, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4, v3}, Lkotlinx/serialization/json/internal/a;->e(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/a;->G(I)I

    .line 85
    move-result v4

    .line 86
    .line 87
    if-ne v4, v0, :cond_3

    .line 88
    .line 89
    iput v3, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v1, v1}, Lkotlinx/serialization/json/internal/a;->u(II)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    return-object v0

    .line 95
    :cond_3
    move v3, v4

    .line 96
    move v4, v2

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_4
    if-nez v4, :cond_5

    .line 100
    .line 101
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0, v3}, Lkotlinx/serialization/json/internal/a;->J(II)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_5
    iget v0, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/a;->u(II)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    :goto_1
    iput v3, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 115
    return-object v0

    .line 116
    .line 117
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    const-string v1, "Expected beginning of the string, but got "

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 133
    move-result v1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v5, 0x0

    .line 143
    const/4 v6, 0x6

    .line 144
    const/4 v7, 0x0

    .line 145
    move-object v2, p0

    .line 146
    .line 147
    .line 148
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 149
    .line 150
    new-instance v0, Lw7/i;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 154
    throw v0

    .line 155
    .line 156
    :cond_7
    const-string v2, "EOF"

    .line 157
    const/4 v4, 0x0

    .line 158
    const/4 v5, 0x4

    .line 159
    const/4 v6, 0x0

    .line 160
    move-object v1, p0

    .line 161
    .line 162
    .line 163
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 164
    .line 165
    new-instance v0, Lw7/i;

    .line 166
    .line 167
    .line 168
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 169
    throw v0
.end method

.method public final t()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "null"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;->O()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string v3, "Unexpected \'null\' value instead of string literal"

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x6

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, p0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 30
    .line 31
    new-instance v0, Lw7/i;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "JsonReader(source=\'"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "\', currentPosition="

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v1, 0x29

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public v()V
    .locals 0

    .line 1
    return-void
.end method

.method public final w()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "Expected EOF after parsing, but had "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget v2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, " instead"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x6

    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, p0

    .line 49
    .line 50
    .line 51
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 52
    .line 53
    new-instance v0, Lw7/i;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 57
    throw v0
.end method

.method public final x(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "message"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "hint"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p3, ""

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, " at path: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->path:Lkotlinx/serialization/json/internal/d0;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/d0;->a()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1, p3}, Lkotlinx/serialization/json/internal/b0;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/x;

    .line 73
    move-result-object p1

    .line 74
    throw p1
.end method

.method public final z(B)Ljava/lang/Void;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "quotation mark \'\"\'"

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ne p1, v1, :cond_1

    .line 10
    .line 11
    const-string p1, "comma \',\'"

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x5

    .line 14
    .line 15
    if-ne p1, v1, :cond_2

    .line 16
    .line 17
    const-string p1, "colon \':\'"

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v1, 0x6

    .line 20
    .line 21
    if-ne p1, v1, :cond_3

    .line 22
    .line 23
    const-string p1, "start of the object \'{\'"

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 v1, 0x7

    .line 26
    .line 27
    if-ne p1, v1, :cond_4

    .line 28
    .line 29
    const-string p1, "end of the object \'}\'"

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_4
    const/16 v1, 0x8

    .line 33
    .line 34
    if-ne p1, v1, :cond_5

    .line 35
    .line 36
    const-string p1, "start of the array \'[\'"

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_5
    const/16 v1, 0x9

    .line 40
    .line 41
    if-ne p1, v1, :cond_6

    .line 42
    .line 43
    const-string p1, "end of the array \']\'"

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_6
    const-string p1, "valid token"

    .line 47
    .line 48
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eq v1, v2, :cond_8

    .line 59
    .line 60
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 61
    .line 62
    if-gtz v1, :cond_7

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->C()Ljava/lang/CharSequence;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iget v2, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 70
    sub-int/2addr v2, v0

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_8
    :goto_1
    const-string v1, "EOF"

    .line 82
    .line 83
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v3, "Expected "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string p1, ", but had \'"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p1, "\' instead"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    iget p1, p0, Lkotlinx/serialization/json/internal/a;->currentPosition:I

    .line 114
    .line 115
    add-int/lit8 v5, p1, -0x1

    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v7, 0x4

    .line 118
    const/4 v8, 0x0

    .line 119
    move-object v3, p0

    .line 120
    .line 121
    .line 122
    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 123
    .line 124
    new-instance p1, Lw7/i;

    .line 125
    .line 126
    .line 127
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 128
    throw p1
.end method
