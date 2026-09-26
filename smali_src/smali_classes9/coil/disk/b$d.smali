.class public final Lcoil/disk/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/disk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil/disk/DiskLruCache$Snapshot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"
.end annotation


# instance fields
.field private closed:Z

.field private final entry:Lcoil/disk/b$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcoil/disk/b;


# direct methods
.method public constructor <init>(Lcoil/disk/b;Lcoil/disk/b$c;)V
    .locals 0
    .param p1    # Lcoil/disk/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/disk/b$c;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/disk/b$d;->this$0:Lcoil/disk/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcoil/disk/b$d;->closed:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcoil/disk/b$d;->closed:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcoil/disk/b$d;->this$0:Lcoil/disk/b;

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcoil/disk/b$c;->f()I

    .line 16
    move-result v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcoil/disk/b$c;->k(I)V

    .line 22
    .line 23
    iget-object v1, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcoil/disk/b$c;->f()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcoil/disk/b$c;->h()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcoil/disk/b;->i(Lcoil/disk/b;Lcoil/disk/b$c;)Z

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    throw v1

    .line 52
    :cond_1
    :goto_2
    return-void
.end method

.method public final d()Lcoil/disk/b$b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/b$d;->this$0:Lcoil/disk/b;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcoil/disk/b$d;->close()V

    .line 7
    .line 8
    iget-object v1, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcoil/disk/b$c;->d()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcoil/disk/b;->L(Ljava/lang/String;)Lcoil/disk/b$b;

    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public final e(I)Lokio/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcoil/disk/b$d;->closed:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcoil/disk/b$d;->entry:Lcoil/disk/b$c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcoil/disk/b$c;->a()Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lokio/Path;

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "snapshot is closed"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method
