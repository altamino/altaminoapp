.class final Lokio/internal/ZipKt$readEntry$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $compressedSize:Lkotlin/jvm/internal/o0;

.field final synthetic $hasZip64Extra:Lkotlin/jvm/internal/k0;

.field final synthetic $offset:Lkotlin/jvm/internal/o0;

.field final synthetic $requiredZip64ExtraSize:J

.field final synthetic $size:Lkotlin/jvm/internal/o0;

.field final synthetic $this_readEntry:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;JLkotlin/jvm/internal/o0;Lokio/BufferedSource;Lkotlin/jvm/internal/o0;Lkotlin/jvm/internal/o0;)V
    .locals 0

    iput-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/k0;

    iput-wide p2, p0, Lokio/internal/ZipKt$readEntry$1;->$requiredZip64ExtraSize:J

    iput-object p4, p0, Lokio/internal/ZipKt$readEntry$1;->$size:Lkotlin/jvm/internal/o0;

    iput-object p5, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    iput-object p6, p0, Lokio/internal/ZipKt$readEntry$1;->$compressedSize:Lkotlin/jvm/internal/o0;

    iput-object p7, p0, Lokio/internal/ZipKt$readEntry$1;->$offset:Lkotlin/jvm/internal/o0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipKt$readEntry$1;->invoke(IJ)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(IJ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/k0;

    .line 2
    iget-boolean v1, p1, Lkotlin/jvm/internal/k0;->element:Z

    if-nez v1, :cond_4

    .line 3
    iput-boolean v0, p1, Lkotlin/jvm/internal/k0;->element:Z

    iget-wide v0, p0, Lokio/internal/ZipKt$readEntry$1;->$requiredZip64ExtraSize:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$size:Lkotlin/jvm/internal/o0;

    .line 4
    iget-wide p2, p1, Lkotlin/jvm/internal/o0;->element:J

    const-wide v0, 0xffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    :cond_0
    iput-wide p2, p1, Lkotlin/jvm/internal/o0;->element:J

    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$compressedSize:Lkotlin/jvm/internal/o0;

    .line 5
    iget-wide p2, p1, Lkotlin/jvm/internal/o0;->element:J

    cmp-long p2, p2, v0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iput-wide p2, p1, Lkotlin/jvm/internal/o0;->element:J

    iget-object p1, p0, Lokio/internal/ZipKt$readEntry$1;->$offset:Lkotlin/jvm/internal/o0;

    .line 6
    iget-wide p2, p1, Lkotlin/jvm/internal/o0;->element:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    iget-object p2, p0, Lokio/internal/ZipKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Lkotlin/jvm/internal/o0;->element:J

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
