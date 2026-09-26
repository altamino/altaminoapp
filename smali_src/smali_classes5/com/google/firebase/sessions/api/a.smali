.class public final Lcom/google/firebase/sessions/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/api/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseSessionsDependencies.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseSessionsDependencies.kt\ncom/google/firebase/sessions/api/FirebaseSessionsDependencies\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,113:1\n438#2:114\n388#2:115\n1238#3,2:116\n1241#3:128\n107#4,10:118\n*S KotlinDebug\n*F\n+ 1 FirebaseSessionsDependencies.kt\ncom/google/firebase/sessions/api/FirebaseSessionsDependencies\n*L\n88#1:114\n88#1:115\n88#1:116,2\n88#1:128\n89#1:118,10\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/api/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SessionsDependencies"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/sessions/api/b$a;",
            "Lcom/google/firebase/sessions/api/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/api/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/sessions/api/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/api/a;->INSTANCE:Lcom/google/firebase/sessions/api/a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/google/firebase/sessions/api/a;->dependencies:Ljava/util/Map;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final b(Lcom/google/firebase/sessions/api/b$a;)Lcom/google/firebase/sessions/api/a$a;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/sessions/api/a;->dependencies:Ljava/util/Map;

    .line 3
    .line 4
    const-string v1, "dependencies"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p1, "dependencies.getOrElse(s\u2026load time.\"\n      )\n    }"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast v0, Lcom/google/firebase/sessions/api/a$a;

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "Cannot get dependency "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, ". Dependencies should be added at class load time."

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0
.end method

