.class final Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtitleService"
.end annotation


# instance fields
.field public final ancillaryCluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public final ancillaryPageId:I

.field public final cluts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final objects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field public pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitlePageId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    .line 6
    .line 7
    iput p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    .line 8
    .line 9
    new-instance p1, Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    .line 15
    .line 16
    new-instance p1, Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance p1, Landroid/util/SparseArray;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-instance p1, Landroid/util/SparseArray;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    .line 36
    .line 37
    new-instance p1, Landroid/util/SparseArray;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$DisplayDefinition;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    .line 31
    return-void
.end method
