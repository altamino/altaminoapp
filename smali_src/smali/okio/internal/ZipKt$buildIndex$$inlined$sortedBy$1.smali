.class public final Lokio/internal/ZipKt$buildIndex$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->buildIndex(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 zip.kt\nokio/internal/ZipKt\n*L\n1#1,320:1\n156#2:321\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lokio/internal/ZipEntry;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p2, Lokio/internal/ZipEntry;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Ly7/a;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method
