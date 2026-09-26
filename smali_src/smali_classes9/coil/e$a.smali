.class public final Lcoil/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLoader.kt\ncoil/ImageLoader$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,595:1\n1#2:596\n*E\n"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private callFactory:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private componentRegistry:Lcoil/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private defaults:Lcoil/request/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private diskCache:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "+",
            "Lcoil/disk/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eventListenerFactory:Lcoil/c$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private logger:Lcoil/util/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private memoryCache:Lw7/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/m<",
            "+",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private options:Lcoil/util/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcoil/e$a;->applicationContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcoil/util/h;->b()Lcoil/request/b;

    move-result-object p1

    iput-object p1, p0, Lcoil/e$a;->defaults:Lcoil/request/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcoil/e$a;->memoryCache:Lw7/m;

    iput-object p1, p0, Lcoil/e$a;->diskCache:Lw7/m;

    iput-object p1, p0, Lcoil/e$a;->callFactory:Lw7/m;

    iput-object p1, p0, Lcoil/e$a;->eventListenerFactory:Lcoil/c$d;

    iput-object p1, p0, Lcoil/e$a;->componentRegistry:Lcoil/b;

    .line 4
    new-instance p1, Lcoil/util/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcoil/util/n;-><init>(ZZZILcoil/decode/l;ILkotlin/jvm/internal/k;)V

    iput-object p1, p0, Lcoil/e$a;->options:Lcoil/util/n;

    return-void
.end method

.method public constructor <init>(Lcoil/h;)V
    .locals 1
    .param p1    # Lcoil/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcoil/h;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->applicationContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Lcoil/h;->a()Lcoil/request/b;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->defaults:Lcoil/request/b;

    .line 8
    invoke-virtual {p1}, Lcoil/h;->n()Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->memoryCache:Lw7/m;

    .line 9
    invoke-virtual {p1}, Lcoil/h;->k()Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->diskCache:Lw7/m;

    .line 10
    invoke-virtual {p1}, Lcoil/h;->h()Lw7/m;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->callFactory:Lw7/m;

    .line 11
    invoke-virtual {p1}, Lcoil/h;->l()Lcoil/c$d;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->eventListenerFactory:Lcoil/c$d;

    .line 12
    invoke-virtual {p1}, Lcoil/h;->i()Lcoil/b;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->componentRegistry:Lcoil/b;

    .line 13
    invoke-virtual {p1}, Lcoil/h;->o()Lcoil/util/n;

    move-result-object v0

    iput-object v0, p0, Lcoil/e$a;->options:Lcoil/util/n;

    .line 14
    invoke-virtual {p1}, Lcoil/h;->m()Lcoil/util/q;

    return-void
.end method

.method public static final synthetic a(Lcoil/e$a;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/e$a;->applicationContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()Lcoil/e;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v10, Lcoil/h;

    .line 3
    .line 4
    iget-object v1, p0, Lcoil/e$a;->applicationContext:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p0, Lcoil/e$a;->defaults:Lcoil/request/b;

    .line 7
    .line 8
    iget-object v0, p0, Lcoil/e$a;->memoryCache:Lw7/m;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcoil/e$a$a;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcoil/e$a$a;-><init>(Lcoil/e$a;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    :cond_0
    move-object v3, v0

    .line 21
    .line 22
    iget-object v0, p0, Lcoil/e$a;->diskCache:Lw7/m;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcoil/e$a$b;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcoil/e$a$b;-><init>(Lcoil/e$a;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 33
    move-result-object v0

    .line 34
    :cond_1
    move-object v4, v0

    .line 35
    .line 36
    iget-object v0, p0, Lcoil/e$a;->callFactory:Lw7/m;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    sget-object v0, Lcoil/e$a$c;->INSTANCE:Lcoil/e$a$c;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 44
    move-result-object v0

    .line 45
    :cond_2
    move-object v5, v0

    .line 46
    .line 47
    iget-object v0, p0, Lcoil/e$a;->eventListenerFactory:Lcoil/c$d;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    sget-object v0, Lcoil/c$d;->NONE:Lcoil/c$d;

    .line 52
    :cond_3
    move-object v6, v0

    .line 53
    .line 54
    iget-object v0, p0, Lcoil/e$a;->componentRegistry:Lcoil/b;

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    new-instance v0, Lcoil/b;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Lcoil/b;-><init>()V

    .line 62
    :cond_4
    move-object v7, v0

    .line 63
    .line 64
    iget-object v8, p0, Lcoil/e$a;->options:Lcoil/util/n;

    .line 65
    const/4 v9, 0x0

    .line 66
    move-object v0, v10

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v0 .. v9}, Lcoil/h;-><init>(Landroid/content/Context;Lcoil/request/b;Lw7/m;Lw7/m;Lw7/m;Lcoil/c$d;Lcoil/b;Lcoil/util/n;Lcoil/util/q;)V

    .line 70
    return-object v10
.end method
