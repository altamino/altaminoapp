.class final Lokio/internal/EocdRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final centralDirectoryOffset:J

.field private final commentByteCount:I

.field private final entryCount:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lokio/internal/EocdRecord;->entryCount:J

    .line 6
    .line 7
    iput-wide p3, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    .line 8
    .line 9
    iput p5, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    .line 10
    return-void
.end method


# virtual methods
.method public final getCentralDirectoryOffset()J
    .locals 2

    iget-wide v0, p0, Lokio/internal/EocdRecord;->centralDirectoryOffset:J

    return-wide v0
.end method

.method public final getCommentByteCount()I
    .locals 1

    iget v0, p0, Lokio/internal/EocdRecord;->commentByteCount:I

    return v0
.end method

.method public final getEntryCount()J
    .locals 2

    iget-wide v0, p0, Lokio/internal/EocdRecord;->entryCount:J

    return-wide v0
.end method
