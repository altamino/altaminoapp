.class final Lcom/google/firebase/components/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/h0$a;
    }
.end annotation


# instance fields
.field private final allowedDeferredInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/g0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/g0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/g0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedPublishedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedSetDirectInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/g0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final allowedSetProviderInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/g0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final delegateContainer:Lcom/google/firebase/components/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/components/c;Lcom/google/firebase/components/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/c<",
            "*>;",
            "Lcom/google/firebase/components/e;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    new-instance v2, Ljava/util/HashSet;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    new-instance v3, Ljava/util/HashSet;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    new-instance v4, Ljava/util/HashSet;

    .line 26
    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/components/c;->g()Ljava/util/Set;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v6

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    check-cast v6, Lcom/google/firebase/components/s;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->e()Z

    .line 52
    move-result v7

    .line 53
    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->g()Z

    .line 58
    move-result v7

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->d()Z

    .line 80
    move-result v7

    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->g()Z

    .line 94
    move-result v7

    .line 95
    .line 96
    if-eqz v7, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-virtual {v6}, Lcom/google/firebase/components/s;->c()Lcom/google/firebase/components/g0;

    .line 108
    move-result-object v6

    .line 109
    .line 110
    .line 111
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_0

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/components/c;->k()Ljava/util/Set;

    .line 116
    move-result-object v5

    .line 117
    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 120
    move-result v5

    .line 121
    .line 122
    if-nez v5, :cond_5

    .line 123
    .line 124
    const-class v5, Ll4/c;

    .line 125
    .line 126
    .line 127
    invoke-static {v5}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 128
    move-result-object v5

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    iput-object v0, p0, Lcom/google/firebase/components/h0;->allowedDirectInterfaces:Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    iput-object v0, p0, Lcom/google/firebase/components/h0;->allowedProviderInterfaces:Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    iput-object v0, p0, Lcom/google/firebase/components/h0;->allowedDeferredInterfaces:Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    iput-object v0, p0, Lcom/google/firebase/components/h0;->allowedSetDirectInterfaces:Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    iput-object v0, p0, Lcom/google/firebase/components/h0;->allowedSetProviderInterfaces:Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/google/firebase/components/c;->k()Ljava/util/Set;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    iput-object p1, p0, Lcom/google/firebase/components/h0;->allowedPublishedEvents:Ljava/util/Set;

    .line 168
    .line 169
    iput-object p2, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 170
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/components/d;->f(Lcom/google/firebase/components/e;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Lo4/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo4/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/h0;->d(Lcom/google/firebase/components/g0;)Lo4/b;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c(Lcom/google/firebase/components/g0;)Lo4/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/g0<",
            "TT;>;)",
            "Lo4/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/h0;->allowedDeferredInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/firebase/components/e;->c(Lcom/google/firebase/components/g0;)Lo4/a;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/components/u;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const-string p1, "Attempting to request an undeclared dependency Deferred<%s>."

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public d(Lcom/google/firebase/components/g0;)Lo4/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/g0<",
            "TT;>;)",
            "Lo4/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/h0;->allowedProviderInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/firebase/components/e;->d(Lcom/google/firebase/components/g0;)Lo4/b;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/components/u;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const-string p1, "Attempting to request an undeclared dependency Provider<%s>."

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public e(Lcom/google/firebase/components/g0;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/g0<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/h0;->allowedSetDirectInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/firebase/components/e;->e(Lcom/google/firebase/components/g0;)Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/components/u;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const-string p1, "Attempting to request an undeclared dependency Set<%s>."

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public f(Lcom/google/firebase/components/g0;)Lo4/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/g0<",
            "TT;>;)",
            "Lo4/b<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/h0;->allowedSetProviderInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/firebase/components/e;->f(Lcom/google/firebase/components/g0;)Lo4/b;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/components/u;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const-string p1, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/components/g0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/h0;->allowedDirectInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/firebase/components/e;->g(Lcom/google/firebase/components/g0;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/google/firebase/components/u;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    aput-object p1, v1, v2

    .line 24
    .line 25
    const-string p1, "Attempting to request an undeclared dependency %s."

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/h0;->allowedDirectInterfaces:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/components/h0;->delegateContainer:Lcom/google/firebase/components/e;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/google/firebase/components/e;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-class v1, Ll4/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_0
    new-instance p1, Lcom/google/firebase/components/h0$a;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/firebase/components/h0;->allowedPublishedEvents:Ljava/util/Set;

    .line 32
    .line 33
    check-cast v0, Ll4/c;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v1, v0}, Lcom/google/firebase/components/h0$a;-><init>(Ljava/util/Set;Ll4/c;)V

    .line 37
    return-object p1

    .line 38
    .line 39
    :cond_1
    new-instance v0, Lcom/google/firebase/components/u;

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    aput-object p1, v1, v2

    .line 46
    .line 47
    const-string p1, "Attempting to request an undeclared dependency %s."

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/google/firebase/components/u;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method public h(Ljava/lang/Class;)Lo4/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo4/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/components/g0;->b(Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/firebase/components/h0;->c(Lcom/google/firebase/components/g0;)Lo4/a;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
