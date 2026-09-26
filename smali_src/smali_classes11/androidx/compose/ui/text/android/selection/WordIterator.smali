.class public final Landroidx/compose/ui/text/android/selection/WordIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/selection/WordIterator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final end:I

.field private final iterator:Ljava/text/BreakIterator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/text/android/selection/WordIterator;->Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILjava/util/Locale;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "charSequence"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    .line 11
    .line 12
    if-ltz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-gt p2, v0, :cond_1

    .line 19
    .line 20
    if-ltz p3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-gt p3, v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {p4}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 30
    move-result-object p4

    .line 31
    .line 32
    const-string v0, "getWordInstance(locale)"

    .line 33
    .line 34
    .line 35
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    iput-object p4, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 38
    .line 39
    add-int/lit8 v0, p2, -0x32

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 50
    move-result v0

    .line 51
    .line 52
    add-int/lit8 v1, p3, 0x32

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 59
    .line 60
    new-instance v0, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 67
    return-void

    .line 68
    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p2, "input end index is outside the CharSequence"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1

    .line 80
    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p2, "input start index is outside the CharSequence"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method

.method private final a(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 5
    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

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
    const-string v1, "Invalid offset: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p1, ". Valid range is ["

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget p1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, " , "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget p1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const/16 p1, 0x5d

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method private final b(IZ)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->j(I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 32
    move-result p1

    .line 33
    :cond_1
    :goto_0
    return p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_3
    const/4 p1, -0x1

    .line 48
    return p1
.end method

.method private final c(IZ)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->h(I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->j(I)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 32
    move-result p1

    .line 33
    :cond_1
    :goto_0
    return p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->j(I)Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    :cond_3
    const/4 p1, -0x1

    .line 48
    return p1
.end method

.method private final h(I)Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iget v2, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 7
    .line 8
    if-gt p1, v2, :cond_0

    .line 9
    .line 10
    if-gt v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    return v1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method private final j(I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 5
    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method private final l(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->k(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private final m(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->k(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->i(I)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method


# virtual methods
.method public final d(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->c(IZ)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final e(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/android/selection/WordIterator;->b(IZ)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final f(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 4
    :goto_0
    const/4 v0, -0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->m(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->o(I)I

    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return p1
.end method

.method public final g(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 4
    :goto_0
    const/4 v0, -0x1

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->l(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->n(I)I

    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return p1
.end method

.method public final i(I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 7
    .line 8
    if-gt p1, v1, :cond_0

    .line 9
    .line 10
    if-gt v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/ui/text/android/selection/WordIterator;->Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;->a(I)Z

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final k(I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->start:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->end:I

    .line 5
    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->charSequence:Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 14
    move-result p1

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/ui/text/android/selection/WordIterator;->Companion:Landroidx/compose/ui/text/android/selection/WordIterator$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator$Companion;->a(I)Z

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final n(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final o(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/selection/WordIterator;->a(I)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/android/selection/WordIterator;->iterator:Ljava/text/BreakIterator;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method
