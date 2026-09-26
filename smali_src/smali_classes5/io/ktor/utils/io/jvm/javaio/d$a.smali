.class public final Lio/ktor/utils/io/jvm/javaio/d$a;
.super Lio/ktor/utils/io/jvm/javaio/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/d;-><init>(Lkotlinx/coroutines/b2;Lio/ktor/utils/io/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1\n+ 2 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n*L\n1#1,316:1\n275#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1\n*L\n37#1:317,4\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/d;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/b2;Lio/ktor/utils/io/jvm/javaio/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/d$a;->this$0:Lio/ktor/utils/io/jvm/javaio/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/a;-><init>(Lkotlinx/coroutines/b2;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lio/ktor/utils/io/jvm/javaio/d$a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->label:I

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
    iput v1, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/jvm/javaio/d$a$a;-><init>(Lio/ktor/utils/io/jvm/javaio/d$a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->label:I

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
    .line 42
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Lio/ktor/utils/io/jvm/javaio/d$a;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    .line 58
    :cond_2
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lio/ktor/utils/io/jvm/javaio/a;

    .line 61
    .line 62
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lio/ktor/utils/io/jvm/javaio/d$a;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 72
    const/4 p1, 0x0

    .line 73
    move-object v2, p0

    .line 74
    .line 75
    :cond_4
    iput p1, v2, Lio/ktor/utils/io/jvm/javaio/a;->result:I

    .line 76
    .line 77
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->label:I

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v0}, Lio/ktor/utils/io/jvm/javaio/a;->c(Lio/ktor/utils/io/jvm/javaio/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    if-ne p1, v5, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 95
    .line 96
    :cond_5
    if-ne p1, v1, :cond_6

    .line 97
    return-object v1

    .line 98
    .line 99
    :cond_6
    :goto_1
    const-string v5, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    check-cast p1, [B

    .line 105
    .line 106
    iget-object v5, v2, Lio/ktor/utils/io/jvm/javaio/d$a;->this$0:Lio/ktor/utils/io/jvm/javaio/d;

    .line 107
    .line 108
    .line 109
    invoke-static {v5}, Lio/ktor/utils/io/jvm/javaio/d;->a(Lio/ktor/utils/io/jvm/javaio/d;)Lio/ktor/utils/io/g;

    .line 110
    move-result-object v5

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/a;->f()I

    .line 114
    move-result v6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/a;->e()I

    .line 118
    move-result v7

    .line 119
    .line 120
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$0:Ljava/lang/Object;

    .line 121
    const/4 v8, 0x0

    .line 122
    .line 123
    iput-object v8, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->L$1:Ljava/lang/Object;

    .line 124
    .line 125
    iput v3, v0, Lio/ktor/utils/io/jvm/javaio/d$a$a;->label:I

    .line 126
    .line 127
    .line 128
    invoke-interface {v5, p1, v6, v7, v0}, Lio/ktor/utils/io/g;->k([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    if-ne p1, v1, :cond_7

    .line 132
    return-object v1

    .line 133
    .line 134
    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 138
    move-result p1

    .line 139
    const/4 v5, -0x1

    .line 140
    .line 141
    if-ne p1, v5, :cond_4

    .line 142
    .line 143
    iget-object v0, v2, Lio/ktor/utils/io/jvm/javaio/d$a;->this$0:Lio/ktor/utils/io/jvm/javaio/d;

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/d;->b(Lio/ktor/utils/io/jvm/javaio/d;)Lkotlinx/coroutines/a0;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p1}, Lio/ktor/utils/io/jvm/javaio/a;->d(I)V

    .line 154
    .line 155
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 156
    return-object p1
.end method
