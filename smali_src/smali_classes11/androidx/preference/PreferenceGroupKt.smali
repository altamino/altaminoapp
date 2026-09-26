.class public final Landroidx/preference/PreferenceGroupKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n*L\n1#1,98:1\n55#1:99\n55#1:100\n*S KotlinDebug\n*F\n+ 1 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n*L\n58#1:99\n61#1:100\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/preference/PreferenceGroup;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Landroidx/preference/PreferenceGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

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
    new-instance v0, Landroidx/preference/PreferenceGroupKt$iterator$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupKt$iterator$1;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 11
    return-object v0
.end method
