.class public Lorg/chickenhook/restrictionbypass/Unseal;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static unseal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "dalvik.system.VMRuntime"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    const-string v3, "getRuntime"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v3, v2}, Lorg/chickenhook/restrictionbypass/RestrictionBypass;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    new-array v4, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    new-array v4, v2, [Ljava/lang/Class;

    .line 33
    .line 34
    const-class v5, [Ljava/lang/String;

    .line 35
    .line 36
    aput-object v5, v4, v1

    .line 37
    .line 38
    const-string v5, "setHiddenApiExemptions"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v5, v4}, Lorg/chickenhook/restrictionbypass/RestrictionBypass;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    const-string v4, "L"

    .line 48
    .line 49
    .line 50
    filled-new-array {v4}, [Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    aput-object v4, v2, v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
