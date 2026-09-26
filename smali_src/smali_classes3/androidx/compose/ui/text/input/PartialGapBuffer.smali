.class public final Landroidx/compose/ui/text/input/PartialGapBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/ui/text/InternalTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;
    }
.end annotation


# static fields
.field public static final BUF_SIZE:I = 0xff

.field public static final Companion:Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOWHERE:I = -0x1

.field public static final SURROUNDING_SIZE:I = 0x40


# instance fields
.field private bufEnd:I

.field private bufStart:I

.field private buffer:Landroidx/compose/ui/text/input/GapBuffer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/ui/text/input/PartialGapBuffer;->Companion:Landroidx/compose/ui/text/input/PartialGapBuffer$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "text"

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
    iput-object p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 11
    const/4 p1, -0x1

    .line 12
    .line 13
    iput p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 14
    .line 15
    iput p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    .line 16
    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 14
    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->e()I

    .line 26
    move-result v1

    .line 27
    .line 28
    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 29
    .line 30
    add-int v3, v1, v2

    .line 31
    .line 32
    if-ge p1, v3, :cond_2

    .line 33
    sub-int/2addr p1, v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/input/GapBuffer;->d(I)C

    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 41
    .line 42
    iget v3, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    .line 43
    sub-int/2addr v1, v3

    .line 44
    add-int/2addr v1, v2

    .line 45
    sub-int/2addr p1, v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public final b()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    .line 20
    .line 21
    iget v3, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 22
    sub-int/2addr v2, v3

    .line 23
    sub-int/2addr v1, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->e()I

    .line 27
    move-result v0

    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1
.end method

.method public final c(IILjava/lang/String;)V
    .locals 12
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    .line 15
    add-int/lit16 v0, v0, 0x80

    .line 16
    .line 17
    const/16 v1, 0xff

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result v0

    .line 22
    .line 23
    new-array v8, v0, [C

    .line 24
    .line 25
    const/16 v1, 0x40

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 29
    move-result v9

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 35
    move-result v2

    .line 36
    sub-int/2addr v2, p2

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result v1

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 43
    .line 44
    sub-int v10, p1, v9

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v8, v3, v10, p1}, Landroidx/compose/ui/text/input/GapBufferKt;->a(Ljava/lang/String;[CIII)V

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 51
    sub-int/2addr v0, v1

    .line 52
    .line 53
    add-int v11, p2, v1

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v8, v0, p2, v11}, Landroidx/compose/ui/text/input/GapBufferKt;->a(Ljava/lang/String;[CIII)V

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    .line 60
    const/16 v6, 0xc

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v1, p3

    .line 63
    move-object v2, v8

    .line 64
    move v3, v9

    .line 65
    .line 66
    .line 67
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/input/GapBufferKt;->c(Ljava/lang/String;[CIIIILjava/lang/Object;)V

    .line 68
    .line 69
    new-instance p1, Landroidx/compose/ui/text/input/GapBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 73
    move-result p2

    .line 74
    add-int/2addr v9, p2

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v8, v9, v0}, Landroidx/compose/ui/text/input/GapBuffer;-><init>([CII)V

    .line 78
    .line 79
    iput-object p1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    .line 80
    .line 81
    iput v10, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 82
    .line 83
    iput v11, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    .line 84
    return-void

    .line 85
    .line 86
    :cond_0
    iget v1, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 87
    .line 88
    sub-int v2, p1, v1

    .line 89
    .line 90
    sub-int v1, p2, v1

    .line 91
    .line 92
    if-ltz v2, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/GapBuffer;->e()I

    .line 96
    move-result v3

    .line 97
    .line 98
    if-le v1, v3, :cond_1

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v0, v2, v1, p3}, Landroidx/compose/ui/text/input/GapBuffer;->g(IILjava/lang/String;)V

    .line 103
    return-void

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/PartialGapBuffer;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iput-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .line 112
    iput-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    .line 113
    const/4 v0, -0x1

    .line 114
    .line 115
    iput v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 116
    .line 117
    iput v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/input/PartialGapBuffer;->c(IILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->buffer:Landroidx/compose/ui/text/input/GapBuffer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    iget v4, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufStart:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/input/GapBuffer;->a(Ljava/lang/StringBuilder;)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->text:Ljava/lang/String;

    .line 26
    .line 27
    iget v2, p0, Landroidx/compose/ui/text/input/PartialGapBuffer;->bufEnd:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    move-result v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "sb.toString()"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method