.method public static final e(Lcom/google/firebase/sessions/api/b;)V
    .locals 5
    .param p0    # Lcom/google/firebase/sessions/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "subscriber"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/google/firebase/sessions/api/b;->b()Lcom/google/firebase/sessions/api/b$a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/sessions/api/a;->INSTANCE:Lcom/google/firebase/sessions/api/a;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/google/firebase/sessions/api/a;->b(Lcom/google/firebase/sessions/api/b$a;)Lcom/google/firebase/sessions/api/a$a;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/firebase/sessions/api/a$a;->b()Lcom/google/firebase/sessions/api/b;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    const-string v3, "Subscriber "

    .line 22
    .line 23
    const-string v4, "SessionsDependencies"

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, " already registered."

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/firebase/sessions/api/a$a;->c(Lcom/google/firebase/sessions/api/b;)V

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, " registered."

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/firebase/sessions/api/a$a;->a()Lkotlinx/coroutines/sync/a;

    .line 79
    move-result-object p0

    .line 80
    const/4 v0, 0x1

    .line 81
    const/4 v1, 0x0

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v1, v0, v1}, Lkotlinx/coroutines/sync/a$a;->c(Lkotlinx/coroutines/sync/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/sessions/api/b$a;)V
    .locals 6
    .param p1    # Lcom/google/firebase/sessions/api/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "subscriberName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/google/firebase/sessions/api/b$a;->PERFORMANCE:Lcom/google/firebase/sessions/api/b$a;

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/sessions/api/a;->dependencies:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    const-string v2, "SessionsDependencies"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v1, "Dependency "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, " already added."

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 46
    .line 47
    :cond_0
    const-string v1, "dependencies"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    new-instance v1, Lcom/google/firebase/sessions/api/a$a;

    .line 53
    const/4 v3, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lkotlinx/coroutines/sync/c;->a(Z)Lkotlinx/coroutines/sync/a;

    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x2

    .line 59
    const/4 v5, 0x0

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v3, v5, v4, v5}, Lcom/google/firebase/sessions/api/a$a;-><init>(Lkotlinx/coroutines/sync/a;Lcom/google/firebase/sessions/api/b;ILkotlin/jvm/internal/k;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v1, "Dependency to "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p1, " added."

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 92
    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v0, "Incompatible versions of Firebase Perf and Firebase Sessions.\nA safe combination would be:\n  firebase-sessions:1.1.0\n  firebase-crashlytics:18.5.0\n  firebase-perf:20.5.0\nFor more information contact Firebase Support."

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1
.end method

.method public final c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/util/Map<",
            "Lcom/google/firebase/sessions/api/b$a;",
            "+",
            "Lcom/google/firebase/sessions/api/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/firebase/sessions/api/a$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/sessions/api/a$b;

    .line 8
    .line 9
    iget v1, v0, Lcom/google/firebase/sessions/api/a$b;->label:I

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
    iput v1, v0, Lcom/google/firebase/sessions/api/a$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/api/a$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/api/a$b;-><init>(Lcom/google/firebase/sessions/api/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lcom/google/firebase/sessions/api/a$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lcom/google/firebase/sessions/api/a$b;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v0, Lcom/google/firebase/sessions/api/a$b;->L$5:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v5, v0, Lcom/google/firebase/sessions/api/a$b;->L$4:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Ljava/util/Map;

    .line 45
    .line 46
    iget-object v6, v0, Lcom/google/firebase/sessions/api/a$b;->L$3:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Lkotlinx/coroutines/sync/a;

    .line 49
    .line 50
    iget-object v7, v0, Lcom/google/firebase/sessions/api/a$b;->L$2:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, Lcom/google/firebase/sessions/api/b$a;

    .line 53
    .line 54
    iget-object v8, v0, Lcom/google/firebase/sessions/api/a$b;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v8, Ljava/util/Iterator;

    .line 57
    .line 58
    iget-object v9, v0, Lcom/google/firebase/sessions/api/a$b;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v9, Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    sget-object p1, Lcom/google/firebase/sessions/api/a;->dependencies:Ljava/util/Map;

    .line 78
    .line 79
    const-string v2, "dependencies"

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 88
    move-result v5

    .line 89
    .line 90
    .line 91
    invoke-static {v5}, Lkotlin/collections/p0;->e(I)I

    .line 92
    move-result v5

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object p1

    .line 104
    move-object v8, p1

    .line 105
    move-object v5, v2

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Ljava/util/Map$Entry;

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    move-result-object v6

    .line 126
    move-object v7, v6

    .line 127
    .line 128
    check-cast v7, Lcom/google/firebase/sessions/api/b$a;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    check-cast p1, Lcom/google/firebase/sessions/api/a$a;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/sessions/api/a$a;->a()Lkotlinx/coroutines/sync/a;

    .line 138
    move-result-object v6

    .line 139
    .line 140
    iput-object v5, v0, Lcom/google/firebase/sessions/api/a$b;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v8, v0, Lcom/google/firebase/sessions/api/a$b;->L$1:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v7, v0, Lcom/google/firebase/sessions/api/a$b;->L$2:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v6, v0, Lcom/google/firebase/sessions/api/a$b;->L$3:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v5, v0, Lcom/google/firebase/sessions/api/a$b;->L$4:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v2, v0, Lcom/google/firebase/sessions/api/a$b;->L$5:Ljava/lang/Object;

    .line 151
    .line 152
    iput v4, v0, Lcom/google/firebase/sessions/api/a$b;->label:I

    .line 153
    .line 154
    .line 155
    invoke-interface {v6, v3, v0}, Lkotlinx/coroutines/sync/a;->d(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    if-ne p1, v1, :cond_3

    .line 159
    return-object v1

    .line 160
    :cond_3
    move-object v9, v5

    .line 161
    .line 162
    :goto_2
    :try_start_0
    sget-object p1, Lcom/google/firebase/sessions/api/a;->INSTANCE:Lcom/google/firebase/sessions/api/a;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v7}, Lcom/google/firebase/sessions/api/a;->d(Lcom/google/firebase/sessions/api/b$a;)Lcom/google/firebase/sessions/api/b;

    .line 166
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    invoke-interface {v6, v3}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object v5, v9

    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    .line 177
    .line 178
    invoke-interface {v6, v3}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 179
    throw p1

    .line 180
    :cond_4
    return-object v5
.end method

.method public final d(Lcom/google/firebase/sessions/api/b$a;)Lcom/google/firebase/sessions/api/b;
    .locals 3
    .param p1    # Lcom/google/firebase/sessions/api/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "subscriberName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/api/a;->b(Lcom/google/firebase/sessions/api/b$a;)Lcom/google/firebase/sessions/api/a$a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/firebase/sessions/api/a$a;->b()Lcom/google/firebase/sessions/api/b;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "Subscriber "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, " has not been registered."

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0
.end method
