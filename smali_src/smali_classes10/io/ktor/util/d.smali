.class public final Lio/ktor/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Z)Lio/ktor/util/b;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    new-instance p0, Lio/ktor/util/l;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/ktor/util/l;-><init>()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance p0, Lio/ktor/util/p;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lio/ktor/util/p;-><init>()V

    .line 14
    :goto_0
    return-object p0
.end method
