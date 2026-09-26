.class public final Landroidx/compose/ui/platform/AndroidComposeView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/AndroidComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/platform/AndroidComposeView$Companion;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->b()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final b()Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->z()Ljava/lang/Class;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-string v1, "android.os.SystemProperties"

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->E(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->z()Ljava/lang/Class;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v5, "getBoolean"

    .line 28
    .line 29
    new-array v6, v3, [Ljava/lang/Class;

    .line 30
    .line 31
    const-class v7, Ljava/lang/String;

    .line 32
    .line 33
    aput-object v7, v6, v0

    .line 34
    .line 35
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v7, v6, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v1, v4

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->C(Ljava/lang/reflect/Method;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->v()Ljava/lang/reflect/Method;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    new-array v3, v3, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v5, "debug.layout"

    .line 57
    .line 58
    aput-object v5, v3, v0

    .line 59
    .line 60
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    aput-object v5, v3, v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-object v1, v4

    .line 69
    .line 70
    :goto_1
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    move-object v4, v1

    .line 74
    .line 75
    check-cast v4, Ljava/lang/Boolean;

    .line 76
    .line 77
    :cond_3
    if-eqz v4, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :catch_0
    :cond_4
    return v0
.end method
