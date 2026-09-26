.class final Lcom/google/firebase/crashlytics/internal/model/m$b;
.super Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private appProcessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private background:Ljava/lang/Boolean;

.field private currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

.field private customAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

.field private internalKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private uiOrientation:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->f()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->customAttributes:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->internalKeys:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->c()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->background:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->appProcessDetails:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->uiOrientation:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lcom/google/firebase/crashlytics/internal/model/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/model/m$b;-><init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

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
    const-string v1, " execution"

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
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->uiOrientation:Ljava/lang/Integer;

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
    const-string v1, " uiOrientation"

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
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/m;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->customAttributes:Ljava/util/List;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->internalKeys:Ljava/util/List;

    .line 59
    .line 60
    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->background:Ljava/lang/Boolean;

    .line 61
    .line 62
    iget-object v7, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 63
    .line 64
    iget-object v8, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->appProcessDetails:Ljava/util/List;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->uiOrientation:Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v9

    .line 71
    const/4 v10, 0x0

    .line 72
    move-object v2, v0

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/crashlytics/internal/model/m;-><init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/model/m$a;)V

    .line 76
    return-object v0

    .line 77
    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string v3, "Missing required properties:"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0
.end method

.method public b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->appProcessDetails:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/lang/Boolean;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->background:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 0
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    return-object p0
.end method

.method public e(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->customAttributes:Ljava/util/List;

    return-object p0
.end method

.method public f(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v0, "Null execution"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->internalKeys:Ljava/util/List;

    return-object p0
.end method

.method public h(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m$b;->uiOrientation:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method
