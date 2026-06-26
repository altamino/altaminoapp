.class final Lcom/narvii/widget/NVTabLayout$SavedState$1;
.super Ljava/lang/Object;
.source "NVTabLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVTabLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/narvii/widget/NVTabLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/NVTabLayout$SavedState;
    .locals 1

    .line 278
    new-instance v0, Lcom/narvii/widget/NVTabLayout$SavedState;

    invoke-direct {v0, p1}, Lcom/narvii/widget/NVTabLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVTabLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/NVTabLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/narvii/widget/NVTabLayout$SavedState;
    .locals 0

    .line 283
    new-array p1, p1, [Lcom/narvii/widget/NVTabLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVTabLayout$SavedState$1;->newArray(I)[Lcom/narvii/widget/NVTabLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
