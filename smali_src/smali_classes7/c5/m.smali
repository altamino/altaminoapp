.class public Lc5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/m$b;
    }
.end annotation


# instance fields
.field private final fetchTimeoutInSeconds:J

.field private final minimumFetchInterval:J


# direct methods
.method private constructor <init>(Lc5/m$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc5/m$b;->a(Lc5/m$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc5/m;->fetchTimeoutInSeconds:J

    .line 4
    invoke-static {p1}, Lc5/m$b;->b(Lc5/m$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lc5/m;->minimumFetchInterval:J

    return-void
.end method

.method synthetic constructor <init>(Lc5/m$b;Lc5/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc5/m;-><init>(Lc5/m$b;)V

    return-void
.end method
