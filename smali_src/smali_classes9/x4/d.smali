.class public final Lx4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c;"
    }
.end annotation


# instance fields
.field private final module:Lx4/a;


# direct methods
.method public constructor <init>(Lx4/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lx4/d;->module:Lx4/a;

    .line 6
    return-void
.end method

.method public static a(Lx4/a;)Lx4/d;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lx4/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lx4/d;-><init>(Lx4/a;)V

    .line 6
    return-object v0
.end method

.method public static c(Lx4/a;)Lcom/google/firebase/installations/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx4/a;->c()Lcom/google/firebase/installations/h;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Ldagger/internal/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lcom/google/firebase/installations/h;

    .line 13
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/firebase/installations/h;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lx4/d;->module:Lx4/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lx4/d;->c(Lx4/a;)Lcom/google/firebase/installations/h;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx4/d;->b()Lcom/google/firebase/installations/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
