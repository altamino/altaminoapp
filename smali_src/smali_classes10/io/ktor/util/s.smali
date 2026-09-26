.class public final Lio/ktor/util/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVELOPMENT_MODE_KEY:Ljava/lang/String; = "io.ktor.development"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(Lio/ktor/util/r;)Lio/ktor/util/q;
    .locals 1
    .param p0    # Lio/ktor/util/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object p0, Lio/ktor/util/q;->Jvm:Lio/ktor/util/q;

    .line 8
    return-object p0
.end method

.method public static final b(Lio/ktor/util/r;)Z
    .locals 2
    .param p0    # Lio/ktor/util/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p0, "io.ktor.development"

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 18
    move-result p0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    move v0, v1

    .line 23
    :cond_0
    return v0
.end method

.method public static final c(Lio/ktor/util/r;)Z
    .locals 1
    .param p0    # Lio/ktor/util/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
