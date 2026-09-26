.class Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    const-class v1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 15
    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;-><init>(Ljava/util/List;)V

    .line 20
    return-object p1
.end method

.method public b(I)[Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;
    .locals 0

    .line 1
    .line 2
    new-array p1, p1, [Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$a;->a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$a;->b(I)[Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
