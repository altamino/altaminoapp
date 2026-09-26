.class public final Lio/ktor/client/plugins/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/k$a;,
        Lio/ktor/client/plugins/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpCallValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpCallValidator.kt\nio/ktor/client/plugins/HttpCallValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n1855#2,2:194\n*S KotlinDebug\n*F\n+ 1 HttpCallValidator.kt\nio/ktor/client/plugins/HttpCallValidator\n*L\n51#1:192,2\n56#1:194,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/plugins/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final key:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callExceptionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final expectSuccess:Z

.field private final responseValidators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/p<",
            "Lio/ktor/client/statement/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/k$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/k$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/k;->Companion:Lio/ktor/client/plugins/k$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "HttpResponseValidator"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/k;->key:Lio/ktor/util/a;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "+",
            "Le8/p<",
            "-",
            "Lio/ktor/client/statement/c;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/client/plugins/j;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "responseValidators"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "callExceptionHandlers"

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
    iput-object p1, p0, Lio/ktor/client/plugins/k;->responseValidators:Ljava/util/List;

    .line 16
    .line 17
    iput-object p2, p0, Lio/ktor/client/plugins/k;->callExceptionHandlers:Ljava/util/List;

    .line 18
    .line 19
    iput-boolean p3, p0, Lio/ktor/client/plugins/k;->expectSuccess:Z

    .line 20
    return-void
.end method

.method public static final synthetic a(Lio/ktor/client/plugins/k;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/ktor/client/plugins/k;->expectSuccess:Z

    .line 3
    return p0
.end method

.method public static final synthetic b()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/k;->key:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final synthetic c(Lio/ktor/client/plugins/k;Ljava/lang/Throwable;Li7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/k;->e(Ljava/lang/Throwable;Li7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lio/ktor/client/plugins/k;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/k;->f(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Ljava/lang/Throwable;Li7/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Li7/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lio/ktor/client/plugins/k$c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/plugins/k$c;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/plugins/k$c;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/client/plugins/k$c;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/plugins/k$c;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p3}, Lio/ktor/client/plugins/k$c;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lio/ktor/client/plugins/k$c;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/plugins/k$c;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_2
    :goto_1
    iget-object p1, v0, Lio/ktor/client/plugins/k$c;->L$2:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/util/Iterator;

    .line 54
    .line 55
    iget-object p2, v0, Lio/ktor/client/plugins/k$c;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Li7/c;

    .line 58
    .line 59
    iget-object v2, v0, Lio/ktor/client/plugins/k$c;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 65
    goto :goto_3

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lio/ktor/client/plugins/l;->d()Lorg/slf4j/a;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v5, "Processing exception "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v5, " for request "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-interface {p2}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-interface {p3, v2}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    iget-object p3, p0, Lio/ktor/client/plugins/k;->callExceptionHandlers:Ljava/util/List;

    .line 107
    .line 108
    check-cast p3, Ljava/lang/Iterable;

    .line 109
    .line 110
    .line 111
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object p3

    .line 113
    move-object v6, p2

    .line 114
    move-object p2, p1

    .line 115
    move-object p1, p3

    .line 116
    move-object p3, v6

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    check-cast v2, Lio/ktor/client/plugins/j;

    .line 129
    .line 130
    instance-of v5, v2, Lio/ktor/client/plugins/i;

    .line 131
    .line 132
    if-eqz v5, :cond_6

    .line 133
    .line 134
    check-cast v2, Lio/ktor/client/plugins/i;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Lio/ktor/client/plugins/i;->a()Le8/p;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    iput-object p2, v0, Lio/ktor/client/plugins/k$c;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object p3, v0, Lio/ktor/client/plugins/k$c;->L$1:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object p1, v0, Lio/ktor/client/plugins/k$c;->L$2:Ljava/lang/Object;

    .line 145
    .line 146
    iput v4, v0, Lio/ktor/client/plugins/k$c;->label:I

    .line 147
    .line 148
    .line 149
    invoke-interface {v2, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    if-ne v2, v1, :cond_5

    .line 153
    return-object v1

    .line 154
    :cond_5
    move-object v2, p2

    .line 155
    move-object p2, p3

    .line 156
    :goto_3
    move-object p3, p2

    .line 157
    move-object p2, v2

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_6
    instance-of v5, v2, Lio/ktor/client/plugins/b0;

    .line 161
    .line 162
    if-eqz v5, :cond_4

    .line 163
    .line 164
    check-cast v2, Lio/ktor/client/plugins/b0;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lio/ktor/client/plugins/b0;->a()Le8/q;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    iput-object p2, v0, Lio/ktor/client/plugins/k$c;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object p3, v0, Lio/ktor/client/plugins/k$c;->L$1:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object p1, v0, Lio/ktor/client/plugins/k$c;->L$2:Ljava/lang/Object;

    .line 175
    .line 176
    iput v3, v0, Lio/ktor/client/plugins/k$c;->label:I

    .line 177
    .line 178
    .line 179
    invoke-interface {v2, p2, p3, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    if-ne v2, v1, :cond_5

    .line 183
    return-object v1

    .line 184
    .line 185
    :cond_7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 186
    return-object p1
.end method

.method private final f(Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/statement/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/client/plugins/k$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/plugins/k$d;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/plugins/k$d;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/client/plugins/k$d;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/plugins/k$d;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/client/plugins/k$d;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/plugins/k$d;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/plugins/k$d;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lio/ktor/client/plugins/k$d;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/util/Iterator;

    .line 42
    .line 43
    iget-object v2, v0, Lio/ktor/client/plugins/k$d;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lio/ktor/client/statement/c;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    move-object p2, v2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lio/ktor/client/plugins/l;->d()Lorg/slf4j/a;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v4, "Validating response for request "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-interface {v4}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v2}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 98
    .line 99
    iget-object p2, p0, Lio/ktor/client/plugins/k;->responseValidators:Ljava/util/List;

    .line 100
    .line 101
    check-cast p2, Ljava/lang/Iterable;

    .line 102
    .line 103
    .line 104
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p2

    .line 106
    move-object v5, p2

    .line 107
    move-object p2, p1

    .line 108
    move-object p1, v5

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    check-cast v2, Le8/p;

    .line 121
    .line 122
    iput-object p2, v0, Lio/ktor/client/plugins/k$d;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p1, v0, Lio/ktor/client/plugins/k$d;->L$1:Ljava/lang/Object;

    .line 125
    .line 126
    iput v3, v0, Lio/ktor/client/plugins/k$d;->label:I

    .line 127
    .line 128
    .line 129
    invoke-interface {v2, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    if-ne v2, v1, :cond_3

    .line 133
    return-object v1

    .line 134
    .line 135
    :cond_4
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 136
    return-object p1
.end method
