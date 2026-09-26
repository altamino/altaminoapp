.class public Lcom/facebook/rebound/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static defaultConfig:Lcom/facebook/rebound/f;


# instance fields
.field public friction:D

.field public tension:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    .line 3
    .line 4
    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/f;->a(DD)Lcom/facebook/rebound/f;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lcom/facebook/rebound/f;->defaultConfig:Lcom/facebook/rebound/f;

    .line 11
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/facebook/rebound/f;->tension:D

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/facebook/rebound/f;->friction:D

    .line 8
    return-void
.end method

.method public static a(DD)Lcom/facebook/rebound/f;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/facebook/rebound/f;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/facebook/rebound/c;->b(D)D

    .line 6
    move-result-wide p0

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Lcom/facebook/rebound/c;->a(D)D

    .line 10
    move-result-wide p2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/rebound/f;-><init>(DD)V

    .line 14
    return-object v0
.end method
