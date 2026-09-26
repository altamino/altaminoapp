.class public final Lcoil/disk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/disk/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/disk/d$c;,
        Lcoil/disk/d$b;,
        Lcoil/disk/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealDiskCache.kt\ncoil/disk/RealDiskCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcoil/disk/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ENTRY_DATA:I = 0x1

.field private static final ENTRY_METADATA:I


# instance fields
.field private final cache:Lcoil/disk/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final directory:Lokio/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileSystem:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/disk/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/disk/d$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcoil/disk/d;->Companion:Lcoil/disk/d$a;

    return-void
.end method

.method public constructor <init>(JLokio/Path;Lokio/FileSystem;Lkotlinx/coroutines/k0;)V
    .locals 8
    .param p3    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcoil/disk/d;->maxSize:J

    .line 6
    .line 7
    iput-object p3, p0, Lcoil/disk/d;->directory:Lokio/Path;

    .line 8
    .line 9
    iput-object p4, p0, Lcoil/disk/d;->fileSystem:Lokio/FileSystem;

    .line 10
    .line 11
    new-instance p1, Lcoil/disk/b;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcoil/disk/d;->a()Lokio/FileSystem;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcoil/disk/d;->c()Lokio/Path;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcoil/disk/d;->d()J

    .line 23
    move-result-wide v4

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x2

    .line 26
    move-object v0, p1

    .line 27
    move-object v3, p5

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v0 .. v7}, Lcoil/disk/b;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlinx/coroutines/k0;JII)V

    .line 31
    .line 32
    iput-object p1, p0, Lcoil/disk/d;->cache:Lcoil/disk/b;

    .line 33
    return-void
.end method

.method private final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lokio/ByteString;->sha256()Lokio/ByteString;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method


# virtual methods
.method public a()Lokio/FileSystem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/disk/d;->fileSystem:Lokio/FileSystem;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcoil/disk/a$b;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/d;->cache:Lcoil/disk/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcoil/disk/d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcoil/disk/b;->L(Ljava/lang/String;)Lcoil/disk/b$b;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcoil/disk/d$b;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcoil/disk/d$b;-><init>(Lcoil/disk/b$b;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public c()Lokio/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/disk/d;->directory:Lokio/Path;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcoil/disk/d;->maxSize:J

    return-wide v0
.end method

.method public get(Ljava/lang/String;)Lcoil/disk/a$c;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/disk/d;->cache:Lcoil/disk/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcoil/disk/d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcoil/disk/b;->O(Ljava/lang/String;)Lcoil/disk/b$d;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcoil/disk/d$c;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcoil/disk/d$c;-><init>(Lcoil/disk/b$d;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method
