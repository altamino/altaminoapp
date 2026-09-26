.class public final Lretrofit2/KotlinExtensions$await$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/KotlinExtensions;->await(Lretrofit2/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinExtensions.kt\nretrofit2/KotlinExtensions$await$2$2\n*L\n1#1,120:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/o;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/o;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:Lkotlinx/coroutines/o;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "call"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo p1, "t"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:Lkotlinx/coroutines/o;

    .line 13
    .line 14
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "call"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "response"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-class p2, Lretrofit2/Invocation;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlin/jvm/internal/t;->v()V

    .line 38
    .line 39
    :cond_0
    const-string p2, "call.request().tag(Invocation::class.java)!!"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast p1, Lretrofit2/Invocation;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lretrofit2/Invocation;->method()Ljava/lang/reflect/Method;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    new-instance p2, Lw7/j;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v1, "Response from "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "method"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    const-string v2, "method.declaringClass"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const/16 v1, 0x2e

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p1, " was null but response body type was declared as non-null"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p1}, Lw7/j;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    iget-object p1, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:Lkotlinx/coroutines/o;

    .line 108
    .line 109
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 110
    .line 111
    .line 112
    invoke-static {p2}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    .line 116
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_1
    iget-object p1, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:Lkotlinx/coroutines/o;

    .line 124
    .line 125
    .line 126
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_2
    iget-object p1, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:Lkotlinx/coroutines/o;

    .line 134
    .line 135
    new-instance v0, Lretrofit2/HttpException;

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    .line 139
    .line 140
    sget-object p2, Lw7/v;->Companion:Lw7/v$a;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    .line 147
    invoke-static {p2}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    .line 151
    invoke-interface {p1, p2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 152
    :goto_0
    return-void
.end method
