.class final Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;


# direct methods
.method private constructor <init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;Landroidx/media3/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public a(IILandroidx/media3/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k(IILandroidx/media3/extractor/ExtractorInput;)V

    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n(I)V

    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q(ID)V

    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public integerElement(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w(IJ)V

    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F(IJJ)V

    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G(ILjava/lang/String;)V

    .line 6
    return-void
.end method
