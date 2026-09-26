.class public interface abstract Lcom/google/android/exoplayer2/extractor/mkv/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ELEMENT_TYPE_BINARY:I = 0x4

.field public static final ELEMENT_TYPE_FLOAT:I = 0x5

.field public static final ELEMENT_TYPE_MASTER:I = 0x1

.field public static final ELEMENT_TYPE_STRING:I = 0x3

.field public static final ELEMENT_TYPE_UNKNOWN:I = 0x0

.field public static final ELEMENT_TYPE_UNSIGNED_INT:I = 0x2


# virtual methods
.method public abstract a(IILcom/google/android/exoplayer2/extractor/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endMasterElement(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method

.method public abstract floatElement(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method

.method public abstract getElementType(I)I
.end method

.method public abstract integerElement(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method

.method public abstract isLevel1Element(I)Z
.end method

.method public abstract startMasterElement(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method

.method public abstract stringElement(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation
.end method
