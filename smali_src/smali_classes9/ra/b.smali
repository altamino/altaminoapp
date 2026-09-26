.class public abstract Lra/b;
.super Lra/c;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide p1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0, v1, p3}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, p1, p2, p3}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
