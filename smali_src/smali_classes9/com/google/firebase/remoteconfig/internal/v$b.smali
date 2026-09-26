.class public Lcom/google/firebase/remoteconfig/internal/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private builderConfigSettings:Lc5/m;

.field private builderLastFetchStatus:I

.field private builderLastSuccessfulFetchTimeInMillis:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/v$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/remoteconfig/internal/v;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/firebase/remoteconfig/internal/v;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/google/firebase/remoteconfig/internal/v$b;->builderLastSuccessfulFetchTimeInMillis:J

    .line 5
    .line 6
    iget v3, p0, Lcom/google/firebase/remoteconfig/internal/v$b;->builderLastFetchStatus:I

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/v$b;->builderConfigSettings:Lc5/m;

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v6

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/internal/v;-><init>(JILc5/m;Lcom/google/firebase/remoteconfig/internal/v$a;)V

    .line 14
    return-object v6
.end method

.method b(Lc5/m;)Lcom/google/firebase/remoteconfig/internal/v$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/v$b;->builderConfigSettings:Lc5/m;

    return-object p0
.end method

.method c(I)Lcom/google/firebase/remoteconfig/internal/v$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/v$b;->builderLastFetchStatus:I

    return-object p0
.end method

.method public d(J)Lcom/google/firebase/remoteconfig/internal/v$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/v$b;->builderLastSuccessfulFetchTimeInMillis:J

    return-object p0
.end method
