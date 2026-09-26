.class public final Lorg/slf4j/helpers/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/helpers/g$b;
    }
.end annotation


# static fields
.field private static SECURITY_MANAGER:Lorg/slf4j/helpers/g$b;

.field private static SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/slf4j/helpers/g;->b()Lorg/slf4j/helpers/g$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/slf4j/helpers/g$b;->getClassContext()[Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-class v1, Lorg/slf4j/helpers/g;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    array-length v3, v0

    .line 21
    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    aget-object v3, v0, v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    array-length v1, v0

    .line 40
    .line 41
    if-ge v2, v1, :cond_3

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x2

    .line 44
    array-length v1, v0

    .line 45
    .line 46
    if-ge v2, v1, :cond_3

    .line 47
    .line 48
    aget-object v0, v0, v2

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method private static b()Lorg/slf4j/helpers/g$b;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/slf4j/helpers/g;->SECURITY_MANAGER:Lorg/slf4j/helpers/g$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    sget-boolean v0, Lorg/slf4j/helpers/g;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {}, Lorg/slf4j/helpers/g;->e()Lorg/slf4j/helpers/g$b;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lorg/slf4j/helpers/g;->SECURITY_MANAGER:Lorg/slf4j/helpers/g$b;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    sput-boolean v1, Lorg/slf4j/helpers/g;->SECURITY_MANAGER_CREATION_ALREADY_ATTEMPTED:Z

    .line 21
    return-object v0
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "SLF4J: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p0, "Reported exception:"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    return-void
.end method

.method private static e()Lorg/slf4j/helpers/g$b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/slf4j/helpers/g$b;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, v0}, Lorg/slf4j/helpers/g$b;-><init>(Lorg/slf4j/helpers/g$a;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v1

    .line 8
    :catch_0
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/slf4j/helpers/g;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    .line 10
    :cond_0
    const-string v0, "true"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "null input"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
.end method
