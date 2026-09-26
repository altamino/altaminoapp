.class public final Lcoil/intercept/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/intercept/b$a;


# instance fields
.field private final eventListener:Lcoil/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final index:I

.field private final initialRequest:Lcoil/request/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/intercept/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isPlaceholderCached:Z

.field private final request:Lcoil/request/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final size:Lcoil/size/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/request/h;Ljava/util/List;ILcoil/request/h;Lcoil/size/i;Lcoil/c;Z)V
    .locals 0
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcoil/size/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcoil/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/h;",
            "Ljava/util/List<",
            "+",
            "Lcoil/intercept/b;",
            ">;I",
            "Lcoil/request/h;",
            "Lcoil/size/i;",
            "Lcoil/c;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/intercept/c;->initialRequest:Lcoil/request/h;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/intercept/c;->interceptors:Ljava/util/List;

    .line 8
    .line 9
    iput p3, p0, Lcoil/intercept/c;->index:I

    .line 10
    .line 11
    iput-object p4, p0, Lcoil/intercept/c;->request:Lcoil/request/h;

    .line 12
    .line 13
    iput-object p5, p0, Lcoil/intercept/c;->size:Lcoil/size/i;

    .line 14
    .line 15
    iput-object p6, p0, Lcoil/intercept/c;->eventListener:Lcoil/c;

    .line 16
    .line 17
    iput-boolean p7, p0, Lcoil/intercept/c;->isPlaceholderCached:Z

    .line 18
    return-void
.end method

.method private final b(Lcoil/request/h;Lcoil/intercept/b;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/request/h;->l()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcoil/intercept/c;->initialRequest:Lcoil/request/h;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcoil/request/h;->l()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "Interceptor \'"

    .line 13
    .line 14
    if-ne v0, v1, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcoil/request/h;->m()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Lcoil/request/j;->INSTANCE:Lcoil/request/j;

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcoil/request/h;->M()Lf0/a;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcoil/intercept/c;->initialRequest:Lcoil/request/h;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcoil/request/h;->M()Lf0/a;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcoil/request/h;->z()Landroidx/lifecycle/Lifecycle;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v1, p0, Lcoil/intercept/c;->initialRequest:Lcoil/request/h;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcoil/request/h;->z()Landroidx/lifecycle/Lifecycle;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcoil/request/h;->K()Lcoil/size/j;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object v0, p0, Lcoil/intercept/c;->initialRequest:Lcoil/request/h;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcoil/request/h;->K()Lcoil/size/j;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-ne p1, v0, :cond_0

    .line 59
    return-void

    .line 60
    .line 61
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p2, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p2

    .line 90
    .line 91
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p2, "\' cannot modify the request\'s lifecycle."

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p2

    .line 120
    .line 121
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string p2, "\' cannot modify the request\'s target."

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p2

    .line 150
    .line 151
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string p2, "\' cannot set the request\'s data to null."

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p2

    .line 180
    .line 181
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string p2, "\' cannot modify the request\'s context."

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    move-result-object p1

    .line 206
    .line 207
    .line 208
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    throw p2
.end method

.method private final c(ILcoil/request/h;Lcoil/size/i;)Lcoil/intercept/c;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcoil/intercept/c;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/intercept/c;->initialRequest:Lcoil/request/h;

    .line 5
    .line 6
    iget-object v2, p0, Lcoil/intercept/c;->interceptors:Ljava/util/List;

    .line 7
    .line 8
    iget-object v6, p0, Lcoil/intercept/c;->eventListener:Lcoil/c;

    .line 9
    .line 10
    iget-boolean v7, p0, Lcoil/intercept/c;->isPlaceholderCached:Z

    .line 11
    move-object v0, v8

    .line 12
    move v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Lcoil/intercept/c;-><init>(Lcoil/request/h;Ljava/util/List;ILcoil/request/h;Lcoil/size/i;Lcoil/c;Z)V

    .line 18
    return-object v8
.end method

.method static synthetic d(Lcoil/intercept/c;ILcoil/request/h;Lcoil/size/i;ILjava/lang/Object;)Lcoil/intercept/c;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcoil/intercept/c;->index:I

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 9
    .line 10
    if-eqz p5, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcoil/intercept/c;->a()Lcoil/request/h;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 17
    .line 18
    if-eqz p4, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcoil/intercept/c;->getSize()Lcoil/size/i;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcoil/intercept/c;->c(ILcoil/request/h;Lcoil/size/i;)Lcoil/intercept/c;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method


# virtual methods
.method public a()Lcoil/request/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/intercept/c;->request:Lcoil/request/h;

    return-object v0
.end method

.method public final e()Lcoil/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/intercept/c;->eventListener:Lcoil/c;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/intercept/c;->isPlaceholderCached:Z

    return v0
.end method

.method public g(Lcoil/request/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/h;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/request/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lcoil/intercept/c$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lcoil/intercept/c$a;

    .line 8
    .line 9
    iget v1, v0, Lcoil/intercept/c$a;->label:I

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
    iput v1, v0, Lcoil/intercept/c$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcoil/intercept/c$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lcoil/intercept/c$a;-><init>(Lcoil/intercept/c;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lcoil/intercept/c$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcoil/intercept/c$a;->label:I

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
    iget-object p1, v0, Lcoil/intercept/c$a;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcoil/intercept/b;

    .line 42
    .line 43
    iget-object v0, v0, Lcoil/intercept/c$a;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcoil/intercept/c;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    iget p2, p0, Lcoil/intercept/c;->index:I

    .line 63
    .line 64
    if-lez p2, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcoil/intercept/c;->interceptors:Ljava/util/List;

    .line 67
    sub-int/2addr p2, v3

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    check-cast p2, Lcoil/intercept/b;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, p2}, Lcoil/intercept/c;->b(Lcoil/request/h;Lcoil/intercept/b;)V

    .line 77
    .line 78
    :cond_3
    iget-object p2, p0, Lcoil/intercept/c;->interceptors:Ljava/util/List;

    .line 79
    .line 80
    iget v2, p0, Lcoil/intercept/c;->index:I

    .line 81
    .line 82
    .line 83
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    check-cast p2, Lcoil/intercept/b;

    .line 87
    .line 88
    iget v2, p0, Lcoil/intercept/c;->index:I

    .line 89
    .line 90
    add-int/lit8 v5, v2, 0x1

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x4

    .line 93
    const/4 v9, 0x0

    .line 94
    move-object v4, p0

    .line 95
    move-object v6, p1

    .line 96
    .line 97
    .line 98
    invoke-static/range {v4 .. v9}, Lcoil/intercept/c;->d(Lcoil/intercept/c;ILcoil/request/h;Lcoil/size/i;ILjava/lang/Object;)Lcoil/intercept/c;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    iput-object p0, v0, Lcoil/intercept/c$a;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p2, v0, Lcoil/intercept/c$a;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput v3, v0, Lcoil/intercept/c$a;->label:I

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, p1, v0}, Lcoil/intercept/b;->a(Lcoil/intercept/b$a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    if-ne p1, v1, :cond_4

    .line 112
    return-object v1

    .line 113
    :cond_4
    move-object v0, p0

    .line 114
    move-object v10, p2

    .line 115
    move-object p2, p1

    .line 116
    move-object p1, v10

    .line 117
    .line 118
    :goto_1
    check-cast p2, Lcoil/request/i;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1, p1}, Lcoil/intercept/c;->b(Lcoil/request/h;Lcoil/intercept/b;)V

    .line 126
    return-object p2
.end method

.method public getSize()Lcoil/size/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcoil/intercept/c;->size:Lcoil/size/i;

    return-object v0
.end method
