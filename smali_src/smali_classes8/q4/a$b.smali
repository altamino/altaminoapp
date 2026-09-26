.class final Lq4/a$b;
.super Lq4/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private authToken:Ljava/lang/String;

.field private expiresInSecs:Ljava/lang/Long;

.field private firebaseInstallationId:Ljava/lang/String;

.field private fisError:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private registrationStatus:Lq4/c$a;

.field private tokenCreationEpochInSecs:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lq4/d$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lq4/d;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lq4/d$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lq4/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq4/a$b;->firebaseInstallationId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lq4/d;->g()Lq4/c$a;

    move-result-object v0

    iput-object v0, p0, Lq4/a$b;->registrationStatus:Lq4/c$a;

    .line 6
    invoke-virtual {p1}, Lq4/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq4/a$b;->authToken:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lq4/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq4/a$b;->refreshToken:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lq4/d;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lq4/a$b;->expiresInSecs:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Lq4/d;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lq4/a$b;->tokenCreationEpochInSecs:Ljava/lang/Long;

    .line 10
    invoke-virtual {p1}, Lq4/d;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq4/a$b;->fisError:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lq4/d;Lq4/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq4/a$b;-><init>(Lq4/d;)V

    return-void
.end method


# virtual methods
.method public a()Lq4/d;
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lq4/a$b;->registrationStatus:Lq4/c$a;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, " registrationStatus"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lq4/a$b;->expiresInSecs:Ljava/lang/Long;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, " expiresInSecs"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lq4/a$b;->tokenCreationEpochInSecs:Ljava/lang/Long;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, " tokenCreationEpochInSecs"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    new-instance v0, Lq4/a;

    .line 74
    .line 75
    iget-object v3, p0, Lq4/a$b;->firebaseInstallationId:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v4, p0, Lq4/a$b;->registrationStatus:Lq4/c$a;

    .line 78
    .line 79
    iget-object v5, p0, Lq4/a$b;->authToken:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v6, p0, Lq4/a$b;->refreshToken:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, p0, Lq4/a$b;->expiresInSecs:Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 87
    move-result-wide v7

    .line 88
    .line 89
    iget-object v1, p0, Lq4/a$b;->tokenCreationEpochInSecs:Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 93
    move-result-wide v9

    .line 94
    .line 95
    iget-object v11, p0, Lq4/a$b;->fisError:Ljava/lang/String;

    .line 96
    const/4 v12, 0x0

    .line 97
    move-object v2, v0

    .line 98
    .line 99
    .line 100
    invoke-direct/range {v2 .. v12}, Lq4/a;-><init>(Ljava/lang/String;Lq4/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lq4/a$a;)V

    .line 101
    return-object v0

    .line 102
    .line 103
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    const-string v3, "Missing required properties:"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0
.end method

.method public b(Ljava/lang/String;)Lq4/d$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lq4/a$b;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lq4/d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lq4/a$b;->expiresInSecs:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lq4/d$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lq4/a$b;->firebaseInstallationId:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lq4/d$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lq4/a$b;->fisError:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lq4/d$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lq4/a$b;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public g(Lq4/c$a;)Lq4/d$a;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lq4/a$b;->registrationStatus:Lq4/c$a;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null registrationStatus"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public h(J)Lq4/d$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lq4/a$b;->tokenCreationEpochInSecs:Ljava/lang/Long;

    .line 7
    return-object p0
.end method
