.class final Lcom/google/firebase/crashlytics/internal/model/l$b;
.super Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

.field private device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

.field private log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

.field private rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

.field private timestamp:Ljava/lang/Long;

.field private type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->timestamp:Ljava/lang/Long;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->type:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->b()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->c()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->e()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/model/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/model/l$b;-><init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->timestamp:Ljava/lang/Long;

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
    const-string v1, " timestamp"

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
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->type:Ljava/lang/String;

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
    const-string v1, " type"

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
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

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
    const-string v1, " app"

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
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, " device"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/l;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->timestamp:Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 100
    move-result-wide v3

    .line 101
    .line 102
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->type:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 107
    .line 108
    iget-object v8, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 109
    .line 110
    iget-object v9, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 111
    const/4 v10, 0x0

    .line 112
    move-object v2, v0

    .line 113
    .line 114
    .line 115
    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/crashlytics/internal/model/l;-><init>(JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;Lcom/google/firebase/crashlytics/internal/model/l$a;)V

    .line 116
    return-object v0

    .line 117
    .line 118
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v3, "Missing required properties:"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    throw v0
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->app:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null app"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->device:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$c;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null device"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->log:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    return-object p0
.end method

.method public e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->rollouts:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    return-object p0
.end method

.method public f(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->timestamp:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/l$b;->type:Ljava/lang/String;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null type"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method
