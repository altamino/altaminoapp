.class public Lcom/google/firebase/remoteconfig/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/v$b;
    }
.end annotation


# instance fields
.field private final configSettings:Lc5/m;

.field private final lastFetchStatus:I

.field private final lastSuccessfulFetchTimeInMillis:J


# direct methods
.method private constructor <init>(JILc5/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/v;->lastSuccessfulFetchTimeInMillis:J

    iput p3, p0, Lcom/google/firebase/remoteconfig/internal/v;->lastFetchStatus:I

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/v;->configSettings:Lc5/m;

    return-void
.end method

.method synthetic constructor <init>(JILc5/m;Lcom/google/firebase/remoteconfig/internal/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/remoteconfig/internal/v;-><init>(JILc5/m;)V

    return-void
.end method

.method static b()Lcom/google/firebase/remoteconfig/internal/v$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/v$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/firebase/remoteconfig/internal/v$b;-><init>(Lcom/google/firebase/remoteconfig/internal/v$a;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/v;->lastFetchStatus:I

    return v0
.end method
