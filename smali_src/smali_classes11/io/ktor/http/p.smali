.class public final Lio/ktor/http/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(C)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/http/p;->b(C)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(C)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const-string v2, "\"(),/:;<=>?@[\\]{}"

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v2, p0, v3, v0, v1}, Lkotlin/text/k;->O(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method
