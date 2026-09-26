.class public Lcom/narvii/util/particles/RandomInitalizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/b;


# instance fields
.field private pi1:La6/b;

.field private pi1Ods:F

.field private pi2:La6/b;


# direct methods
.method public constructor <init>(La6/b;F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1:La6/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi2:La6/b;

    iput p2, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1Ods:F

    return-void
.end method

.method public constructor <init>(La6/b;La6/b;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1:La6/b;

    iput-object p2, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi2:La6/b;

    iput p3, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1Ods:F

    return-void
.end method


# virtual methods
.method public initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1Ods:F

    .line 7
    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi1:La6/b;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, La6/b;->initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/particles/RandomInitalizer;->pi2:La6/b;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, La6/b;->initParticle(Lcom/plattysoft/leonids/b;Ljava/util/Random;)V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method
