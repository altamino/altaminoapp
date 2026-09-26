.class public final Lcoil/memory/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/memory/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrongMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrongMemoryCache.kt\ncoil/memory/RealStrongMemoryCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"
.end annotation


# instance fields
.field private final cache:Lcoil/memory/e$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final weakMemoryCache:Lcoil/memory/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcoil/memory/h;)V
    .locals 0
    .param p2    # Lcoil/memory/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcoil/memory/e;->weakMemoryCache:Lcoil/memory/h;

    .line 6
    .line 7
    new-instance p2, Lcoil/memory/e$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, p1, p0}, Lcoil/memory/e$b;-><init>(ILcoil/memory/e;)V

    .line 11
    .line 12
    iput-object p2, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 13
    return-void
.end method

.method public static final synthetic d(Lcoil/memory/e;)Lcoil/memory/h;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcoil/memory/e;->weakMemoryCache:Lcoil/memory/h;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x28

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcoil/memory/e;->e()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/16 v0, 0xa

    .line 11
    .line 12
    if-gt v0, p1, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x14

    .line 15
    .line 16
    if-ge p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcoil/memory/e;->g()I

    .line 22
    move-result v0

    .line 23
    .line 24
    div-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;
    .locals 2
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcoil/memory/e$a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcoil/memory/MemoryCache$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcoil/memory/e$a;->a()Landroid/graphics/Bitmap;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcoil/memory/e$a;->b()Ljava/util/Map;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1}, Lcoil/memory/MemoryCache$b;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0
.end method

.method public c(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/memory/MemoryCache$Key;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcoil/util/a;->a(Landroid/graphics/Bitmap;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcoil/memory/e;->f()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 13
    .line 14
    new-instance v2, Lcoil/memory/e$a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, p2, p3, v0}, Lcoil/memory/e$a;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v1, p0, Lcoil/memory/e;->weakMemoryCache:Lcoil/memory/h;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p1, p2, p3, v0}, Lcoil/memory/h;->c(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 32
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 6
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/LruCache;->maxSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/memory/e;->cache:Lcoil/memory/e$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
