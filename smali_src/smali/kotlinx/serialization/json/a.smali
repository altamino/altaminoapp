.class public abstract Lkotlinx/serialization/json/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/a$a;
    }
.end annotation


# static fields
.field public static final Default:Lkotlinx/serialization/json/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _schemaCache:Lkotlinx/serialization/json/internal/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configuration:Lkotlinx/serialization/json/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serializersModule:Lkotlinx/serialization/modules/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lkotlinx/serialization/json/a;->Default:Lkotlinx/serialization/json/a$a;

    return-void
.end method

.method private constructor <init>(Lkotlinx/serialization/json/e;Lkotlinx/serialization/modules/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/a;->configuration:Lkotlinx/serialization/json/e;

    iput-object p2, p0, Lkotlinx/serialization/json/a;->serializersModule:Lkotlinx/serialization/modules/c;

    .line 3
    new-instance p1, Lkotlinx/serialization/json/internal/v;

    invoke-direct {p1}, Lkotlinx/serialization/json/internal/v;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/a;->_schemaCache:Lkotlinx/serialization/json/internal/v;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/e;Lkotlinx/serialization/modules/c;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/a;-><init>(Lkotlinx/serialization/json/e;Lkotlinx/serialization/modules/c;)V

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/serialization/modules/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/a;->serializersModule:Lkotlinx/serialization/modules/c;

    return-object v0
.end method

.method public final b(Lkotlinx/serialization/k;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Lkotlinx/serialization/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/k<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "serializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lkotlinx/serialization/json/internal/h0;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lkotlinx/serialization/json/internal/h0;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lkotlinx/serialization/json/internal/g0;->a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/p0;Lkotlinx/serialization/k;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/h0;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/h0;->g()V

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/h0;->g()V

    .line 26
    throw p1
.end method

.method public final c(Lkotlinx/serialization/b;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lkotlinx/serialization/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/b<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "deserializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "string"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lkotlinx/serialization/json/internal/v0;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/v0;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance p2, Lkotlinx/serialization/json/internal/s0;

    .line 18
    .line 19
    sget-object v3, Lkotlinx/serialization/json/internal/z0;->OBJ:Lkotlinx/serialization/json/internal/z0;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v1, p2

    .line 26
    move-object v2, p0

    .line 27
    move-object v4, v0

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/s0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/z0;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/s0$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/s0;->G(Lkotlinx/serialization/b;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->w()V

    .line 38
    return-object p1
.end method

.method public final d(Lkotlinx/serialization/b;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/serialization/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/json/JsonElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/b<",
            "TT;>;",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "deserializer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "element"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p2, p1}, Lkotlinx/serialization/json/internal/x0;->a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/b;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final e()Lkotlinx/serialization/json/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/a;->configuration:Lkotlinx/serialization/json/e;

    return-object v0
.end method

.method public final f()Lkotlinx/serialization/json/internal/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/a;->_schemaCache:Lkotlinx/serialization/json/internal/v;

    return-object v0
.end method
