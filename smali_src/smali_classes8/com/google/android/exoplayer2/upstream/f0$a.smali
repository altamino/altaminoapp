.class public final Lcom/google/android/exoplayer2/upstream/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final errorCount:I

.field public final exception:Ljava/io/IOException;

.field public final loadEventInfo:Lcom/google/android/exoplayer2/source/u;

.field public final mediaLoadData:Lcom/google/android/exoplayer2/source/x;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->loadEventInfo:Lcom/google/android/exoplayer2/source/u;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->mediaLoadData:Lcom/google/android/exoplayer2/source/x;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->exception:Ljava/io/IOException;

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/f0$a;->errorCount:I

    .line 12
    return-void
.end method
