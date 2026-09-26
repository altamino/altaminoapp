.class public Ly0/f;
.super Ly0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly0/a<",
        "Ly0/f;",
        ">;"
    }
.end annotation


# static fields
.field private static centerCropOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static centerInsideOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static circleCropOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static fitCenterOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static noAnimationOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static noTransformOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheFalseOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static skipMemoryCacheTrueOptions:Ly0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly0/a;-><init>()V

    .line 4
    return-void
.end method

.method public static b0(Ljava/lang/Class;)Ly0/f;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ly0/f;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ly0/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ly0/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ly0/a;->f(Ljava/lang/Class;)Ly0/a;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Ly0/f;

    .line 12
    return-object p0
.end method

.method public static c0(Lcom/bumptech/glide/load/engine/j;)Ly0/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ly0/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ly0/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ly0/a;->g(Lcom/bumptech/glide/load/engine/j;)Ly0/a;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Ly0/f;

    .line 12
    return-object p0
.end method

.method public static d0(Lcom/bumptech/glide/load/g;)Ly0/f;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ly0/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ly0/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ly0/a;->T(Lcom/bumptech/glide/load/g;)Ly0/a;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Ly0/f;

    .line 12
    return-object p0
.end method
