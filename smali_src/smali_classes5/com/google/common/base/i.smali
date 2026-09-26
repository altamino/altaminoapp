.class public final Lcom/google/common/base/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/i$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    return-object p1

    .line 7
    .line 8
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 9
    .line 10
    const-string p1, "Both parameters are null"

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    throw p0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/common/base/i$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/base/i$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/google/common/base/i$b;-><init>(Ljava/lang/String;Lcom/google/common/base/i$a;)V

    .line 15
    return-object v0
.end method
