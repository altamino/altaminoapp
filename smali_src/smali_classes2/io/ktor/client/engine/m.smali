.class public final Lio/ktor/client/engine/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\nio/ktor/client/engine/UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation


# static fields
.field private static final DATE_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KTOR_DEFAULT_USER_AGENT:Ljava/lang/String; = "Ktor client"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/http/o;->k()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/ktor/http/o;->m()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lio/ktor/http/o;->q()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lio/ktor/http/o;->n()Ljava/lang/String;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lio/ktor/http/o;->p()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Lio/ktor/client/engine/m;->DATE_HEADERS:Ljava/util/Set;

    .line 33
    return-void
.end method

.method public static final synthetic a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/engine/m;->DATE_HEADERS:Ljava/util/Set;

    return-object v0
.end method

.method public static final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/coroutines/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lio/ktor/client/engine/j;->Companion:Lio/ktor/client/engine/j$a;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    check-cast p0, Lio/ktor/client/engine/j;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lio/ktor/client/engine/j;->c()Lkotlin/coroutines/g;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final c(Lio/ktor/http/k;Lk7/b;Le8/p;)V
    .locals 3
    .param p0    # Lio/ktor/http/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lk7/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/k;",
            "Lk7/b;",
            "Le8/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "requestHeaders"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "block"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Lio/ktor/client/engine/m$a;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lio/ktor/client/engine/m$a;-><init>(Lio/ktor/http/k;Lk7/b;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lio/ktor/client/utils/e;->a(Le8/l;)Lio/ktor/http/k;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v1, Lio/ktor/client/engine/m$b;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p2}, Lio/ktor/client/engine/m$b;-><init>(Le8/p;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lio/ktor/util/t;->d(Le8/p;)V

    .line 33
    .line 34
    sget-object v0, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lio/ktor/http/o;->w()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v1}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lk7/b;->c()Lio/ktor/http/k;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lio/ktor/http/o;->w()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v2}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lio/ktor/client/engine/m;->d()Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lio/ktor/http/o;->w()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    sget-object v2, Lio/ktor/client/engine/m;->KTOR_DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v1, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p1}, Lk7/b;->b()Lio/ktor/http/c;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lio/ktor/http/i;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    if-nez v1, :cond_2

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p1}, Lk7/b;->c()Lio/ktor/http/k;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v2}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    if-nez v1, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, v1}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-virtual {p1}, Lk7/b;->a()Ljava/lang/Long;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    if-nez v2, :cond_4

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {p1}, Lk7/b;->c()Lio/ktor/http/k;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lio/ktor/http/o;->g()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v2}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    if-nez v2, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lio/ktor/http/o;->g()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-interface {p0, p1}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    :cond_4
    if-eqz v1, :cond_5

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lio/ktor/http/o;->i()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    .line 149
    .line 150
    invoke-interface {p2, p0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    :cond_5
    if-eqz v2, :cond_6

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lio/ktor/http/o;->g()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    .line 158
    .line 159
    invoke-interface {p2, p0, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_6
    return-void
.end method

.method private static final d()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/ktor/util/r;->INSTANCE:Lio/ktor/util/r;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/util/r;->a()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method
