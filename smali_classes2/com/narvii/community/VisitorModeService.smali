.class public Lcom/narvii/community/VisitorModeService;
.super Ljava/lang/Object;
.source "VisitorModeService.java"

# interfaces
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field nvContext:Lcom/narvii/app/NVContext;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field themePackService:Lcom/narvii/theme/ThemePackService;

.field visitorNotJoined:Lcom/narvii/util/LruHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/LruHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/narvii/community/VisitorModeService$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/VisitorModeService$1;-><init>(Lcom/narvii/community/VisitorModeService;I)V

    iput-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 38
    iput-object p1, p0, Lcom/narvii/community/VisitorModeService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "themePack"

    .line 39
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    iput-object v0, p0, Lcom/narvii/community/VisitorModeService;->themePackService:Lcom/narvii/theme/ThemePackService;

    const-string v0, "affiliations"

    .line 40
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 41
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 42
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "visitor_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/VisitorModeService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    iget-object p1, p0, Lcom/narvii/community/VisitorModeService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "not_joined_list"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 48
    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    invoke-virtual {v1, v0}, Lcom/narvii/util/LruHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->updateList()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/VisitorModeService;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/community/VisitorModeService;->removeThemePack(I)V

    return-void
.end method

.method private removeThemePack(I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/incubator/IncubatorApplication;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-virtual {v0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->isCommunityLive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove theme pack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visitorMode"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->themePackService:Lcom/narvii/theme/ThemePackService;

    invoke-virtual {v0, p1}, Lcom/narvii/theme/ThemePackService;->deleteThemePack(I)V

    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    invoke-virtual {v1}, Lcom/narvii/util/LruHashSet;->snapShot()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visitorMode"

    .line 111
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "not_joined_list"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateList()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    invoke-virtual {v0}, Lcom/narvii/util/LruHashSet;->snapShot()Ljava/util/Set;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 99
    iget-object v3, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 101
    iget-object v3, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    invoke-virtual {v3, v2}, Lcom/narvii/util/LruHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->save()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addVisitor(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/LruHashSet;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->save()V

    return-void
.end method

.method public onAffiliationChanged()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->updateList()V

    return-void
.end method

.method public preloadThemePack(Lcom/narvii/model/Community;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "themePack"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 76
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    iget v1, v1, Lcom/narvii/theme/ThemeInfo;->revision:I

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 78
    :cond_1
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->addToDownLoadList(I)V

    .line 79
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v2

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public removeVisitor(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/LruHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->save()V

    :cond_0
    return-void
.end method
