.class public final Landroidx/compose/ui/platform/ViewLayer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/ViewLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewLayer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewLayer.android.kt\nandroidx/compose/ui/platform/ViewLayer$Companion\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,442:1\n26#2:443\n*S KotlinDebug\n*F\n+ 1 ViewLayer.android.kt\nandroidx/compose/ui/platform/ViewLayer$Companion\n*L\n397#1:443\n*E\n"
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
    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->j()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->m()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/compose/ui/platform/ViewLayer;->q(Z)V

    .line 4
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanUncheckedReflection"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Class;

    .line 5
    .line 6
    const-string v2, "view"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer$Companion;->a()Z

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    if-nez v3, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/ui/platform/ViewLayer;->o(Z)V

    .line 21
    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    const/16 v5, 0x1c

    .line 25
    .line 26
    const-string v6, "mRecreateDisplayList"

    .line 27
    .line 28
    const-string v7, "updateDisplayListIfDirty"

    .line 29
    .line 30
    const-class v8, Landroid/view/View;

    .line 31
    .line 32
    if-ge v3, v5, :cond_0

    .line 33
    .line 34
    :try_start_1
    new-array v0, v4, [Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/platform/ViewLayer;->r(Ljava/lang/reflect/Method;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Landroidx/compose/ui/platform/ViewLayer;->p(Ljava/lang/reflect/Field;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    const-string v3, "getDeclaredMethod"

    .line 52
    const/4 v5, 0x2

    .line 53
    .line 54
    new-array v9, v5, [Ljava/lang/Class;

    .line 55
    .line 56
    aput-object v0, v9, v4

    .line 57
    .line 58
    new-array v10, v4, [Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v10

    .line 63
    .line 64
    aput-object v10, v9, v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    new-array v5, v5, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object v7, v5, v4

    .line 73
    .line 74
    new-array v7, v4, [Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v7, v5, v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    check-cast v3, Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Landroidx/compose/ui/platform/ViewLayer;->r(Ljava/lang/reflect/Method;)V

    .line 86
    .line 87
    const-string v3, "getDeclaredField"

    .line 88
    .line 89
    new-array v5, v2, [Ljava/lang/Class;

    .line 90
    .line 91
    aput-object v0, v5, v4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    new-array v1, v2, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object v6, v1, v4

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    check-cast v0, Ljava/lang/reflect/Field;

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroidx/compose/ui/platform/ViewLayer;->p(Ljava/lang/reflect/Field;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->n()Ljava/lang/reflect/Method;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    if-nez v0, :cond_1

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->l()Ljava/lang/reflect/Field;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    if-nez v0, :cond_2

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 129
    .line 130
    .line 131
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->l()Ljava/lang/reflect/Field;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/ViewLayer;->n()Ljava/lang/reflect/Method;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    new-array v1, v4, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    goto :goto_3

    .line 150
    .line 151
    .line 152
    :catchall_0
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/ViewLayer$Companion;->c(Z)V

    .line 153
    :cond_5
    :goto_3
    return-void
.end method
