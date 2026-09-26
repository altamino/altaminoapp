.class public Lcom/google/android/exoplayer2/source/i1;
.super Lcom/google/android/exoplayer2/v2;
.source "SourceFile"


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/android/exoplayer2/v2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/i1;->uri:Landroid/net/Uri;

    .line 9
    return-void
.end method
