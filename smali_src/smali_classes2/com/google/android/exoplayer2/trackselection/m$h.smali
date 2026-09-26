.class abstract Lcom/google/android/exoplayer2/trackselection/m$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/m$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/exoplayer2/trackselection/m$h<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplayer2/a2;

.field public final rendererIndex:I

.field public final trackGroup:Lcom/google/android/exoplayer2/source/f1;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/f1;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->rendererIndex:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->trackGroup:Lcom/google/android/exoplayer2/source/f1;

    .line 8
    .line 9
    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->trackIndex:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/m$h;->format:Lcom/google/android/exoplayer2/a2;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lcom/google/android/exoplayer2/trackselection/m$h;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
