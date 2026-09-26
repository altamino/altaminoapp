.class public Lkotlin/jvm/internal/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

.field static final REFLECTION_NOT_AVAILABLE:Ljava/lang/String; = " (Kotlin reflection is not available)"

.field private static final factory:Lkotlin/jvm/internal/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lkotlin/jvm/internal/r0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    move-object v0, v1

    .line 15
    .line 16
    :catch_0
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/r0;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lkotlin/jvm/internal/r0;-><init>()V

    .line 23
    .line 24
    :goto_0
    sput-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    new-array v0, v0, [Lkotlin/reflect/KClass;

    .line 28
    .line 29
    sput-object v0, Lkotlin/jvm/internal/q0;->EMPTY_K_CLASS_ARRAY:[Lkotlin/reflect/KClass;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Lkotlin/jvm/internal/p;)Lkotlin/reflect/KFunction;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->a(Lkotlin/jvm/internal/p;)Lkotlin/reflect/KFunction;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/r0;->c(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Lkotlin/jvm/internal/x;)Lkotlin/reflect/KMutableProperty0;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->d(Lkotlin/jvm/internal/x;)Lkotlin/reflect/KMutableProperty0;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static e(Lkotlin/jvm/internal/z;)Lkotlin/reflect/KMutableProperty1;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->e(Lkotlin/jvm/internal/z;)Lkotlin/reflect/KMutableProperty1;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static f(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty0;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->f(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty0;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h(Lkotlin/jvm/internal/h0;)Lkotlin/reflect/KProperty2;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->h(Lkotlin/jvm/internal/h0;)Lkotlin/reflect/KProperty2;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static i(Lkotlin/jvm/internal/o;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->i(Lkotlin/jvm/internal/o;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static j(Lkotlin/jvm/internal/v;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/r0;->j(Lkotlin/jvm/internal/v;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static k(Ljava/lang/Class;)Lkotlin/reflect/KType;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/r0;->k(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static l(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/r0;->k(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static m(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/q0;->factory:Lkotlin/jvm/internal/r0;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    new-array v1, v1, [Lkotlin/reflect/KTypeProjection;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object p1, v1, v2

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    aput-object p2, v1, p1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, p1, v2}, Lkotlin/jvm/internal/r0;->k(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
