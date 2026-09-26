.class public final Lqa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, v2, v1, v2}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 22
    throw p0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    .line 4
    move-result-object v6

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v6}, Lorg/mozilla/javascript/Context;->initSafeStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    .line 12
    move-result-object v7

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, v6

    .line 16
    move-object v1, v7

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, p1, v7}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    check-cast p0, Lorg/mozilla/javascript/Function;

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v6, v7, v7, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 44
    throw p0
.end method
