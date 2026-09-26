.class public final Lcoil/decode/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/n$a;
    }
.end annotation


# static fields
.field private static final RESPECT_PERFORMANCE_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "image/heic"

    .line 3
    .line 4
    const-string v1, "image/heif"

    .line 5
    .line 6
    const-string v2, "image/jpeg"

    .line 7
    .line 8
    const-string v3, "image/webp"

    .line 9
    .line 10
    .line 11
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/w0;->i([Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcoil/decode/n;->RESPECT_PERFORMANCE_MIME_TYPES:Ljava/util/Set;

    .line 19
    return-void
.end method

.method public static final a(Lcoil/decode/j;)Z
    .locals 0
    .param p0    # Lcoil/decode/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/decode/j;->a()I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-lez p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final b(Lcoil/decode/j;)Z
    .locals 2
    .param p0    # Lcoil/decode/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/decode/j;->a()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x5a

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcoil/decode/j;->a()I

    .line 12
    move-result p0

    .line 13
    .line 14
    const/16 v0, 0x10e

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static final c(Lcoil/decode/l;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Lcoil/decode/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lcoil/decode/n$a;->$EnumSwitchMapping$0:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p0

    .line 7
    .line 8
    aget p0, v0, p0

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eq p0, v1, :cond_1

    .line 13
    const/4 p1, 0x2

    .line 14
    .line 15
    if-eq p0, p1, :cond_2

    .line 16
    const/4 p1, 0x3

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    :goto_0
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance p0, Lw7/s;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 26
    throw p0

    .line 27
    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 29
    .line 30
    sget-object p0, Lcoil/decode/n;->RESPECT_PERFORMANCE_MIME_TYPES:Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    return v0
.end method
