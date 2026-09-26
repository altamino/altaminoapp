.class public final Lcoil/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Coil.kt\ncoil/Coil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static imageLoader:Lcoil/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static imageLoaderFactory:Lcoil/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/a;

    invoke-direct {v0}, Lcoil/a;-><init>()V

    sput-object v0, Lcoil/a;->INSTANCE:Lcoil/a;

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

.method public static final a(Landroid/content/Context;)Lcoil/e;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcoil/a;->imageLoader:Lcoil/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcoil/a;->INSTANCE:Lcoil/a;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcoil/a;->b(Landroid/content/Context;)Lcoil/e;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private final declared-synchronized b(Landroid/content/Context;)Lcoil/e;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcoil/a;->imageLoader:Lcoil/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    :try_start_1
    sget-object v0, Lcoil/a;->imageLoaderFactory:Lcoil/f;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcoil/f;->a()Lcoil/e;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_4

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_3

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    instance-of v2, v0, Lcoil/f;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    check-cast v0, Lcoil/f;

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v0, v1

    .line 34
    .line 35
    :goto_1
    if-eqz v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lcoil/f;->a()Lcoil/e;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {p1}, Lcoil/g;->a(Landroid/content/Context;)Lcoil/e;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    :cond_4
    :goto_2
    sput-object v1, Lcoil/a;->imageLoaderFactory:Lcoil/f;

    .line 47
    .line 48
    sput-object v0, Lcoil/a;->imageLoader:Lcoil/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :goto_3
    monitor-exit p0

    .line 52
    throw p1
.end method
