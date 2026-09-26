.class final Lcom/google/firebase/crashlytics/internal/model/l;
.super Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/l$b;
    }
.end annotation


# instance fields
.field private final app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

.field private final device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

.field private final log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

.field private final rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

.field private final timestamp:J

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;)V
    .locals 0
    .param p6    # Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->timestamp:J

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/model/l;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/model/l;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/model/l;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/model/l;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/model/l;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;Lcom/google/firebase/crashlytics/internal/model/l$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/crashlytics/internal/model/l;-><init>(JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    return-object v0
.end method

.method public c()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    return-object v0
.end method

.method public d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    return-object v0
.end method

.method public e()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/firebase/crashlytics/internal/model/l;->timestamp:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->f()J

    .line 17
    move-result-wide v5

    .line 18
    .line 19
    cmp-long v1, v3, v5

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->type:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->g()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->b()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->c()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->e()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    if-nez p1, :cond_3

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->e()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move v0, v2

    .line 102
    :goto_1
    return v0

    .line 103
    :cond_4
    return v2
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->timestamp:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->type:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/l$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/internal/model/l$b;-><init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/model/l$a;)V

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/model/l;->timestamp:J

    .line 3
    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    ushr-long v2, v0, v2

    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    .line 10
    .line 11
    const v1, 0xf4243

    .line 12
    xor-int/2addr v0, v1

    .line 13
    mul-int/2addr v0, v1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/l;->type:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v2

    .line 20
    xor-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/l;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 27
    move-result v2

    .line 28
    xor-int/2addr v0, v2

    .line 29
    mul-int/2addr v0, v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/l;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    move-result v2

    .line 36
    xor-int/2addr v0, v2

    .line 37
    mul-int/2addr v0, v1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/l;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 40
    const/4 v3, 0x0

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    move v2, v3

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 48
    move-result v2

    .line 49
    :goto_0
    xor-int/2addr v0, v2

    .line 50
    mul-int/2addr v0, v1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 59
    move-result v3

    .line 60
    :goto_1
    xor-int/2addr v0, v3

    .line 61
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Event{timestamp="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->timestamp:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", type="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->type:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", app="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", device="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ", log="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, ", rollouts="

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v1, "}"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
