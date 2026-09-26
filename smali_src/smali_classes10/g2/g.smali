.class public abstract Lg2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/g$a;
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

.method public static a()Lg2/g;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lg2/b;

    .line 3
    .line 4
    sget-object v1, Lg2/g$a;->FATAL_ERROR:Lg2/g$a;

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lg2/b;-><init>(Lg2/g$a;J)V

    .line 10
    return-object v0
.end method

.method public static d()Lg2/g;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lg2/b;

    .line 3
    .line 4
    sget-object v1, Lg2/g$a;->INVALID_PAYLOAD:Lg2/g$a;

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lg2/b;-><init>(Lg2/g$a;J)V

    .line 10
    return-object v0
.end method

.method public static e(J)Lg2/g;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lg2/b;

    .line 3
    .line 4
    sget-object v1, Lg2/g$a;->OK:Lg2/g$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1}, Lg2/b;-><init>(Lg2/g$a;J)V

    .line 8
    return-object v0
.end method

.method public static f()Lg2/g;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lg2/b;

    .line 3
    .line 4
    sget-object v1, Lg2/g$a;->TRANSIENT_ERROR:Lg2/g$a;

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lg2/b;-><init>(Lg2/g$a;J)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lg2/g$a;
.end method
