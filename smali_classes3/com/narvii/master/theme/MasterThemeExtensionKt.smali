.class public final Lcom/narvii/master/theme/MasterThemeExtensionKt;
.super Ljava/lang/Object;
.source "MasterThemeExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMasterThemeExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MasterThemeExtension.kt\ncom/narvii/master/theme/MasterThemeExtensionKt\n+ 2 NVExtension.kt\ncom/narvii/util/kotlin/NVExtensionKt\n*L\n1#1,13:1\n34#2,13:14\n*E\n*S KotlinDebug\n*F\n+ 1 MasterThemeExtension.kt\ncom/narvii/master/theme/MasterThemeExtensionKt\n*L\n12#1,13:14\n*E\n"
.end annotation


# direct methods
.method public static final addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;
    .locals 4

    const-string v0, "$this$addMasterThemeFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-class v0, Lcom/narvii/master/theme/MasterThemeFragment;

    const-string v1, "theme"

    .line 14
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 15
    instance-of v3, v2, Lcom/narvii/master/theme/MasterThemeFragment;

    if-nez v3, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    check-cast v2, Lcom/narvii/app/NVFragment;

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 17
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const v2, 0x7f0906c0

    .line 19
    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 24
    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 26
    :goto_1
    check-cast v2, Lcom/narvii/master/theme/MasterThemeFragment;

    return-object v2
.end method
