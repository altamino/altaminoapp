.class public final Landroidx/compose/ui/text/input/SetComposingTextCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# instance fields
.field private final annotatedString:Landroidx/compose/ui/text/AnnotatedString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final newCursorPosition:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;I)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "annotatedString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iput p2, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    invoke-direct {p0, v0, p2}, Landroidx/compose/ui/text/input/SetComposingTextCommand;-><init>(Landroidx/compose/ui/text/AnnotatedString;I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/text/input/EditingBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "buffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->l()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->f()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->f()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->e()I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v3}, Landroidx/compose/ui/text/input/EditingBuffer;->m(IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    move-result v1

    .line 39
    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 48
    move-result v1

    .line 49
    add-int/2addr v1, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->n(II)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->k()I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->j()I

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1, v2, v3}, Landroidx/compose/ui/text/input/EditingBuffer;->m(IILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 80
    move-result v1

    .line 81
    .line 82
    if-lez v1, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 90
    move-result v1

    .line 91
    add-int/2addr v1, v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->n(II)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->g()I

    .line 98
    move-result v0

    .line 99
    .line 100
    iget v1, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    .line 101
    .line 102
    if-lez v1, :cond_2

    .line 103
    add-int/2addr v0, v1

    .line 104
    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    add-int/2addr v0, v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 115
    move-result v1

    .line 116
    sub-int/2addr v0, v1

    .line 117
    :goto_1
    const/4 v1, 0x0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->h()I

    .line 121
    move-result v2

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1, v2}, Lj8/m;->n(III)I

    .line 125
    move-result v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/input/EditingBuffer;->o(I)V

    .line 129
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    return v2

    .line 28
    .line 29
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    .line 30
    .line 31
    iget p1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    .line 32
    .line 33
    if-eq v1, p1, :cond_3

    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
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
    const-string v1, "SetComposingTextCommand(text=\'"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->b()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "\', newCursorPosition="

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget v1, p0, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

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
