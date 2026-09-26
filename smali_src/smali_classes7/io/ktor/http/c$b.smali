.class public final Lio/ktor/http/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n+ 2 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters$Companion\n*L\n1#1,318:1\n63#2,2:319\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n*L\n117#1:319,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/http/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/http/c;->d()Lio/ktor/http/c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lio/ktor/http/c;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lio/ktor/http/c$b;->a()Lio/ktor/http/c;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lio/ktor/http/i;->Companion:Lio/ktor/http/i$a;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lio/ktor/http/n;->b(Ljava/lang/String;)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lio/ktor/http/g;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lio/ktor/http/g;->b()Ljava/lang/String;

    .line 32
    move-result-object v7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lio/ktor/http/g;->a()Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const/16 v2, 0x2f

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x6

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v1, v7

    .line 44
    .line 45
    .line 46
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 47
    move-result v1

    .line 48
    const/4 v2, -0x1

    .line 49
    .line 50
    if-ne v1, v2, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-static {v7}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "*"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    sget-object p1, Lio/ktor/http/c;->Companion:Lio/ktor/http/c$b;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lio/ktor/http/c$b;->a()Lio/ktor/http/c;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    .line 75
    :cond_1
    new-instance v0, Lio/ktor/http/a;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p1}, Lio/ktor/http/a;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0

    .line 80
    :cond_2
    const/4 v2, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 101
    move-result v4

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    const-string v4, "this as java.lang.String).substring(startIndex)"

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    const/16 v4, 0x20

    .line 125
    const/4 v5, 0x2

    .line 126
    const/4 v6, 0x0

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v4, v2, v5, v6}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 130
    move-result v7

    .line 131
    .line 132
    if-nez v7, :cond_4

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 136
    move-result v4

    .line 137
    .line 138
    if-nez v4, :cond_4

    .line 139
    .line 140
    .line 141
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 142
    move-result v4

    .line 143
    .line 144
    if-eqz v4, :cond_3

    .line 145
    .line 146
    const/16 v4, 0x2f

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 150
    move-result v2

    .line 151
    .line 152
    if-nez v2, :cond_3

    .line 153
    .line 154
    new-instance p1, Lio/ktor/http/c;

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, v3, v1, v0}, Lio/ktor/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 158
    return-object p1

    .line 159
    .line 160
    :cond_3
    new-instance v0, Lio/ktor/http/a;

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, p1}, Lio/ktor/http/a;-><init>(Ljava/lang/String;)V

    .line 164
    throw v0

    .line 165
    .line 166
    :cond_4
    new-instance v0, Lio/ktor/http/a;

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, p1}, Lio/ktor/http/a;-><init>(Ljava/lang/String;)V

    .line 170
    throw v0

    .line 171
    .line 172
    :cond_5
    new-instance v0, Lio/ktor/http/a;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, p1}, Lio/ktor/http/a;-><init>(Ljava/lang/String;)V

    .line 176
    throw v0
.end method
