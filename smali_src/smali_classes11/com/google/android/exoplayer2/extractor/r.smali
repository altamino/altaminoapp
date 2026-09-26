.class public interface abstract Lcom/google/android/exoplayer2/extractor/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/extractor/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/p;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/p;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/extractor/r;->EMPTY:Lcom/google/android/exoplayer2/extractor/r;

    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/l;"
        }
    .end annotation
.end method

.method public abstract createExtractors()[Lcom/google/android/exoplayer2/extractor/l;
.end method
