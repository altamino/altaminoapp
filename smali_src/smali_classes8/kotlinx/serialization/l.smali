.class public final Lkotlinx/serialization/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerializersCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,75:1\n80#2:76\n*S KotlinDebug\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n*L\n53#1:76\n*E\n"
.end annotation


# static fields
.field private static final PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/o1<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/o1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/o1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SERIALIZERS_CACHE:Lkotlinx/serialization/internal/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/c2<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/c2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/serialization/l$c;->INSTANCE:Lkotlinx/serialization/l$c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlinx/serialization/internal/o;->a(Le8/l;)Lkotlinx/serialization/internal/c2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lkotlinx/serialization/l;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/c2;

    .line 9
    .line 10
    sget-object v0, Lkotlinx/serialization/l$d;->INSTANCE:Lkotlinx/serialization/l$d;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlinx/serialization/internal/o;->a(Le8/l;)Lkotlinx/serialization/internal/c2;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lkotlinx/serialization/l;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/c2;

    .line 17
    .line 18
    sget-object v0, Lkotlinx/serialization/l$a;->INSTANCE:Lkotlinx/serialization/l$a;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlinx/serialization/internal/o;->b(Le8/p;)Lkotlinx/serialization/internal/o1;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lkotlinx/serialization/l;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/o1;

    .line 25
    .line 26
    sget-object v0, Lkotlinx/serialization/l$b;->INSTANCE:Lkotlinx/serialization/l$b;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlinx/serialization/internal/o;->b(Le8/p;)Lkotlinx/serialization/internal/o1;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Lkotlinx/serialization/l;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/o1;

    .line 33
    return-void
.end method

.method public static final a(Lkotlin/reflect/KClass;Z)Lkotlinx/serialization/KSerializer;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clazz"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lkotlinx/serialization/l;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/c2;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p0}, Lkotlinx/serialization/internal/c2;->a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    sget-object p1, Lkotlinx/serialization/l;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/c2;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p0}, Lkotlinx/serialization/internal/c2;->a(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static final b(Lkotlin/reflect/KClass;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "clazz"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "types"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    sget-object p2, Lkotlinx/serialization/l;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/o1;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p0, p1}, Lkotlinx/serialization/internal/o1;->a(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    sget-object p2, Lkotlinx/serialization/l;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/o1;

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p0, p1}, Lkotlinx/serialization/internal/o1;->a(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    :goto_0
    return-object p0
.end method
