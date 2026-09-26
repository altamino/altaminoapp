.class public abstract Lcom/google/android/datatransport/cct/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/o$a;,
        Lcom/google/android/datatransport/cct/internal/o$b;,
        Lcom/google/android/datatransport/cct/internal/o$c;
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

.method public static a()Lcom/google/android/datatransport/cct/internal/o$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/internal/i$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/i$b;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/android/datatransport/cct/internal/o$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Lcom/google/android/datatransport/cct/internal/o$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
