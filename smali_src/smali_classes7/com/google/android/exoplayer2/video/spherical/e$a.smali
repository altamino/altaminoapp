.class public final Lcom/google/android/exoplayer2/video/spherical/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final subMeshes:[Lcom/google/android/exoplayer2/video/spherical/e$b;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/video/spherical/e$b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/e$a;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/video/spherical/e$b;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e$a;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/e$a;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/e$b;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
