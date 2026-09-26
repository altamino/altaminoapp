.class public final Lcom/google/android/exoplayer2/util/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final bottomFieldPicOrderInFramePresentFlag:Z

.field public final picParameterSetId:I

.field public final seqParameterSetId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/util/y$b;->picParameterSetId:I

    .line 6
    .line 7
    iput p2, p0, Lcom/google/android/exoplayer2/util/y$b;->seqParameterSetId:I

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/util/y$b;->bottomFieldPicOrderInFramePresentFlag:Z

    .line 10
    return-void
.end method
