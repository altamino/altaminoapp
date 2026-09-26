.class public final Lcom/narvii/amino/CommunityPreferenceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "prefs_join_amino_show_before"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "amino"

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string v0, "getSharedPreferences(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method


# virtual methods
.method public final getJoinAminoShowBefore()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final getPREFS_JOIN_AMINO_SHOWED()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefs()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final setJoinAminoShowBefore(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/amino/CommunityPreferenceHelper;->PREFS_JOIN_AMINO_SHOWED:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method
