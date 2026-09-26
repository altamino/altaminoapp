.class public final Lio/ktor/utils/io/jvm/javaio/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADAPTER_LOGGER$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CloseToken:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FlushToken:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/b$a;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/b$a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/b;->ADAPTER_LOGGER$delegate:Lw7/m;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/b;->CloseToken:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/b;->FlushToken:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public static final synthetic a()Lorg/slf4j/a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/b;->b()Lorg/slf4j/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Lorg/slf4j/a;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/b;->ADAPTER_LOGGER$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lorg/slf4j/a;

    .line 9
    return-object v0
.end method

.method public static final c(Lio/ktor/utils/io/g;Lkotlinx/coroutines/b2;)Ljava/io/InputStream;
    .locals 1
    .param p0    # Lio/ktor/utils/io/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/d;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/d;-><init>(Lkotlinx/coroutines/b2;Lio/ktor/utils/io/g;)V

    .line 11
    return-object v0
.end method
