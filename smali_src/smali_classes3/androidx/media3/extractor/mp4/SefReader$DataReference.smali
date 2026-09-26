.class final Landroidx/media3/extractor/mp4/SefReader$DataReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/SefReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReference"
.end annotation


# instance fields
.field public final dataType:I

.field public final size:I

.field public final startOffset:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/extractor/mp4/SefReader$DataReference;->dataType:I

    .line 6
    .line 7
    iput-wide p2, p0, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    .line 8
    .line 9
    iput p4, p0, Landroidx/media3/extractor/mp4/SefReader$DataReference;->size:I

    .line 10
    return-void
.end method
