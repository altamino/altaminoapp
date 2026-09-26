.class public final Lcom/google/zxing/pdf417/encoder/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final maxCols:I

.field private final maxRows:I

.field private final minCols:I

.field private final minRows:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/zxing/pdf417/encoder/d;->minCols:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/zxing/pdf417/encoder/d;->maxCols:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/zxing/pdf417/encoder/d;->minRows:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/zxing/pdf417/encoder/d;->maxRows:I

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/encoder/d;->maxCols:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/encoder/d;->maxRows:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/encoder/d;->minCols:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/encoder/d;->minRows:I

    return v0
.end method
