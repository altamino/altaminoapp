.class public final Lcom/google/android/exoplayer2/upstream/y;
.super Lcom/google/android/exoplayer2/upstream/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;)V
    .locals 6

    .line 1
    .line 2
    const-string v1, "Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted"

    .line 3
    .line 4
    const/16 v4, 0x7d7

    .line 5
    const/4 v5, 0x1

    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/o;II)V

    .line 12
    return-void
.end method
