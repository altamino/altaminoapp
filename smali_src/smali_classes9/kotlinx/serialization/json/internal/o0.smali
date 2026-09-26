.class public final Lkotlinx/serialization/json/internal/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonTreeReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,118:1\n26#1,24:119\n26#1,24:143\n463#2,3:167\n*S KotlinDebug\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n*L\n18#1:119,24\n23#1:143,24\n62#1:167,3\n*E\n"
.end annotation


# instance fields
.field private final isLenient:Z

.field private final lexer:Lkotlinx/serialization/json/internal/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private stackDepth:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/e;Lkotlinx/serialization/json/internal/a;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "configuration"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "lexer"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p2, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lkotlinx/serialization/json/e;->l()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/o0;->isLenient:Z

    .line 22
    return-void
.end method

.method public static final synthetic a(Lkotlinx/serialization/json/internal/o0;)Lkotlinx/serialization/json/internal/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/serialization/json/internal/o0;)Lkotlinx/serialization/json/JsonElement;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/o0;->f()Lkotlinx/serialization/json/JsonElement;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lkotlinx/serialization/json/internal/o0;Lw7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/o0;->h(Lw7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lkotlinx/serialization/json/internal/o0;Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/o0;->j(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f()Lkotlinx/serialization/json/JsonElement;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x4

    .line 14
    .line 15
    if-eq v1, v2, :cond_6

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/a;->f()Z

    .line 26
    move-result v3

    .line 27
    .line 28
    const/16 v4, 0x9

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/o0;->e()Lkotlinx/serialization/json/JsonElement;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eq v0, v2, :cond_0

    .line 46
    .line 47
    iget-object v5, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 48
    .line 49
    if-ne v0, v4, :cond_1

    .line 50
    const/4 v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {v5}, Lkotlinx/serialization/json/internal/a;->a(Lkotlinx/serialization/json/internal/a;)I

    .line 56
    move-result v7

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    const-string v6, "Expected end of the array or comma"

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x4

    .line 64
    const/4 v10, 0x0

    .line 65
    .line 66
    .line 67
    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 68
    .line 69
    new-instance v0, Lw7/i;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 73
    throw v0

    .line 74
    .line 75
    :cond_3
    const/16 v3, 0x8

    .line 76
    .line 77
    if-ne v0, v3, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_4
    if-eq v0, v2, :cond_5

    .line 86
    .line 87
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonArray;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    .line 91
    return-object v0

    .line 92
    .line 93
    :cond_5
    iget-object v2, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 94
    .line 95
    const-string v3, "Unexpected trailing comma"

    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x6

    .line 99
    const/4 v7, 0x0

    .line 100
    .line 101
    .line 102
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 103
    .line 104
    new-instance v0, Lw7/i;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 108
    throw v0

    .line 109
    .line 110
    :cond_6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 111
    .line 112
    const-string v2, "Unexpected leading comma"

    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x6

    .line 116
    const/4 v6, 0x0

    .line 117
    .line 118
    .line 119
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 120
    .line 121
    new-instance v0, Lw7/i;

    .line 122
    .line 123
    .line 124
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 125
    throw v0
.end method

.method private final g()Lkotlinx/serialization/json/JsonElement;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lw7/a;

    .line 3
    .line 4
    new-instance v1, Lkotlinx/serialization/json/internal/o0$a;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/o0$a;-><init>(Lkotlinx/serialization/json/internal/o0;Lkotlin/coroutines/d;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lw7/a;-><init>(Le8/q;)V

    .line 12
    .line 13
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lw7/b;->b(Lw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 20
    return-object v0
.end method

.method private final h(Lw7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/c<",
            "Lw7/l0;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    instance-of v2, v1, Lkotlinx/serialization/json/internal/o0$b;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    move-object v2, v1

    .line 10
    .line 11
    check-cast v2, Lkotlinx/serialization/json/internal/o0$b;

    .line 12
    .line 13
    iget v3, v2, Lkotlinx/serialization/json/internal/o0$b;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    sub-int/2addr v3, v4

    .line 21
    .line 22
    iput v3, v2, Lkotlinx/serialization/json/internal/o0$b;->label:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v2, Lkotlinx/serialization/json/internal/o0$b;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v0, v1}, Lkotlinx/serialization/json/internal/o0$b;-><init>(Lkotlinx/serialization/json/internal/o0;Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    :goto_0
    iget-object v1, v2, Lkotlinx/serialization/json/internal/o0$b;->result:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget v4, v2, Lkotlinx/serialization/json/internal/o0$b;->label:I

    .line 37
    const/4 v5, 0x7

    .line 38
    const/4 v6, 0x6

    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x4

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    if-ne v4, v7, :cond_1

    .line 45
    .line 46
    iget-object v4, v2, Lkotlinx/serialization/json/internal/o0$b;->L$3:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v9, v2, Lkotlinx/serialization/json/internal/o0$b;->L$2:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v9, Ljava/util/LinkedHashMap;

    .line 53
    .line 54
    iget-object v10, v2, Lkotlinx/serialization/json/internal/o0$b;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v10, Lkotlinx/serialization/json/internal/o0;

    .line 57
    .line 58
    iget-object v11, v2, Lkotlinx/serialization/json/internal/o0$b;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v11, Lw7/c;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    move-object/from16 v18, v3

    .line 66
    move-object v3, v2

    .line 67
    .line 68
    move-object/from16 v2, v18

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v1

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    iget-object v1, v0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v6}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 86
    move-result v1

    .line 87
    .line 88
    iget-object v4, v0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 92
    move-result v4

    .line 93
    .line 94
    if-eq v4, v8, :cond_a

    .line 95
    .line 96
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    .line 99
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 100
    move-object v10, v0

    .line 101
    move-object v9, v4

    .line 102
    move-object v4, v3

    .line 103
    move-object v3, v2

    .line 104
    move v2, v1

    .line 105
    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    :goto_1
    iget-object v11, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Lkotlinx/serialization/json/internal/a;->f()Z

    .line 112
    move-result v11

    .line 113
    .line 114
    if-eqz v11, :cond_7

    .line 115
    .line 116
    iget-boolean v2, v10, Lkotlinx/serialization/json/internal/o0;->isLenient:Z

    .line 117
    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    iget-object v2, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_3
    iget-object v2, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    :goto_2
    iget-object v11, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 134
    const/4 v12, 0x5

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v12}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 138
    .line 139
    sget-object v11, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 140
    .line 141
    iput-object v1, v3, Lkotlinx/serialization/json/internal/o0$b;->L$0:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v10, v3, Lkotlinx/serialization/json/internal/o0$b;->L$1:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v9, v3, Lkotlinx/serialization/json/internal/o0$b;->L$2:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object v2, v3, Lkotlinx/serialization/json/internal/o0$b;->L$3:Ljava/lang/Object;

    .line 148
    .line 149
    iput v7, v3, Lkotlinx/serialization/json/internal/o0$b;->label:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v11, v3}, Lw7/c;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 153
    move-result-object v11

    .line 154
    .line 155
    if-ne v11, v4, :cond_4

    .line 156
    return-object v4

    .line 157
    .line 158
    :cond_4
    move-object/from16 v18, v11

    .line 159
    move-object v11, v1

    .line 160
    .line 161
    move-object/from16 v1, v18

    .line 162
    .line 163
    move-object/from16 v19, v4

    .line 164
    move-object v4, v2

    .line 165
    .line 166
    move-object/from16 v2, v19

    .line 167
    .line 168
    :goto_3
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 169
    .line 170
    .line 171
    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    iget-object v1, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 177
    move-result v1

    .line 178
    .line 179
    if-eq v1, v8, :cond_6

    .line 180
    .line 181
    if-ne v1, v5, :cond_5

    .line 182
    move v2, v1

    .line 183
    goto :goto_4

    .line 184
    .line 185
    :cond_5
    iget-object v12, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 186
    .line 187
    const-string v13, "Expected end of the object or comma"

    .line 188
    const/4 v14, 0x0

    .line 189
    const/4 v15, 0x0

    .line 190
    .line 191
    const/16 v16, 0x6

    .line 192
    .line 193
    const/16 v17, 0x0

    .line 194
    .line 195
    .line 196
    invoke-static/range {v12 .. v17}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 197
    .line 198
    new-instance v1, Lw7/i;

    .line 199
    .line 200
    .line 201
    invoke-direct {v1}, Lw7/i;-><init>()V

    .line 202
    throw v1

    .line 203
    :cond_6
    move-object v4, v2

    .line 204
    move v2, v1

    .line 205
    move-object v1, v11

    .line 206
    goto :goto_1

    .line 207
    .line 208
    :cond_7
    :goto_4
    if-ne v2, v6, :cond_8

    .line 209
    .line 210
    iget-object v1, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v5}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 214
    goto :goto_5

    .line 215
    .line 216
    :cond_8
    if-eq v2, v8, :cond_9

    .line 217
    .line 218
    :goto_5
    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    .line 219
    .line 220
    .line 221
    invoke-direct {v1, v9}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 222
    return-object v1

    .line 223
    .line 224
    :cond_9
    iget-object v2, v10, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 225
    .line 226
    const-string v3, "Unexpected trailing comma"

    .line 227
    const/4 v4, 0x0

    .line 228
    const/4 v5, 0x0

    .line 229
    const/4 v6, 0x6

    .line 230
    const/4 v7, 0x0

    .line 231
    .line 232
    .line 233
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 234
    .line 235
    new-instance v1, Lw7/i;

    .line 236
    .line 237
    .line 238
    invoke-direct {v1}, Lw7/i;-><init>()V

    .line 239
    throw v1

    .line 240
    .line 241
    :cond_a
    iget-object v2, v0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 242
    .line 243
    const-string v3, "Unexpected leading comma"

    .line 244
    const/4 v4, 0x0

    .line 245
    const/4 v5, 0x0

    .line 246
    const/4 v6, 0x6

    .line 247
    const/4 v7, 0x0

    .line 248
    .line 249
    .line 250
    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 251
    .line 252
    new-instance v1, Lw7/i;

    .line 253
    .line 254
    .line 255
    invoke-direct {v1}, Lw7/i;-><init>()V

    .line 256
    throw v1
.end method

.method private final i()Lkotlinx/serialization/json/JsonElement;
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v2, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x4

    .line 15
    .line 16
    if-eq v2, v3, :cond_6

    .line 17
    .line 18
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/a;->f()Z

    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x7

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/o0;->isLenient:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    :goto_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 50
    const/4 v6, 0x5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v6}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/o0;->e()Lkotlinx/serialization/json/JsonElement;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->m()B

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eq v0, v3, :cond_0

    .line 69
    .line 70
    if-ne v0, v5, :cond_2

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_2
    iget-object v6, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 74
    .line 75
    const-string v7, "Expected end of the object or comma"

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v10, 0x6

    .line 79
    const/4 v11, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 83
    .line 84
    new-instance v0, Lw7/i;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 88
    throw v0

    .line 89
    .line 90
    :cond_3
    :goto_1
    if-ne v0, v1, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/internal/a;->n(B)B

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_4
    if-eq v0, v3, :cond_5

    .line 99
    .line 100
    :goto_2
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 104
    return-object v0

    .line 105
    .line 106
    :cond_5
    iget-object v3, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 107
    .line 108
    const-string v4, "Unexpected trailing comma"

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v7, 0x6

    .line 112
    const/4 v8, 0x0

    .line 113
    .line 114
    .line 115
    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 116
    .line 117
    new-instance v0, Lw7/i;

    .line 118
    .line 119
    .line 120
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 121
    throw v0

    .line 122
    .line 123
    :cond_6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 124
    .line 125
    const-string v2, "Unexpected leading comma"

    .line 126
    const/4 v3, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x6

    .line 129
    const/4 v6, 0x0

    .line 130
    .line 131
    .line 132
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 133
    .line 134
    new-instance v0, Lw7/i;

    .line 135
    .line 136
    .line 137
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 138
    throw v0
