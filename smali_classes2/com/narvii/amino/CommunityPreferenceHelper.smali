.class public final Lcom/narvii/amino/CommunityPreferenceHelper;
.super Ljava/lang/Object;
.source "CommunityPreferenceHelper.kt"


# instance fields
.field private final PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "prefs_join_amino_show_before"

    .line 12
    iput-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    const-string v0, "amino"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026o\", Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getJoinAminoShowBefore()Z
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getPREFS_JOIN_AMINO_SHOWED()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final setJoinAminoShowBefore(Z)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
