.class final Lcom/google/android/exoplayer2/extractor/mkv/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mkv/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/mkv/e;Lcom/google/android/exoplayer2/extractor/mkv/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e$b;-><init>(Lcom/google/android/exoplayer2/extractor/mkv/e;)V

    return-void
.end method


# virtual methods
.method public a(IILcom/google/android/exoplayer2/extractor/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->k(IILcom/google/android/exoplayer2/extractor/m;)V

    .line 6
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->n(I)V

    .line 6
    return-void
.end method

.method public floatElement(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->q(ID)V

    .line 6
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->t(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public integerElement(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mkv/e;->w(IJ)V

    .line 6
    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/e;->y(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    move v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-wide v4, p4

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mkv/e;->F(IJJ)V

    .line 9
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/e$b;->this$0:Lcom/google/android/exoplayer2/extractor/mkv/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mkv/e;->G(ILjava/lang/String;)V

    .line 6
    return-void
.end method
