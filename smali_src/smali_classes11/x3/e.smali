.class public abstract Lx3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/e$a;
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

.method public static b()Lx3/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lx3/e;->c(Lcom/google/firebase/f;)Lx3/e;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static c(Lcom/google/firebase/f;)Lx3/e;
    .locals 1
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Lx3/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lx3/e;

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract a(Z)Lcom/google/android/gms/tasks/Task;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lx3/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(Lx3/b;)V
    .param p1    # Lx3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
