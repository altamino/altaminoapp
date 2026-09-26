.class public final Lh2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private end_ms_:J

.field private start_ms_:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lh2/f$a;->start_ms_:J

    .line 8
    .line 9
    iput-wide v0, p0, Lh2/f$a;->end_ms_:J

    .line 10
    return-void
.end method


# virtual methods
.method public a()Lh2/f;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lh2/f;

    .line 3
    .line 4
    iget-wide v1, p0, Lh2/f$a;->start_ms_:J

    .line 5
    .line 6
    iget-wide v3, p0, Lh2/f$a;->end_ms_:J

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lh2/f;-><init>(JJ)V

    .line 10
    return-object v0
.end method

.method public b(J)Lh2/f$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lh2/f$a;->end_ms_:J

    return-object p0
.end method

.method public c(J)Lh2/f$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lh2/f$a;->start_ms_:J

    return-object p0
.end method
