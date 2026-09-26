.class public abstract Lf2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.method public static d(Ljava/lang/Object;)Lf2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lf2/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lf2/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    sget-object v2, Lf2/d;->DEFAULT:Lf2/d;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0, v2}, Lf2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lf2/d;)V

    .line 9
    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lf2/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lf2/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lf2/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    sget-object v2, Lf2/d;->HIGHEST:Lf2/d;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0, v2}, Lf2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lf2/d;)V

    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Lf2/d;
.end method
