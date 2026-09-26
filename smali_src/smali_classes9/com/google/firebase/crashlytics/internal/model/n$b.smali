.class final Lcom/google/firebase/crashlytics/internal/model/n$b;
.super Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private appExitInfo:Lcom/google/firebase/crashlytics/internal/model/f0$a;

.field private binaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private exception:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

.field private signal:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

.field private threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->signal:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

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
    const-string v1, " signal"

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
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->binaries:Ljava/util/List;

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
    const-string v1, " binaries"

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
    .line 47
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/n;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->threads:Ljava/util/List;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->exception:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->appExitInfo:Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 59
    .line 60
    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->signal:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 61
    .line 62
    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->binaries:Ljava/util/List;

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v2, v0

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/crashlytics/internal/model/n;-><init>(Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;Lcom/google/firebase/crashlytics/internal/model/f0$a;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/n$a;)V

    .line 68
    return-object v0

    .line 69
    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v3, "Missing required properties:"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->appExitInfo:Lcom/google/firebase/crashlytics/internal/model/f0$a;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$a;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->binaries:Ljava/util/List;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null binaries"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->exception:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$c;

    return-object p0
.end method

.method public e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->signal:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$d;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null signal"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public f(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$e;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->threads:Ljava/util/List;

    return-object p0
.end method
