.class public final Lm2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/b<",
        "Lm2/a;",
        ">;"
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

.method public static a()Lm2/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lm2/d$a;->a()Lm2/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c()Lm2/a;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lm2/b;->b()Lm2/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/e;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lm2/a;

    .line 13
    return-object v0
.end method


# virtual methods
.method public b()Lm2/a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lm2/d;->c()Lm2/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lm2/d;->b()Lm2/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
