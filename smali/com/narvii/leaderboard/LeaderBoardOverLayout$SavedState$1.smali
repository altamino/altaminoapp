.class final Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState$1;
.super Ljava/lang/Object;
.source "LeaderBoardOverLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;
    .locals 1

    .line 77
    new-instance v0, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    invoke-direct {v0, p1}, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;
    .locals 0

    .line 82
    new-array p1, p1, [Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState$1;->newArray(I)[Lcom/narvii/leaderboard/LeaderBoardOverLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
