.class public final Lcom/google/android/exoplayer2/extractor/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/v;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/extractor/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/t$a;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/v;

    .line 6
    return-void
.end method
