.class public final Landroidx/compose/ui/text/input/EditProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditProcessor.kt\nandroidx/compose/ui/text/input/EditProcessor\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,126:1\n32#2,6:127\n*S KotlinDebug\n*F\n+ 1 EditProcessor.kt\nandroidx/compose/ui/text/input/EditProcessor\n*L\n110#1:127,6\n*E\n"
.end annotation


# instance fields
.field private mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v6, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/text/AnnotatedStringKt;->d()Landroidx/compose/ui/text/AnnotatedString;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->a()J

    .line 15
    move-result-wide v2

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v0, v6

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    iput-object v6, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/ui/text/input/EditingBuffer;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 37
    move-result-wide v2

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/k;)V

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "editCommands"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/ui/text/input/EditCommand;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Landroidx/compose/ui/text/input/EditCommand;->a(Landroidx/compose/ui/text/input/EditingBuffer;)V

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->q()Landroidx/compose/ui/text/AnnotatedString;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->i()J

    .line 40
    move-result-wide v4

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->d()Landroidx/compose/ui/text/TextRange;

    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x0

    .line 48
    move-object v2, p1

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/k;)V

    .line 52
    .line 53
    iput-object p1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 54
    return-object p1
.end method

.method public final b(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextInputSession;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/TextInputSession;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Landroidx/compose/ui/text/TextRange;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/EditingBuffer;->d()Landroidx/compose/ui/text/TextRange;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    xor-int/2addr v0, v1

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    new-instance v2, Landroidx/compose/ui/text/input/EditingBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 48
    move-result-wide v5

    .line 49
    const/4 v7, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/k;)V

    .line 53
    .line 54
    iput-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 65
    move-result-wide v6

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/text/TextRange;->g(JJ)Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 81
    move-result v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->g()J

    .line 85
    move-result-wide v5

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 89
    move-result v5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->p(II)V

    .line 93
    move v8, v3

    .line 94
    move v3, v1

    .line 95
    move v1, v8

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v1, v3

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Landroidx/compose/ui/text/TextRange;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    if-nez v2, :cond_2

    .line 104
    .line 105
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/EditingBuffer;->a()V

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Landroidx/compose/ui/text/TextRange;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 117
    move-result-wide v4

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->h(J)Z

    .line 121
    move-result v2

    .line 122
    .line 123
    if-nez v2, :cond_3

    .line 124
    .line 125
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Landroidx/compose/ui/text/TextRange;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 133
    move-result-wide v4

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 137
    move-result v4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Landroidx/compose/ui/text/TextRange;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Landroidx/compose/ui/text/TextRange;->r()J

    .line 145
    move-result-wide v5

    .line 146
    .line 147
    .line 148
    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 149
    move-result v5

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->n(II)V

    .line 153
    .line 154
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 155
    .line 156
    if-nez v3, :cond_5

    .line 157
    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->a()V

    .line 164
    const/4 v2, 0x0

    .line 165
    .line 166
    const-wide/16 v3, 0x0

    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v6, 0x3

    .line 169
    const/4 v7, 0x0

    .line 170
    move-object v1, p1

    .line 171
    .line 172
    .line 173
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 177
    .line 178
    iput-object p1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 179
    .line 180
    if-eqz p2, :cond_6

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v0, p1}, Landroidx/compose/ui/text/input/TextInputSession;->d(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)Z

    .line 184
    :cond_6
    return-void
.end method

.method public final c()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object v0
.end method
