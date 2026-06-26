.class public Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;
.super Ljava/lang/Object;
.source "GlobalPostSearchPrefsHelper.java"


# static fields
.field public static final KEY_FILTER_BY_MY:Ljava/lang/String; = "filter_by_my_amino"

.field public static final KEY_SORT_BY:Ljava/lang/String; = "sort_by"

.field public static final MAX_ID_LIST_SIZE:I = 0x32

.field public static final MOST_RECENT:Ljava/lang/String; = "mostRecent"

.field public static final MOST_RELEVANT:Ljava/lang/String; = "mostRelevant"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;

.field private subType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->subType:I

    const-string v1, "global_post_search"

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    .line 26
    iput p2, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->subType:I

    return-void
.end method

.method private getFilterByMyKey()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_by_my_amino"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->subType:I

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSortByKey()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort_by"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->subType:I

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public filterByMyAmino()Z
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->getFilterByMyKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveConfigChange(ZLjava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->getFilterByMyKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->getSortByKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public sortBy()Ljava/lang/String;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;->getSortByKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mostRelevant"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
