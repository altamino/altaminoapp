.class public Lcom/google/android/exoplayer2/v2;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final contentIsMalformed:Z

.field public final dataType:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/v2;->contentIsMalformed:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/google/android/exoplayer2/v2;->dataType:I

    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/v2;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/exoplayer2/v2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 7
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/v2;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/exoplayer2/v2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 8
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/exoplayer2/v2;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/v2;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/google/android/exoplayer2/v2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 9
    return-object v0
.end method
