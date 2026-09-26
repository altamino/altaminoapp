.class Lorg/threeten/bp/format/d$a;
.super Lra/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/format/d;->a(Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/format/b;)Lorg/threeten/bp/temporal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$effectiveChrono:Lorg/threeten/bp/chrono/h;

.field final synthetic val$effectiveDate:Lorg/threeten/bp/chrono/b;

.field final synthetic val$effectiveZone:Lorg/threeten/bp/r;

.field final synthetic val$temporal:Lorg/threeten/bp/temporal/e;


# direct methods
.method constructor <init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/temporal/e;Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/r;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    iput-object p2, p0, Lorg/threeten/bp/format/d$a;->val$temporal:Lorg/threeten/bp/temporal/e;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/threeten/bp/format/d$a;->val$effectiveChrono:Lorg/threeten/bp/chrono/h;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/threeten/bp/format/d$a;->val$effectiveZone:Lorg/threeten/bp/r;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->a()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$temporal:Lorg/threeten/bp/temporal/e;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/j<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lorg/threeten/bp/format/d$a;->val$effectiveChrono:Lorg/threeten/bp/chrono/h;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lorg/threeten/bp/format/d$a;->val$effectiveZone:Lorg/threeten/bp/r;

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$temporal:Lorg/threeten/bp/temporal/e;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->a()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/b;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$temporal:Lorg/threeten/bp/temporal/e;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->a()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$effectiveDate:Lorg/threeten/bp/chrono/b;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/d$a;->val$temporal:Lorg/threeten/bp/temporal/e;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 23
    move-result-wide v0

    .line 24
    return-wide v0
.end method
