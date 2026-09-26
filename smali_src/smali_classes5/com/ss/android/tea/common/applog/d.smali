.class public Lcom/ss/android/tea/common/applog/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TeaAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/ss/android/tea/common/applog/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/applog/a;->b()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/b;->s0(Ljava/util/Map;)V

    .line 4
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->u0()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static e(Lcom/ss/android/tea/common/applog/f;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/e;->a(Lcom/ss/android/tea/common/applog/f;)V

    .line 4
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 10

    .line 1
    const/4 v8, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    .line 8
    move-wide/from16 v6, p6

    .line 9
    .line 10
    move-object/from16 v9, p8

    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v9}, Lcom/ss/android/tea/common/applog/d;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 14
    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p9}, Lcom/ss/android/tea/common/applog/b;->A(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/b;->H0(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/b;->J0(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static j(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/b;->S0(Ljava/util/Map;)V

    .line 4
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/b;->T0(Ljava/lang/String;)V

    .line 4
    return-void
.end method
