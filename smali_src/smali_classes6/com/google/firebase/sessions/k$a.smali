.class final Lcom/google/firebase/sessions/k$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/k;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/sessions/settings/f;Lkotlin/coroutines/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseSessions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseSessions.kt\ncom/google/firebase/sessions/FirebaseSessions$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n2620#2,3:82\n*S KotlinDebug\n*F\n+ 1 FirebaseSessions.kt\ncom/google/firebase/sessions/FirebaseSessions$1\n*L\n45#1:82,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.google.firebase.sessions.FirebaseSessions$1"
    f = "FirebaseSessions.kt"
    l = {
        0x2c,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $backgroundDispatcher:Lkotlin/coroutines/g;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/k;Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/k;",
            "Lkotlin/coroutines/g;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/google/firebase/sessions/k$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/k$a;->this$0:Lcom/google/firebase/sessions/k;

    iput-object p2, p0, Lcom/google/firebase/sessions/k$a;->$backgroundDispatcher:Lkotlin/coroutines/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/google/firebase/sessions/k$a;

    iget-object v0, p0, Lcom/google/firebase/sessions/k$a;->this$0:Lcom/google/firebase/sessions/k;

    iget-object v1, p0, Lcom/google/firebase/sessions/k$a;->$backgroundDispatcher:Lkotlin/coroutines/g;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/k$a;-><init>(Lcom/google/firebase/sessions/k;Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/k$a;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/k$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/k$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/firebase/sessions/k$a;->label:I

    .line 7
    .line 8
    const-string v2, "FirebaseSessions"

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v4, :cond_1

    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    sget-object p1, Lcom/google/firebase/sessions/api/a;->INSTANCE:Lcom/google/firebase/sessions/api/a;

    .line 38
    .line 39
    iput v4, p0, Lcom/google/firebase/sessions/k$a;->label:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/google/firebase/sessions/api/a;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-ne p1, v0, :cond_3

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Ljava/lang/Iterable;

    .line 55
    .line 56
    instance-of v1, p1, Ljava/util/Collection;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    move-object v1, p1

    .line 60
    .line 61
    check-cast v1, Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Lcom/google/firebase/sessions/api/b;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Lcom/google/firebase/sessions/api/b;->a()Z

    .line 88
    move-result v1

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/firebase/sessions/k$a;->this$0:Lcom/google/firebase/sessions/k;

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/google/firebase/sessions/k;->b(Lcom/google/firebase/sessions/k;)Lcom/google/firebase/sessions/settings/f;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    iput v3, p0, Lcom/google/firebase/sessions/k$a;->label:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lcom/google/firebase/sessions/settings/f;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    if-ne p1, v0, :cond_6

    .line 105
    return-object v0

    .line 106
    .line 107
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/google/firebase/sessions/k$a;->this$0:Lcom/google/firebase/sessions/k;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lcom/google/firebase/sessions/k;->b(Lcom/google/firebase/sessions/k;)Lcom/google/firebase/sessions/settings/f;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/firebase/sessions/settings/f;->d()Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-nez p1, :cond_7

    .line 118
    .line 119
    const-string p1, "Sessions SDK disabled. Not listening to lifecycle events."

    .line 120
    .line 121
    .line 122
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    goto :goto_3

    .line 124
    .line 125
    :cond_7
    new-instance p1, Lcom/google/firebase/sessions/f0;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/google/firebase/sessions/k$a;->$backgroundDispatcher:Lkotlin/coroutines/g;

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v0}, Lcom/google/firebase/sessions/f0;-><init>(Lkotlin/coroutines/g;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/google/firebase/sessions/f0;->i()V

    .line 134
    .line 135
    sget-object v0, Lcom/google/firebase/sessions/j0;->INSTANCE:Lcom/google/firebase/sessions/j0;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/google/firebase/sessions/j0;->a(Lcom/google/firebase/sessions/f0;)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/google/firebase/sessions/k$a;->this$0:Lcom/google/firebase/sessions/k;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/google/firebase/sessions/k;->a(Lcom/google/firebase/sessions/k;)Lcom/google/firebase/f;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    new-instance v0, Lcom/google/firebase/sessions/j;

    .line 147
    .line 148
    .line 149
    invoke-direct {v0}, Lcom/google/firebase/sessions/j;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Lcom/google/firebase/f;->h(Lcom/google/firebase/g;)V

    .line 153
    goto :goto_3

    .line 154
    .line 155
    :cond_8
    :goto_2
    const-string p1, "No Sessions subscribers. Not listening to lifecycle events."

    .line 156
    .line 157
    .line 158
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    :goto_3
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 161
    return-object p1
.end method
