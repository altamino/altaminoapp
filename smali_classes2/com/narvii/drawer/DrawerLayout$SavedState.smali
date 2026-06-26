.class public Lcom/narvii/drawer/DrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerLayout;
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
            "Lcom/narvii/drawer/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeEnd:I

.field lockModeLeft:I

.field lockModeRight:I

.field lockModeStart:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2017
    new-instance v0, Lcom/narvii/drawer/DrawerLayout$SavedState$1;

    invoke-direct {v0}, Lcom/narvii/drawer/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/narvii/drawer/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1995
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 1988
    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeRight:I

    .line 1999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeStart:I

    .line 2000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeEnd:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2004
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 1988
    iput p1, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2009
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2010
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2012
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeRight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    iget p2, p0, Lcom/narvii/drawer/DrawerLayout$SavedState;->lockModeEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
