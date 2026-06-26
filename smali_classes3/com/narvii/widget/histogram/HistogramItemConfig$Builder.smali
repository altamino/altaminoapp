.class public Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;
.super Ljava/lang/Object;
.source "HistogramItemConfig.java"


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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionValues:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionColors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    .line 123
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public addSection(DI)Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionColors:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget p3, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->totalValue:F

    .line 130
    iget p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;->sectionCount:I

    return-object p0
.end method

.method public build()Lcom/narvii/widget/histogram/HistogramItemConfig;
    .locals 1

    .line 135
    new-instance v0, Lcom/narvii/widget/histogram/HistogramItemConfig;

    invoke-direct {v0, p0}, Lcom/narvii/widget/histogram/HistogramItemConfig;-><init>(Lcom/narvii/widget/histogram/HistogramItemConfig$Builder;)V

    return-object v0
.end method
