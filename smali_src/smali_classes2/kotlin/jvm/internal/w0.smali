.class public final Lkotlin/jvm/internal/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/w0$a;,
        Lkotlin/jvm/internal/w0$b;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/w0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_MARKED_NULLABLE:I = 0x1

.field public static final IS_MUTABLE_COLLECTION_TYPE:I = 0x2

.field public static final IS_NOTHING_TYPE:I = 0x4


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final classifier:Lkotlin/reflect/KClassifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final flags:I

.field private final platformTypeUpperBound:Lkotlin/reflect/KType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/w0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/w0$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlin/jvm/internal/w0;->Companion:Lkotlin/jvm/internal/w0$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClassifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/reflect/KType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;",
            "Lkotlin/reflect/KType;",
            "I)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/w0;->classifier:Lkotlin/reflect/KClassifier;

    iput-object p2, p0, Lkotlin/jvm/internal/w0;->arguments:Ljava/util/List;

    iput-object p3, p0, Lkotlin/jvm/internal/w0;->platformTypeUpperBound:Lkotlin/reflect/KType;

    iput p4, p0, Lkotlin/jvm/internal/w0;->flags:I

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClassifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lkotlin/jvm/internal/w0;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/jvm/internal/w0;Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/w0;->c(Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c(Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "*"

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    instance-of v1, v0, Lkotlin/jvm/internal/w0;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast v0, Lkotlin/jvm/internal/w0;

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    const/4 v1, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/w0;->d(Z)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getVariance()Lkotlin/reflect/KVariance;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    sget-object v2, Lkotlin/jvm/internal/w0$b;->$EnumSwitchMapping$0:[I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result p1

    .line 49
    .line 50
    aget p1, v2, p1

    .line 51
    .line 52
    if-eq p1, v1, :cond_6

    .line 53
    const/4 v1, 0x2

    .line 54
    .line 55
    if-eq p1, v1, :cond_5

    .line 56
    const/4 v1, 0x3

    .line 57
    .line 58
    if-ne p1, v1, :cond_4

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v1, "out "

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_4
    new-instance p1, Lw7/s;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 82
    throw p1

    .line 83
    .line 84
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v1, "in "

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    :cond_6
    :goto_1
    return-object v0
.end method

.method private final d(Z)Ljava/lang/String;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlin/reflect/KClass;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lkotlin/reflect/KClass;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ld8/a;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    :cond_1
    if-nez v2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_2
    iget v0, p0, Lkotlin/jvm/internal/w0;->flags:I

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0x4

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const-string p1, "kotlin.Nothing"

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2}, Lkotlin/jvm/internal/w0;->e(Ljava/lang/Class;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_4
    if-eqz p1, :cond_5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KClass<*>"

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    check-cast p1, Lkotlin/reflect/KClass;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ld8/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getArguments()Ljava/util/List;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 90
    move-result v0

    .line 91
    .line 92
    const-string v1, ""

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    move-object v0, v1

    .line 96
    goto :goto_2

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getArguments()Ljava/util/List;

    .line 100
    move-result-object v0

    .line 101
    move-object v2, v0

    .line 102
    .line 103
    check-cast v2, Ljava/lang/Iterable;

    .line 104
    .line 105
    const-string v3, ", "

    .line 106
    .line 107
    const-string v4, "<"

    .line 108
    .line 109
    const-string v5, ">"

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x0

    .line 112
    .line 113
    new-instance v8, Lkotlin/jvm/internal/w0$c;

    .line 114
    .line 115
    .line 116
    invoke-direct {v8, p0}, Lkotlin/jvm/internal/w0$c;-><init>(Lkotlin/jvm/internal/w0;)V

    .line 117
    .line 118
    const/16 v9, 0x18

    .line 119
    const/4 v10, 0x0

    .line 120
    .line 121
    .line 122
    invoke-static/range {v2 .. v10}, Lkotlin/collections/t;->t0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->isMarkedNullable()Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-eqz v2, :cond_7

    .line 130
    .line 131
    const-string v1, "?"

    .line 132
    .line 133
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    iget-object v0, p0, Lkotlin/jvm/internal/w0;->platformTypeUpperBound:Lkotlin/reflect/KType;

    .line 152
    .line 153
    instance-of v1, v0, Lkotlin/jvm/internal/w0;

    .line 154
    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    check-cast v0, Lkotlin/jvm/internal/w0;

    .line 158
    const/4 v1, 0x1

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/w0;->d(Z)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    move-result v1

    .line 167
    .line 168
    if-eqz v1, :cond_8

    .line 169
    goto :goto_3

    .line 170
    .line 171
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const/16 v2, 0x3f

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    move-result v1

    .line 191
    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const/16 p1, 0x21

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    goto :goto_3

    .line 211
    .line 212
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    const/16 v2, 0x28

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string p1, ".."

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const/16 p1, 0x29

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    :cond_a
    :goto_3
    return-object p1
.end method

.method private final e(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, [Z

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "kotlin.BooleanArray"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-class v0, [C

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p1, "kotlin.CharArray"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const-class v0, [B

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string p1, "kotlin.ByteArray"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    const-class v0, [S

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-string p1, "kotlin.ShortArray"

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    const-class v0, [I

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const-string p1, "kotlin.IntArray"

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    const-class v0, [F

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    const-string p1, "kotlin.FloatArray"

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_5
    const-class v0, [J

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    const-string p1, "kotlin.LongArray"

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_6
    const-class v0, [D

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    const-string p1, "kotlin.DoubleArray"

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_7
    const-string p1, "kotlin.Array"

    .line 91
    :goto_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lkotlin/jvm/internal/w0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast p1, Lkotlin/jvm/internal/w0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lkotlin/jvm/internal/w0;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getArguments()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lkotlin/jvm/internal/w0;->getArguments()Ljava/util/List;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lkotlin/jvm/internal/w0;->platformTypeUpperBound:Lkotlin/reflect/KType;

    .line 37
    .line 38
    iget-object v1, p1, Lkotlin/jvm/internal/w0;->platformTypeUpperBound:Lkotlin/reflect/KType;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget v0, p0, Lkotlin/jvm/internal/w0;->flags:I

    .line 47
    .line 48
    iget p1, p1, Lkotlin/jvm/internal/w0;->flags:I

    .line 49
    .line 50
    if-ne v0, p1, :cond_0

    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    return p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/w0;->arguments:Ljava/util/List;

    return-object v0
.end method

.method public getClassifier()Lkotlin/reflect/KClassifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/w0;->classifier:Lkotlin/reflect/KClassifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getClassifier()Lkotlin/reflect/KClassifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlin/jvm/internal/w0;->getArguments()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v1, p0, Lkotlin/jvm/internal/w0;->flags:I

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public isMarkedNullable()Z
    .locals 2

    iget v0, p0, Lkotlin/jvm/internal/w0;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/w0;->d(Z)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, " (Kotlin reflection is not available)"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
