.class public final Lio/ktor/http/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaderValueWithParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParametersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation


# static fields
.field private static final HeaderFieldValueSeparators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x15

    .line 3
    .line 4
    new-array v0, v0, [Ljava/lang/Character;

    .line 5
    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const/16 v1, 0x29

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    const/16 v1, 0x3c

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    const/16 v1, 0x3e

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    .line 40
    aput-object v1, v0, v2

    .line 41
    .line 42
    const/16 v1, 0x40

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x4

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    const/16 v1, 0x2c

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x5

    .line 57
    .line 58
    aput-object v1, v0, v2

    .line 59
    .line 60
    const/16 v1, 0x3b

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x6

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    const/16 v1, 0x3a

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x7

    .line 75
    .line 76
    aput-object v1, v0, v2

    .line 77
    .line 78
    const/16 v1, 0x5c

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const/16 v2, 0x8

    .line 85
    .line 86
    aput-object v1, v0, v2

    .line 87
    .line 88
    const/16 v1, 0x22

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    const/16 v2, 0x9

    .line 95
    .line 96
    aput-object v1, v0, v2

    .line 97
    .line 98
    const/16 v1, 0x2f

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    const/16 v3, 0xa

    .line 105
    .line 106
    aput-object v1, v0, v3

    .line 107
    .line 108
    const/16 v1, 0x5b

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    const/16 v4, 0xb

    .line 115
    .line 116
    aput-object v1, v0, v4

    .line 117
    .line 118
    const/16 v1, 0x5d

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    const/16 v4, 0xc

    .line 125
    .line 126
    aput-object v1, v0, v4

    .line 127
    .line 128
    const/16 v1, 0x3f

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    const/16 v4, 0xd

    .line 135
    .line 136
    aput-object v1, v0, v4

    .line 137
    .line 138
    const/16 v1, 0x3d

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    const/16 v5, 0xe

    .line 145
    .line 146
    aput-object v1, v0, v5

    .line 147
    .line 148
    const/16 v1, 0x7b

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    const/16 v5, 0xf

    .line 155
    .line 156
    aput-object v1, v0, v5

    .line 157
    .line 158
    const/16 v1, 0x7d

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    const/16 v5, 0x10

    .line 165
    .line 166
    aput-object v1, v0, v5

    .line 167
    .line 168
    const/16 v1, 0x20

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    const/16 v5, 0x11

    .line 175
    .line 176
    aput-object v1, v0, v5

    .line 177
    .line 178
    const/16 v1, 0x12

    .line 179
    .line 180
    .line 181
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    aput-object v2, v0, v1

    .line 185
    .line 186
    const/16 v1, 0x13

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    aput-object v2, v0, v1

    .line 193
    .line 194
    const/16 v1, 0x14

    .line 195
    .line 196
    .line 197
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    aput-object v2, v0, v1

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    sput-object v0, Lio/ktor/http/j;->HeaderFieldValueSeparators:Ljava/util/Set;

    .line 207
    return-void
.end method

.method public static final synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/http/j;->c(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(Ljava/lang/String;)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    return v2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lkotlin/text/k;->g1(Ljava/lang/CharSequence;)C

    .line 13
    move-result v0

    .line 14
    .line 15
    const/16 v1, 0x22

    .line 16
    .line 17
    if-ne v0, v1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/text/k;->h1(Ljava/lang/CharSequence;)C

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    move v5, v0

    .line 27
    .line 28
    :cond_2
    const/16 v4, 0x22

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x4

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v3, p0

    .line 33
    .line 34
    .line 35
    invoke-static/range {v3 .. v8}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 40
    move-result v3

    .line 41
    .line 42
    if-ne v1, v3, :cond_3

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_3
    add-int/lit8 v3, v1, -0x1

    .line 46
    move v4, v2

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v5

    .line 51
    .line 52
    const/16 v6, 0x5c

    .line 53
    .line 54
    if-ne v5, v6, :cond_4

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_4
    rem-int/lit8 v4, v4, 0x2

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    return v2

    .line 65
    .line 66
    :cond_5
    add-int/lit8 v5, v1, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 70
    move-result v1

    .line 71
    .line 72
    if-lt v5, v1, :cond_2

    .line 73
    :goto_1
    return v0

    .line 74
    :cond_6
    :goto_2
    return v2
.end method

.method private static final c(Ljava/lang/String;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Lio/ktor/http/j;->b(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    return v2

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    move v3, v2

    .line 22
    .line 23
    :goto_0
    if-ge v3, v0, :cond_3

    .line 24
    .line 25
    sget-object v4, Lio/ktor/http/j;->HeaderFieldValueSeparators:Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 29
    move-result v5

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    return v1

    .line 41
    .line 42
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return v2
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lio/ktor/http/j;->e(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    return-object p0
.end method

.method private static final e(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "\""

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v3

    .line 17
    .line 18
    const/16 v4, 0x5c

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    const-string v3, "\\\\"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    const/16 v4, 0xa

    .line 29
    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    const-string v3, "\\n"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    const/16 v4, 0xd

    .line 39
    .line 40
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    const-string v3, "\\r"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_2
    const/16 v4, 0x9

    .line 49
    .line 50
    if-ne v3, v4, :cond_3

    .line 51
    .line 52
    const-string v3, "\\t"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_3
    const/16 v4, 0x22

    .line 59
    .line 60
    if-ne v3, v4, :cond_4

    .line 61
    .line 62
    const-string v3, "\\\""

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    return-void
.end method
