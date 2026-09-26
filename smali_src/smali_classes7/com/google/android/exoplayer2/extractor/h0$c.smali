.class public final Lcom/google/android/exoplayer2/extractor/h0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final blockFlag:Z

.field public final mapping:I

.field public final transformType:I

.field public final windowType:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h0$c;->blockFlag:Z

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/h0$c;->windowType:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/h0$c;->transformType:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/h0$c;->mapping:I

    .line 12
    return-void
.end method
