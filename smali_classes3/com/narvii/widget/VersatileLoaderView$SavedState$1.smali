.class final Lcom/narvii/widget/VersatileLoaderView$SavedState$1;
.super Ljava/lang/Object;
.source "VersatileLoaderView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/VersatileLoaderView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/narvii/widget/VersatileLoaderView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/VersatileLoaderView$SavedState;
    .locals 1

    .line 325
    new-instance v0, Lcom/narvii/widget/VersatileLoaderView$SavedState;

    invoke-direct {v0, p1}, Lcom/narvii/widget/VersatileLoaderView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VersatileLoaderView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/VersatileLoaderView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/narvii/widget/VersatileLoaderView$SavedState;
    .locals 0

    .line 330
    new-array p1, p1, [Lcom/narvii/widget/VersatileLoaderView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/narvii/widget/VersatileLoaderView$SavedState$1;->newArray(I)[Lcom/narvii/widget/VersatileLoaderView$SavedState;

    move-result-object p1

    return-object p1
.end method
