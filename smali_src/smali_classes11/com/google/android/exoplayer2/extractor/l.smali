.class public interface abstract Lcom/google/android/exoplayer2/extractor/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RESULT_CONTINUE:I = 0x0

.field public static final RESULT_END_OF_INPUT:I = -0x1

.field public static final RESULT_SEEK:I = 0x1


# virtual methods
.method public abstract b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Lcom/google/android/exoplayer2/extractor/n;)V
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method
