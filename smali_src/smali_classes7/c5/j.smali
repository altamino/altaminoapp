.class public Lc5/j;
.super Lc5/i;
.source "SourceFile"


# instance fields
.field private final throttleEndTimeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string v0, "Fetch was throttled."

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lc5/j;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc5/i;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Lc5/j;->throttleEndTimeMillis:J

    return-void
.end method
