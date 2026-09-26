.class final Lcom/google/firebase/crashlytics/internal/model/m;
.super Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/m$b;
    }
.end annotation


# instance fields
.field private final appProcessDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final background:Ljava/lang/Boolean;

.field private final currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

.field private final customAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

.field private final internalKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation
.end field

.field private final uiOrientation:I


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;Ljava/util/List;I)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/model/m;->customAttributes:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/model/m;->internalKeys:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/model/m;->background:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/model/m;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/model/m;->appProcessDetails:Ljava/util/List;

    iput p7, p0, Lcom/google/firebase/crashlytics/internal/model/m;->uiOrientation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/model/m$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/crashlytics/internal/model/m;-><init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->appProcessDetails:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->background:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->customAttributes:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    instance-of v1, p1, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->f()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->customAttributes:Ljava/util/List;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->e()Ljava/util/List;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-nez v1, :cond_6

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->e()Ljava/util/List;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->internalKeys:Ljava/util/List;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->g()Ljava/util/List;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-nez v1, :cond_6

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->g()Ljava/util/List;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->background:Ljava/lang/Boolean;

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->c()Ljava/lang/Boolean;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-nez v1, :cond_6

    .line 76
    goto :goto_2

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->c()Ljava/lang/Boolean;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    :goto_2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    if-nez v1, :cond_6

    .line 97
    goto :goto_3

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->d()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    :goto_3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->appProcessDetails:Ljava/util/List;

    .line 110
    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->b()Ljava/util/List;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    goto :goto_4

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->b()Ljava/util/List;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    :goto_4
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->uiOrientation:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->h()I

    .line 134
    move-result p1

    .line 135
    .line 136
    if-ne v1, p1, :cond_6

    .line 137
    goto :goto_5

    .line 138
    :cond_6
    move v0, v2

    .line 139
    :goto_5
    return v0

    .line 140
    :cond_7
    return v2
.end method

.method public f()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->internalKeys:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->uiOrientation:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/m;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/m;->customAttributes:Ljava/util/List;

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    move v2, v3

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 22
    move-result v2

    .line 23
    :goto_0
    xor-int/2addr v0, v2

    .line 24
    mul-int/2addr v0, v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/m;->internalKeys:Ljava/util/List;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    move v2, v3

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 34
    move-result v2

    .line 35
    :goto_1
    xor-int/2addr v0, v2

    .line 36
    mul-int/2addr v0, v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/m;->background:Ljava/lang/Boolean;

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    move v2, v3

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 46
    move-result v2

    .line 47
    :goto_2
    xor-int/2addr v0, v2

    .line 48
    mul-int/2addr v0, v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/m;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    move v2, v3

    .line 54
    goto :goto_3

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 58
    move-result v2

    .line 59
    :goto_3
    xor-int/2addr v0, v2

    .line 60
    mul-int/2addr v0, v1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/m;->appProcessDetails:Ljava/util/List;

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    goto :goto_4

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    .line 69
    move-result v3

    .line 70
    :goto_4
    xor-int/2addr v0, v3

    .line 71
    mul-int/2addr v0, v1

    .line 72
    .line 73
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->uiOrientation:I

    .line 74
    xor-int/2addr v0, v1

    .line 75
    return v0
.end method

.method public i()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/m$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/internal/model/m$b;-><init>(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;Lcom/google/firebase/crashlytics/internal/model/m$a;)V

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Application{execution="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->execution:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", customAttributes="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->customAttributes:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", internalKeys="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->internalKeys:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", background="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->background:Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ", currentProcessDetails="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->currentProcessDetails:Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$c;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, ", appProcessDetails="

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->appProcessDetails:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, ", uiOrientation="

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget v1, p0, Lcom/google/firebase/crashlytics/internal/model/m;->uiOrientation:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "}"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
