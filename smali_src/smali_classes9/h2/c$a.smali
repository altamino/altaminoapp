.class public final Lh2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private events_dropped_count_:J

.field private reason_:Lh2/c$b;


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
    iput-wide v0, p0, Lh2/c$a;->events_dropped_count_:J

    .line 8
    .line 9
    sget-object v0, Lh2/c$b;->REASON_UNKNOWN:Lh2/c$b;

    .line 10
    .line 11
    iput-object v0, p0, Lh2/c$a;->reason_:Lh2/c$b;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Lh2/c;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lh2/c;

    .line 3
    .line 4
    iget-wide v1, p0, Lh2/c$a;->events_dropped_count_:J

    .line 5
    .line 6
    iget-object v3, p0, Lh2/c$a;->reason_:Lh2/c$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lh2/c;-><init>(JLh2/c$b;)V

    .line 10
    return-object v0
.end method

.method public b(J)Lh2/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lh2/c$a;->events_dropped_count_:J

    return-object p0
.end method

.method public c(Lh2/c$b;)Lh2/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/c$a;->reason_:Lh2/c$b;

    return-object p0
.end method
