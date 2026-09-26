.class final Lokio/internal/ResourceFileSystem$roots$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/util/List<",
        "+",
        "Lw7/u<",
        "+",
        "Lokio/FileSystem;",
        "+",
        "Lokio/Path;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lokio/internal/ResourceFileSystem$roots$2;->$classLoader:Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/internal/ResourceFileSystem$roots$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/u<",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {}, Lokio/internal/ResourceFileSystem;->access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;

    move-result-object v0

    iget-object v1, p0, Lokio/internal/ResourceFileSystem$roots$2;->$classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lokio/internal/ResourceFileSystem$Companion;->toClasspathRoots(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
