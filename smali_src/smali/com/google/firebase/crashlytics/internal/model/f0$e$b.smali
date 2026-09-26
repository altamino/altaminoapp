.class public abstract Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/firebase/crashlytics/internal/model/f0$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(Lcom/google/firebase/crashlytics/internal/model/f0$e$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d(Z)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(Lcom/google/firebase/crashlytics/internal/model/f0$e$c;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
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
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$b;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract i(I)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public k([B)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0;->a()Ljava/nio/charset/Charset;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public abstract l(Lcom/google/firebase/crashlytics/internal/model/f0$e$e;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract m(J)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract n(Lcom/google/firebase/crashlytics/internal/model/f0$e$f;)Lcom/google/firebase/crashlytics/internal/model/f0$e$b;
    .param p1    # Lcom/google/firebase/crashlytics/internal/model/f0$e$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
