.class public final Lio/ktor/utils/io/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,101:1\n90#1:104\n90#1:105\n90#1:106\n90#1:107\n1#2:102\n6523#3:103\n12904#3,3:108\n*S KotlinDebug\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n*L\n74#1:104\n79#1:105\n81#1:106\n84#1:107\n59#1:103\n96#1:108,3\n*E\n"
.end annotation


# static fields
.field private static final cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final exceptionCtors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Le8/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final throwableFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-class v0, Ljava/lang/Throwable;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lio/ktor/utils/io/r;->d(Ljava/lang/Class;I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Lio/ktor/utils/io/r;->throwableFields:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 15
    .line 16
    sput-object v0, Lio/ktor/utils/io/r;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17
    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 22
    .line 23
    sput-object v0, Lio/ktor/utils/io/r;->exceptionCtors:Ljava/util/WeakHashMap;

    .line 24
    return-void
.end method

.method private static final a(Ljava/lang/reflect/Constructor;)Le8/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Le8/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const-class v2, Ljava/lang/Throwable;

    .line 10
    .line 11
    const-class v3, Ljava/lang/String;

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    const/4 v7, 0x2

    .line 18
    .line 19
    if-eq v1, v7, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    aget-object v1, v0, v4

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    aget-object v0, v0, v5

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    new-instance v6, Lio/ktor/utils/io/r$a;

    .line 39
    .line 40
    .line 41
    invoke-direct {v6, p0}, Lio/ktor/utils/io/r$a;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    aget-object v0, v0, v4

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    new-instance v6, Lio/ktor/utils/io/r$b;

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, p0}, Lio/ktor/utils/io/r$b;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    new-instance v6, Lio/ktor/utils/io/r$c;

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, p0}, Lio/ktor/utils/io/r$c;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_3
    new-instance v6, Lio/ktor/utils/io/r$d;

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, p0}, Lio/ktor/utils/io/r$d;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 74
    :cond_4
    :goto_0
    return-object v6
.end method

