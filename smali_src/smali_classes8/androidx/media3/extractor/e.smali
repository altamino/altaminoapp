.class public final synthetic Landroidx/media3/extractor/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/extractor/ExtractorsFactory;->EMPTY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public static a(Landroidx/media3/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media3/extractor/Extractor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()[Landroidx/media3/extractor/Extractor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    return-object v0
.end method
