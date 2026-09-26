.class public final Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/PlatformMagnifierFactory;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatformMagnifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformMagnifier.kt\nandroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl\n+ 2 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,184:1\n152#2:185\n*S KotlinDebug\n*F\n+ 1 PlatformMagnifier.kt\nandroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl\n*L\n152#1:185\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final canUpdateZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    invoke-direct {v0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;-><init>()V

    sput-object v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->INSTANCE:Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->canUpdateZoom:Z

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


# virtual methods
.method public bridge synthetic a(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->c(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;->canUpdateZoom:Z

    return v0
.end method

.method public c(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;
    .locals 6
    .param p1    # Landroidx/compose/foundation/MagnifierStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "view"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "density"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/foundation/MagnifierStyle$Companion;->b()Landroidx/compose/foundation/MagnifierStyle;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance p1, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    .line 30
    .line 31
    new-instance p3, Landroid/widget/Magnifier;

    .line 32
    .line 33
    .line 34
    invoke-direct {p3, p2}, Landroid/widget/Magnifier;-><init>(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p3}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    .line 38
    return-object p1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->g()J

    .line 42
    move-result-wide v0

    .line 43
    .line 44
    .line 45
    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/unit/Density;->X(J)J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->d()F

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-interface {p3, v2}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->e()F

    .line 58
    move-result v3

    .line 59
    .line 60
    .line 61
    invoke-interface {p3, v3}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 62
    move-result p3

    .line 63
    .line 64
    new-instance v3, Landroid/widget/Magnifier$Builder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, p2}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 68
    .line 69
    sget-object p2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 73
    move-result-wide v4

    .line 74
    .line 75
    cmp-long p2, v0, v4

    .line 76
    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 81
    move-result p2

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 85
    move-result p2

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 89
    move-result v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 93
    move-result v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p2, v0}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 100
    move-result p2

    .line 101
    .line 102
    if-nez p2, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/widget/Magnifier$Builder;->setCornerRadius(F)Landroid/widget/Magnifier$Builder;

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 109
    move-result p2

    .line 110
    .line 111
    if-nez p2, :cond_3

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, p3}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    .line 118
    move-result p2

    .line 119
    .line 120
    if-nez p2, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, p4}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/MagnifierStyle;->c()Z

    .line 127
    move-result p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, p1}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    const-string p2, "Builder(view).run {\n    \u2026    build()\n            }"

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    new-instance p2, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, p1}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    .line 145
    return-object p2
.end method
