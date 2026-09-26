.class public Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/histogram/HistogramItemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field date:Ljava/util/Date;

.field sectionColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sectionCount:I

.field sectionValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field totalValue:F


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionValues:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionColors:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->date:Ljava/util/Date;

    .line 26
    return-void
.end method


# virtual methods
.method public addSection(DI)Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionValues:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionColors:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iget p3, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    .line 21
    float-to-double v0, p3

    .line 22
    add-double/2addr v0, p1

    .line 23
    double-to-float p1, v0

    .line 24
    .line 25
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    .line 26
    .line 27
    iget p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    .line 32
    return-object p0
.end method

.method public build()Lcom/narvii/widget/histogram/HistogramItemConfig;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/widget/histogram/HistogramItemConfig;-><init>(Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;)V

    .line 6
    return-object v0
.end method
