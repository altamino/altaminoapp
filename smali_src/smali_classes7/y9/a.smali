.class public Ly9/a;
.super Lx9/e;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private streamCount:J

.field private subscriberCount:J

.field private verified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lx9/e$a;->CHANNEL:Lx9/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2, p3}, Lx9/e;-><init>(Lx9/e$a;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    const-wide/16 p1, -0x1

    .line 8
    .line 9
    iput-wide p1, p0, Ly9/a;->subscriberCount:J

    .line 10
    .line 11
    iput-wide p1, p0, Ly9/a;->streamCount:J

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-boolean p1, p0, Ly9/a;->verified:Z

    .line 15
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly9/a;->description:Ljava/lang/String;

    return-void
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ly9/a;->streamCount:J

    return-void
.end method

.method public i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ly9/a;->subscriberCount:J

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly9/a;->verified:Z

    return-void
.end method
