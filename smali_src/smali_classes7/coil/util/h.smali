.class public final Lcoil/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/util/h$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_OPTIONS:Lcoil/request/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    .line 2
    new-instance v18, Lcoil/request/b;

    .line 3
    .line 4
    move-object/from16 v0, v18

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v10, 0x0

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x0

    .line 18
    const/4 v14, 0x0

    .line 19
    const/4 v15, 0x0

    .line 20
    .line 21
    const/16 v16, 0x7fff

    .line 22
    .line 23
    const/16 v17, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v17}, Lcoil/request/b;-><init>(Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;ILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    sput-object v18, Lcoil/util/h;->DEFAULT_REQUEST_OPTIONS:Lcoil/request/b;

    .line 29
    return-void
.end method

.method public static final a(Lcoil/request/h;)Z
    .locals 4
    .param p0    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcoil/request/h;->H()Lcoil/size/e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcoil/util/h$a;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    .line 12
    aget v0, v1, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    const/4 v3, 0x3

    .line 21
    .line 22
    if-ne v0, v3, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcoil/request/h;->q()Lcoil/request/c;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcoil/request/c;->m()Lcoil/size/j;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcoil/request/h;->K()Lcoil/size/j;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    instance-of v0, v0, Lcoil/size/d;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcoil/request/h;->M()Lf0/a;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    instance-of v0, v0, Lf0/b;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcoil/request/h;->K()Lcoil/size/j;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    instance-of v0, v0, Lcoil/size/l;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcoil/request/h;->M()Lf0/a;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lf0/b;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Lf0/b;->getView()Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    instance-of v0, v0, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcoil/request/h;->M()Lf0/a;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lf0/b;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lf0/b;->getView()Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcoil/request/h;->K()Lcoil/size/j;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    check-cast p0, Lcoil/size/l;

    .line 88
    .line 89
    .line 90
    invoke-interface {p0}, Lcoil/size/l;->getView()Landroid/view/View;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    if-ne v0, p0, :cond_3

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_1
    new-instance p0, Lw7/s;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 100
    throw p0

    .line 101
    :cond_2
    :goto_0
    move v1, v2

    .line 102
    :cond_3
    return v1
.end method

.method public static final b()Lcoil/request/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcoil/util/h;->DEFAULT_REQUEST_OPTIONS:Lcoil/request/b;

    return-object v0
.end method

.method public static final c(Lcoil/request/h;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_2

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcoil/request/h;->l()Landroid/content/Context;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcoil/util/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object p1, p3

    .line 27
    :cond_2
    :goto_0
    return-object p1
.end method
