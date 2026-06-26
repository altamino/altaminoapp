.class public final Lcom/narvii/master/search/SearchPrefsHelper;
.super Ljava/lang/Object;
.source "SearchPrefsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/SearchPrefsHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchPrefsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchPrefsHelper.kt\ncom/narvii/master/search/SearchPrefsHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n673#2:86\n746#2,2:87\n*E\n*S KotlinDebug\n*F\n+ 1 SearchPrefsHelper.kt\ncom/narvii/master/search/SearchPrefsHelper\n*L\n43#1:86\n43#1,2:87\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/search/SearchPrefsHelper$Companion;

.field public static final MAX_SIZE:I = 0x32

.field public static final PREFS_KEY_CHAT:Ljava/lang/String; = "chat"

.field public static final PREFS_KEY_COMMUNITY:Ljava/lang/String; = "community"

.field public static final PREFS_KEY_OTHERS:Ljava/lang/String; = "others"

.field public static final PREFS_KEY_POST:Ljava/lang/String; = "searchHistoryList"

.field public static final PREFS_KEY_STORY:Ljava/lang/String; = "searchHistoryList9"

.field public static final PREFS_KEY_TOPIC:Ljava/lang/String; = "topic"


# instance fields
.field private hashSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private final prefsKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/search/SearchPrefsHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/search/SearchPrefsHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/search/SearchPrefsHelper;->Companion:Lcom/narvii/master/search/SearchPrefsHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefsKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefsKey:Ljava/lang/String;

    .line 29
    iget-object p2, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefsKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "global_post_search"

    const-string v2, "global_search"

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "searchHistoryList9"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "topic"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_2

    :sswitch_2
    const-string v0, "chat"

    goto :goto_0

    :sswitch_3
    const-string v0, "others"

    goto :goto_0

    :sswitch_4
    const-string v0, "searchHistoryList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_1
    move-object v2, v1

    goto :goto_2

    :sswitch_5
    const-string v0, "community"

    goto :goto_0

    :cond_0
    :goto_2
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, v2, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x583ad017 -> :sswitch_5
        -0x4f05b776 -> :sswitch_4
        -0x3c029c9d -> :sswitch_3
        0x2e9358 -> :sswitch_2
        0x696cd2f -> :sswitch_1
        0x6e4ec8ef -> :sswitch_0
    .end sparse-switch
.end method

.method private final save(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefsKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefsKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addSearchKeyword(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 52
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/narvii/master/search/SearchPrefsHelper;->getHistoryList()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x32

    .line 60
    iget-object v1, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    if-lez p1, :cond_2

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 68
    :cond_2
    invoke-direct {p0, v0}, Lcom/narvii/master/search/SearchPrefsHelper;->save(Ljava/util/Set;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final clearSearchHistoryList()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/narvii/master/search/SearchPrefsHelper;->save(Ljava/util/Set;)V

    return-void
.end method

.method public final getHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final getHistoryList()Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefsKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 44
    invoke-static {v3}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_1
    return-object v0
.end method

.method public final getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/master/search/SearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final setHashSet(Ljava/util/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/narvii/master/search/SearchPrefsHelper;->hashSet:Ljava/util/LinkedHashSet;

    return-void
.end method
