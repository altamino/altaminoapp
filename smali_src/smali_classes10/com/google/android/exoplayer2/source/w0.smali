.class public interface abstract Lcom/google/android/exoplayer2/source/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_OMIT_SAMPLE_DATA:I = 0x4

.field public static final FLAG_PEEK:I = 0x1

.field public static final FLAG_REQUIRE_FORMAT:I = 0x2


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skipData(J)I
.end method
