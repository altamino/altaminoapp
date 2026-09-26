.class public final Lio/ktor/util/pipeline/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DISABLE_SFG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "io.ktor.internal.disable.sfg"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "true"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    sput-boolean v0, Lio/ktor/util/pipeline/g;->DISABLE_SFG:Z

    .line 15
    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/ktor/util/pipeline/g;->DISABLE_SFG:Z

    return v0
.end method