.method private static final b(Ljava/lang/Class;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "declaredFields"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    aget-object v4, v0, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 24
    move-result v4

    .line 25
    .line 26
    xor-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    add-int/2addr p1, v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    return p1
.end method

.method static synthetic c(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/r;->b(Ljava/lang/Class;I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static final d(Ljava/lang/Class;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ld8/a;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 4
    .line 5
    :try_start_0
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v2, v0, v1}, Lio/ktor/utils/io/r;->c(Ljava/lang/Class;IILjava/lang/Object;)I

    .line 12
    move-result p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    .line 24
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lw7/v;->g(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    move-object p0, p1

    .line 44
    .line 45
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 8
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "exception"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "cause"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p0, Lkotlinx/coroutines/i0;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_0
    sget-object p1, Lw7/v;->Companion:Lw7/v$a;

    .line 18
    .line 19
    check-cast p0, Lkotlinx/coroutines/i0;

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lkotlinx/coroutines/i0;->a()Ljava/lang/Throwable;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    .line 31
    sget-object p1, Lw7/v;->Companion:Lw7/v$a;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {p0}, Lw7/v;->g(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move-object v1, p0

    .line 48
    .line 49
    :goto_1
    check-cast v1, Ljava/lang/Throwable;

    .line 50
    return-object v1

    .line 51
    .line 52
    :cond_1
    sget-object v0, Lio/ktor/utils/io/r;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 60
    .line 61
    :try_start_1
    sget-object v3, Lio/ktor/utils/io/r;->exceptionCtors:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    check-cast v3, Le8/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-interface {v3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    check-cast p0, Ljava/lang/Throwable;

    .line 83
    return-object p0

    .line 84
    .line 85
    :cond_2
    sget v2, Lio/ktor/utils/io/r;->throwableFields:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x0

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v4}, Lio/ktor/utils/io/r;->d(Ljava/lang/Class;I)I

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eq v2, v3, :cond_7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    .line 104
    move-result v2

    .line 105
    .line 106
    if-nez v2, :cond_3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    .line 110
    move-result v2

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v2, v4

    .line 113
    :goto_2
    move v3, v4

    .line 114
    .line 115
    :goto_3
    if-ge v3, v2, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    goto :goto_3

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 129
    .line 130
    :try_start_2
    sget-object v3, Lio/ktor/utils/io/r;->exceptionCtors:Ljava/util/WeakHashMap;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    sget-object v5, Lio/ktor/utils/io/r$f;->INSTANCE:Lio/ktor/utils/io/r$f;

    .line 137
    .line 138
    .line 139
    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .line 143
    :goto_4
    if-ge v4, v2, :cond_5

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 147
    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    goto :goto_4

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 153
    return-object v1

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    .line 156
    :goto_5
    if-ge v4, v2, :cond_6

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    goto :goto_5

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 166
    throw p0

    .line 167
    .line 168
    .line 169
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    const-string v2, "exception.javaClass.constructors"

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    new-instance v2, Lio/ktor/utils/io/r$e;

    .line 182
    .line 183
    .line 184
    invoke-direct {v2}, Lio/ktor/utils/io/r$e;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v2}, Lkotlin/collections/l;->p0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    move-result-object v0

    .line 193
    move-object v2, v1

    .line 194
    .line 195
    .line 196
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v3

    .line 198
    .line 199
    if-eqz v3, :cond_9

    .line 200
    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 206
    .line 207
    const-string v3, "constructor"

    .line 208
    .line 209
    .line 210
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Lio/ktor/utils/io/r;->a(Ljava/lang/reflect/Constructor;)Le8/l;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    if-eqz v2, :cond_8

    .line 217
    .line 218
    :cond_9
    sget-object v0, Lio/ktor/utils/io/r;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    .line 226
    move-result v5

    .line 227
    .line 228
    if-nez v5, :cond_a

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    .line 232
    move-result v5

    .line 233
    goto :goto_6

    .line 234
    :cond_a
    move v5, v4

    .line 235
    :goto_6
    move v6, v4

    .line 236
    .line 237
    :goto_7
    if-ge v6, v5, :cond_b

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 241
    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 243
    goto :goto_7

    .line 244
    .line 245
    .line 246
    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 251
    .line 252
    :try_start_3
    sget-object v6, Lio/ktor/utils/io/r;->exceptionCtors:Ljava/util/WeakHashMap;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    move-result-object p0

    .line 257
    .line 258
    if-nez v2, :cond_c

    .line 259
    .line 260
    sget-object v7, Lio/ktor/utils/io/r$g;->INSTANCE:Lio/ktor/utils/io/r$g;

    .line 261
    goto :goto_8

    .line 262
    :catchall_2
    move-exception p0

    .line 263
    goto :goto_a

    .line 264
    :cond_c
    move-object v7, v2

    .line 265
    .line 266
    .line 267
    :goto_8
    invoke-interface {v6, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 270
    .line 271
    :goto_9
    if-ge v4, v5, :cond_d

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 275
    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 277
    goto :goto_9

    .line 278
    .line 279
    .line 280
    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 281
    .line 282
    if-eqz v2, :cond_e

    .line 283
    .line 284
    .line 285
    invoke-interface {v2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    move-result-object p0

    .line 287
    move-object v1, p0

    .line 288
    .line 289
    check-cast v1, Ljava/lang/Throwable;

    .line 290
    :cond_e
    return-object v1

    .line 291
    .line 292
    :goto_a
    if-ge v4, v5, :cond_f

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 296
    .line 297
    add-int/lit8 v4, v4, 0x1

    .line 298
    goto :goto_a

    .line 299
    .line 300
    .line 301
    :cond_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 302
    throw p0

    .line 303
    :catchall_3
    move-exception p0

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 307
    throw p0
.end method
