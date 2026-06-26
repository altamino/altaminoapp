.class public abstract Lcom/google/android/exoplayer2/drm/DecryptionResource;
.super Ljava/lang/Object;
.source "DecryptionResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DecryptionResource$Owner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/exoplayer2/drm/DecryptionResource<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final owner:Lcom/google/android/exoplayer2/drm/DecryptionResource$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DecryptionResource$Owner<",
            "TT;>;"
        }
    .end annotation
.end field

.field private referenceCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DecryptionResource$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DecryptionResource$Owner<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DecryptionResource;->owner:Lcom/google/android/exoplayer2/drm/DecryptionResource$Owner;

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DecryptionResource;->referenceCount:I

    return-void
.end method
