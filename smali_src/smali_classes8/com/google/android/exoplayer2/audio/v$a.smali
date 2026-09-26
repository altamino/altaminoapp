.class public final Lcom/google/android/exoplayer2/audio/v$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final format:Lcom/google/android/exoplayer2/a2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/v$a;->format:Lcom/google/android/exoplayer2/a2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/v$a;->format:Lcom/google/android/exoplayer2/a2;

    return-void
.end method
