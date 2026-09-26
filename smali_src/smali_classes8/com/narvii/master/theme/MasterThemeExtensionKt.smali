.class public final Lcom/narvii/master/theme/MasterThemeExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMasterThemeExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MasterThemeExtension.kt\ncom/narvii/master/theme/MasterThemeExtensionKt\n+ 2 NVExtension.kt\ncom/narvii/util/kotlin/NVExtensionKt\n*L\n1#1,13:1\n34#2,13:14\n*S KotlinDebug\n*F\n+ 1 MasterThemeExtension.kt\ncom/narvii/master/theme/MasterThemeExtensionKt\n*L\n12#1:14,13\n*E\n"
.end annotation


# direct methods
.method public static final addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;
    .locals 3
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "theme"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    instance-of v2, v1, Lcom/narvii/master/theme/MasterThemeFragment;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    :goto_0
    const-class v1, Lcom/narvii/master/theme/MasterThemeFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    const-string v2, "beginTransaction(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const v2, 0x7f0a084e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 51
    .line 52
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 53
    .line 54
    :goto_1
    check-cast v1, Lcom/narvii/master/theme/MasterThemeFragment;

    .line 55
    return-object v1
.end method
