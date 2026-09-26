.class public Lcom/narvii/community/RecentCommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/community/RecentCommunityHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final PREFS_KEY:Ljava/lang/String; = "recentCommunityIdList"


# instance fields
.field private communityService:Lcom/narvii/community/CommunityService;

.field private context:Lcom/narvii/app/NVContext;

.field listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addRecent(Lcom/narvii/model/Community;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    const-string v3, "recentCommunityIdList"

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v4

    .line 22
    .line 23
    const-string v5, ","

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v2, v5}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    :goto_0
    iget p1, p1, Lcom/narvii/model/Community;->status:I

    .line 38
    .line 39
    const/16 v4, 0x9

    .line 40
    .line 41
    if-eq p1, v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0xa

    .line 44
    .line 45
    if-ne p1, v4, :cond_1

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    const/4 p1, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result p1

    .line 58
    .line 59
    const/16 v0, 0x20

    .line 60
    .line 61
    if-le p1, v0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result p1

    .line 66
    .line 67
    add-int/lit8 p1, p1, -0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v5}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/community/RecentCommunityHelper$1;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/narvii/community/RecentCommunityHelper$1;-><init>(Lcom/narvii/community/RecentCommunityHelper;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 100
    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/RecentCommunityHelper;
    .locals 4

    .line 2
    instance-of v0, p1, Lcom/narvii/app/NVApplication;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    .line 3
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    const-string v0, "myCommunityList"

    .line 4
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    iput-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const-string v0, "account"

    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "recentCommunityList"

    .line 7
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 8
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    :cond_0
    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "recentCommunityIdList"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/community/RecentCommunityHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/RecentCommunityHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getRecentIdList(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "recentCommunityIdList"

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    const-string v1, ","

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    move-result v2

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/community/RecentCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    new-instance v4, Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v5

    .line 76
    .line 77
    if-eqz v5, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    check-cast v5, Lcom/narvii/model/Community;

    .line 84
    .line 85
    iget v5, v5, Lcom/narvii/model/Community;->id:I

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_1

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result v3

    .line 98
    .line 99
    if-lt v3, p1, :cond_2

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    :goto_2
    return-object v1
.end method

.method public getRecentList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "recentCommunityIdList"

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    const-string v1, ","

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    new-instance v1, Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    move-result v2

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/community/RecentCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v3

    .line 68
    .line 69
    if-lt v3, p2, :cond_2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    iget v3, v2, Lcom/narvii/model/Community;->id:I

    .line 73
    .line 74
    if-ne v3, p1, :cond_3

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    :goto_1
    return-object v1
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public removeChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeRecent(Lcom/narvii/model/Community;)V
    .locals 5

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    const-string v2, "recentCommunityIdList"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    const-string v4, ","

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v1, v4}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 39
    move-result p1

    .line 40
    .line 41
    if-ltz p1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v4}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/community/RecentCommunityHelper$2;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/narvii/community/RecentCommunityHelper$2;-><init>(Lcom/narvii/community/RecentCommunityHelper;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 70
    :cond_1
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method
