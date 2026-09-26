.class public final Lcoil/memory/e$b;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/memory/e;-><init>(ILcoil/memory/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Lcoil/memory/MemoryCache$Key;",
        "Lcoil/memory/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/memory/e;


# direct methods
.method constructor <init>(ILcoil/memory/e;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcoil/memory/e$b;->this$0:Lcoil/memory/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method protected a(ZLcoil/memory/MemoryCache$Key;Lcoil/memory/e$a;Lcoil/memory/e$a;)V
    .locals 1
    .param p2    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/memory/e$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/memory/e$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcoil/memory/e$b;->this$0:Lcoil/memory/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcoil/memory/e;->d(Lcoil/memory/e;)Lcoil/memory/h;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcoil/memory/e$a;->a()Landroid/graphics/Bitmap;

    .line 10
    move-result-object p4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lcoil/memory/e$a;->b()Ljava/util/Map;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcoil/memory/e$a;->c()I

    .line 18
    move-result p3

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2, p4, v0, p3}, Lcoil/memory/h;->c(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 22
    return-void
.end method

.method protected b(Lcoil/memory/MemoryCache$Key;Lcoil/memory/e$a;)I
    .locals 0
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/e$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcoil/memory/e$a;->c()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, Lcoil/memory/MemoryCache$Key;

    .line 3
    .line 4
    check-cast p3, Lcoil/memory/e$a;

    .line 5
    .line 6
    check-cast p4, Lcoil/memory/e$a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcoil/memory/e$b;->a(ZLcoil/memory/MemoryCache$Key;Lcoil/memory/e$a;Lcoil/memory/e$a;)V

    .line 10
    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcoil/memory/MemoryCache$Key;

    .line 3
    .line 4
    check-cast p2, Lcoil/memory/e$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcoil/memory/e$b;->b(Lcoil/memory/MemoryCache$Key;Lcoil/memory/e$a;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
