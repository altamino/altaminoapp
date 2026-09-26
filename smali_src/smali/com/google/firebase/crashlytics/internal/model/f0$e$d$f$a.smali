.class public abstract Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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
.method public abstract a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$e;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;"
        }
    .end annotation
.end method
