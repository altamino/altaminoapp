.class public final Lkotlinx/serialization/json/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,369:1\n1060#2,2:370\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n*L\n333#1:370,2\n*E\n"
.end annotation


# instance fields
.field private allowSpecialFloatingPointValues:Z

.field private allowStructuredMapKeys:Z

.field private classDiscriminator:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private coerceInputValues:Z

.field private encodeDefaults:Z

.field private explicitNulls:Z

.field private ignoreUnknownKeys:Z

.field private isLenient:Z

.field private prettyPrint:Z

.field private prettyPrintIndent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private serializersModule:Lkotlinx/serialization/modules/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useAlternativeNames:Z

.field private useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/a;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "json"

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
    .line 11
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->e()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->encodeDefaults:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->f()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->explicitNulls:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->g()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->ignoreUnknownKeys:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->l()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->isLenient:Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->b()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->allowStructuredMapKeys:Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->h()Z

    .line 66
    move-result v0

    .line 67
    .line 68
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->prettyPrint:Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->i()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iput-object v0, p0, Lkotlinx/serialization/json/c;->prettyPrintIndent:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->d()Z

    .line 86
    move-result v0

    .line 87
    .line 88
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->coerceInputValues:Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->k()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->useArrayPolymorphism:Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->c()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    iput-object v0, p0, Lkotlinx/serialization/json/c;->classDiscriminator:Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->a()Z

    .line 116
    move-result v0

    .line 117
    .line 118
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->allowSpecialFloatingPointValues:Z

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/e;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lkotlinx/serialization/json/e;->j()Z

    .line 126
    move-result v0

    .line 127
    .line 128
    iput-boolean v0, p0, Lkotlinx/serialization/json/c;->useAlternativeNames:Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lkotlinx/serialization/modules/c;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    iput-object p1, p0, Lkotlinx/serialization/json/c;->serializersModule:Lkotlinx/serialization/modules/c;

    .line 135
    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/json/e;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lkotlinx/serialization/json/c;->useArrayPolymorphism:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/json/c;->classDiscriminator:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v1, "type"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lkotlinx/serialization/json/c;->prettyPrint:Z

    .line 30
    .line 31
    const-string v1, "    "

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lkotlinx/serialization/json/c;->prettyPrintIndent:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    goto :goto_3

    .line 43
    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v1, "Indent should not be specified when default printing mode is used"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/c;->prettyPrintIndent:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    iget-object v0, p0, Lkotlinx/serialization/json/c;->prettyPrintIndent:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 69
    move-result v2

    .line 70
    .line 71
    if-ge v1, v2, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 75
    move-result v2

    .line 76
    .line 77
    const/16 v3, 0x20

    .line 78
    .line 79
    if-eq v2, v3, :cond_5

    .line 80
    .line 81
    const/16 v3, 0x9

    .line 82
    .line 83
    if-eq v2, v3, :cond_5

    .line 84
    .line 85
    const/16 v3, 0xd

    .line 86
    .line 87
    if-eq v2, v3, :cond_5

    .line 88
    .line 89
    const/16 v3, 0xa

    .line 90
    .line 91
    if-ne v2, v3, :cond_4

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v1, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget-object v1, p0, Lkotlinx/serialization/json/c;->prettyPrintIndent:Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw v1

    .line 122
    .line 123
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_6
    :goto_3
    new-instance v0, Lkotlinx/serialization/json/e;

    .line 127
    .line 128
    iget-boolean v3, p0, Lkotlinx/serialization/json/c;->encodeDefaults:Z

    .line 129
    .line 130
    iget-boolean v4, p0, Lkotlinx/serialization/json/c;->ignoreUnknownKeys:Z

    .line 131
    .line 132
    iget-boolean v5, p0, Lkotlinx/serialization/json/c;->isLenient:Z

    .line 133
    .line 134
    iget-boolean v6, p0, Lkotlinx/serialization/json/c;->allowStructuredMapKeys:Z

    .line 135
    .line 136
    iget-boolean v7, p0, Lkotlinx/serialization/json/c;->prettyPrint:Z

    .line 137
    .line 138
    iget-boolean v8, p0, Lkotlinx/serialization/json/c;->explicitNulls:Z

    .line 139
    .line 140
    iget-object v9, p0, Lkotlinx/serialization/json/c;->prettyPrintIndent:Ljava/lang/String;

    .line 141
    .line 142
    iget-boolean v10, p0, Lkotlinx/serialization/json/c;->coerceInputValues:Z

    .line 143
    .line 144
    iget-boolean v11, p0, Lkotlinx/serialization/json/c;->useArrayPolymorphism:Z

    .line 145
    .line 146
    iget-object v12, p0, Lkotlinx/serialization/json/c;->classDiscriminator:Ljava/lang/String;

    .line 147
    .line 148
    iget-boolean v13, p0, Lkotlinx/serialization/json/c;->allowSpecialFloatingPointValues:Z

    .line 149
    .line 150
    iget-boolean v14, p0, Lkotlinx/serialization/json/c;->useAlternativeNames:Z

    .line 151
    move-object v2, v0

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v2 .. v14}, Lkotlinx/serialization/json/e;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 155
    return-object v0
.end method

.method public final b()Lkotlinx/serialization/modules/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/c;->serializersModule:Lkotlinx/serialization/modules/c;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->allowStructuredMapKeys:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->encodeDefaults:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->explicitNulls:Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->ignoreUnknownKeys:Z

    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/c;->isLenient:Z

    return-void
.end method
