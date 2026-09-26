.class public abstract Lcom/google/firebase/crashlytics/internal/model/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/f0$b;,
        Lcom/google/firebase/crashlytics/internal/model/f0$a;,
        Lcom/google/firebase/crashlytics/internal/model/f0$e;,
        Lcom/google/firebase/crashlytics/internal/model/f0$c;,
        Lcom/google/firebase/crashlytics/internal/model/f0$d;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "UTF-8"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/f0;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/f0;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static b()Lcom/google/firebase/crashlytics/internal/model/f0$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/b$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/b$b;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract c()Lcom/google/firebase/crashlytics/internal/model/f0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract i()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract j()Lcom/google/firebase/crashlytics/internal/model/f0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract k()I
.end method

.method public abstract l()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract m()Lcom/google/firebase/crashlytics/internal/model/f0$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected abstract n()Lcom/google/firebase/crashlytics/internal/model/f0$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public o(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->n()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->p(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public p(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    move-object p1, p0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->n()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public q(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->n()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->q(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "Reports without sessions cannot have events added to them."

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public r(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->n()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public s(Lcom/google/firebase/crashlytics/internal/model/f0$d;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 2
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->n()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->i(Lcom/google/firebase/crashlytics/internal/model/f0$d;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public t(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;
    .locals 2
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->n()Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0;->m()Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/model/f0$e;->r(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->l(Lcom/google/firebase/crashlytics/internal/model/f0$e;)Lcom/google/firebase/crashlytics/internal/model/f0$b;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
