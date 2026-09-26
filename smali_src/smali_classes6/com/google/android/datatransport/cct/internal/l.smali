.class public abstract Lcom/google/android/datatransport/cct/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/l$a;
    }
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

.method private static a()Lcom/google/android/datatransport/cct/internal/l$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/internal/f$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/f$b;-><init>()V

    .line 6
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/l$a;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/l;->a()Lcom/google/android/datatransport/cct/internal/l$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/internal/l$a;->g(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/l$a;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static j([B)Lcom/google/android/datatransport/cct/internal/l$a;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/l;->a()Lcom/google/android/datatransport/cct/internal/l$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/internal/l$a;->f([B)Lcom/google/android/datatransport/cct/internal/l$a;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method

.method public abstract e()Lcom/google/android/datatransport/cct/internal/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract g()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h()J
.end method