.end method

.method private final j(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/o0;->isLenient:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->s()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    :goto_1
    if-nez p1, :cond_2

    .line 23
    .line 24
    const-string v1, "null"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    sget-object p1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_2
    new-instance v1, Lkotlinx/serialization/json/n;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v0, p1}, Lkotlinx/serialization/json/n;-><init>(Ljava/lang/Object;Z)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public final e()Lkotlinx/serialization/json/JsonElement;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->E()B

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/o0;->j(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/o0;->j(Z)Lkotlinx/serialization/json/JsonPrimitive;

    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x6

    .line 24
    .line 25
    if-ne v0, v2, :cond_3

    .line 26
    .line 27
    iget v0, p0, Lkotlinx/serialization/json/internal/o0;->stackDepth:I

    .line 28
    add-int/2addr v0, v1

    .line 29
    .line 30
    iput v0, p0, Lkotlinx/serialization/json/internal/o0;->stackDepth:I

    .line 31
    .line 32
    const/16 v1, 0xc8

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/o0;->g()Lkotlinx/serialization/json/JsonElement;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/o0;->i()Lkotlinx/serialization/json/JsonElement;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/o0;->stackDepth:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    iput v1, p0, Lkotlinx/serialization/json/internal/o0;->stackDepth:I

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    const/16 v1, 0x8

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/o0;->f()Lkotlinx/serialization/json/JsonElement;

    .line 58
    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 60
    .line 61
    :cond_4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/o0;->lexer:Lkotlinx/serialization/json/internal/a;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v3, "Cannot begin reading element, unexpected token: "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x6

    .line 82
    const/4 v6, 0x0

    .line 83
    .line 84
    .line 85
    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/a;->y(Lkotlinx/serialization/json/internal/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 86
    .line 87
    new-instance v0, Lw7/i;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 91
    throw v0
.end method
