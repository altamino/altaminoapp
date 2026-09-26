.class public Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/NVAppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstVisibleChildAtMinimumHeight:Z

.field firstVisibleChildIndex:I

.field firstVisibleChildPercentageShown:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    iput p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    iget p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    iget p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    iget-boolean p2, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 16
    int-to-byte p2, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    return-void
.end method
