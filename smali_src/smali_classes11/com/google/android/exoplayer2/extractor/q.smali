.class public final synthetic Lcom/google/android/exoplayer2/extractor/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/r;->EMPTY:Lcom/google/android/exoplayer2/extractor/r;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/r;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/r;->createExtractors()[Lcom/google/android/exoplayer2/extractor/l;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()[Lcom/google/android/exoplayer2/extractor/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/l;

    return-object v0
.end method
