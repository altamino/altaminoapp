.class Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LeaderBoardOverLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/LeaderBoardOverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field height1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState$1;

    invoke-direct {v0}, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->height1:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget p2, p0, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;->height1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
