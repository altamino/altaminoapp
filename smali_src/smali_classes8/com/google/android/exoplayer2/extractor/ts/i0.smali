.class public interface abstract Lcom/google/android/exoplayer2/extractor/ts/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/i0$d;,
        Lcom/google/android/exoplayer2/extractor/ts/i0$a;,
        Lcom/google/android/exoplayer2/extractor/ts/i0$b;,
        Lcom/google/android/exoplayer2/extractor/ts/i0$c;
    }
.end annotation


# static fields
.field public static final FLAG_DATA_ALIGNMENT_INDICATOR:I = 0x4

.field public static final FLAG_PAYLOAD_UNIT_START_INDICATOR:I = 0x1

.field public static final FLAG_RANDOM_ACCESS_INDICATOR:I = 0x2


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/util/l0;Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/extractor/ts/i0$d;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/util/c0;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
