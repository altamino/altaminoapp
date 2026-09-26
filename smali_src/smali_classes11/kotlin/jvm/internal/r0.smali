.class public Lkotlin/jvm/internal/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KOTLIN_JVM_FUNCTIONS:Ljava/lang/String; = "kotlin.jvm.functions."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/internal/p;)Lkotlin/reflect/KFunction;
    .locals 0

    .line 1
    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lkotlin/jvm/internal/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lkotlin/jvm/internal/i;-><init>(Ljava/lang/Class;)V

    .line 6
    return-object v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lkotlin/jvm/internal/c0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public d(Lkotlin/jvm/internal/x;)Lkotlin/reflect/KMutableProperty0;
    .locals 0

    .line 1
    return-object p1
.end method

.method public e(Lkotlin/jvm/internal/z;)Lkotlin/reflect/KMutableProperty1;
    .locals 0

    .line 1
    return-object p1
.end method

.method public f(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty0;
    .locals 0

    .line 1
    return-object p1
.end method

.method public g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;
    .locals 0

    .line 1
    return-object p1
.end method

.method public h(Lkotlin/jvm/internal/h0;)Lkotlin/reflect/KProperty2;
    .locals 0

    .line 1
    return-object p1
.end method

.method public i(Lkotlin/jvm/internal/o;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    aget-object p1, p1, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "kotlin.jvm.functions."

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x15

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    :cond_0
    return-object p1
.end method

.method public j(Lkotlin/jvm/internal/v;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/r0;->i(Lkotlin/jvm/internal/o;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClassifier;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/jvm/internal/w0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Lkotlin/jvm/internal/w0;-><init>(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V

    .line 6
    return-object v0
.end method
