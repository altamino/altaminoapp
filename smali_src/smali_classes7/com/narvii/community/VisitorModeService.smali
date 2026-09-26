.class public Lcom/narvii/community/VisitorModeService;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/community/VisitorModeService$1;

    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/narvii/community/VisitorModeService$1;-><init>(Lcom/narvii/community/VisitorModeService;I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/community/VisitorModeService;->nvContext:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    const-string v0, "themePack"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/community/VisitorModeService;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 25
    .line 26
    const-string v0, "affiliations"

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "visitor_mode"

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/community/VisitorModeService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    const-string v0, "not_joined_list"

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-class v0, Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Integer;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lcom/narvii/util/LruHashSet;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->updateList()V

    .line 96
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/VisitorModeService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/community/VisitorModeService;->removeThemePack(I)V

    return-void
.end method

.method private removeThemePack(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/AffiliationsService;->getTimeStamp()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    instance-of v0, v0, Lcom/narvii/app/incubator/IncubatorApplication;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/app/incubator/IncubatorApplication;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->isCommunityLive(I)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v1, "remove theme pack "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "visitorMode"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->themePackService:Lcom/narvii/theme/ThemePackService;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/narvii/theme/ThemePackService;->deleteThemePack(I)V

    .line 65
    :cond_1
    return-void
.end method

.method private save()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/util/LruHashSet;->snapShot()Ljava/util/Set;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "visitorMode"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "not_joined_list"

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    return-void
.end method

.method private updateList()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/LruHashSet;->snapShot()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/util/LruHashSet;->remove(Ljava/lang/Object;)Z

    .line 41
    const/4 v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    if-eqz v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->save()V

    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public addVisitor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/util/LruHashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->save()V

    .line 22
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->updateList()V

    .line 4
    return-void
.end method

.method public preloadThemePack(Lcom/narvii/model/Community;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "themePack"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 14
    .line 15
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v1, v1, Lcom/narvii/theme/ThemeInfo;->revision:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    :cond_1
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->addToDownLoadList(I)V

    .line 35
    .line 36
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 48
    :cond_2
    return-void
.end method

.method public removeVisitor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/VisitorModeService;->visitorNotJoined:Lcom/narvii/util/LruHashSet;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/util/LruHashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/community/VisitorModeService;->save()V

    .line 16
    :cond_0
    return-void
.end method
