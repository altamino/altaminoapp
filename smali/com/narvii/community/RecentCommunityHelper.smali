.class public Lcom/narvii/community/RecentCommunityHelper;
.super Ljava/lang/Object;
.source "RecentCommunityHelper.java"

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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addRecent(Lcom/narvii/model/Community;)V
    .locals 6

    .line 51
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "recentCommunityIdList"

    const/4 v3, 0x0

    .line 53
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ","

    if-eqz v4, :cond_0

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v3, v5}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 61
    :goto_0
    iget p1, p1, Lcom/narvii/model/Community;->status:I

    const/16 v4, 0x9

    if-eq p1, v4, :cond_2

    const/16 v4, 0xa

    if-ne p1, v4, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 65
    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    .line 67
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 62
    :cond_2
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v3, v5}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/community/RecentCommunityHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/RecentCommunityHelper$1;-><init>(Lcom/narvii/community/RecentCommunityHelper;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/RecentCommunityHelper;
    .locals 4

    .line 159
    instance-of v0, p1, Lcom/narvii/app/NVApplication;

    if-eqz v0, :cond_2

    .line 160
    iput-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "community"

    .line 161
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    const-string v0, "myCommunityList"

    .line 162
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    iput-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const-string v0, "account"

    .line 163
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 164
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    .line 165
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "recentCommunityList"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    iget v2, v2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "recentCommunityIdList"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/community/RecentCommunityHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/RecentCommunityHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 47
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

    .line 104
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "recentCommunityIdList"

    const/4 v2, 0x0

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    const-string v1, ","

    .line 109
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    iget-object v3, p0, Lcom/narvii/community/RecentCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v3}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Community;

    .line 118
    iget v5, v5, Lcom/narvii/model/Community;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p1, :cond_2

    goto :goto_2

    .line 123
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

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

    .line 132
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "recentCommunityIdList"

    const/4 v2, 0x0

    .line 133
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    const-string v1, ","

    .line 137
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 142
    iget-object v3, p0, Lcom/narvii/community/RecentCommunityHelper;->communityService:Lcom/narvii/community/CommunityService;

    invoke-virtual {v3, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p2, :cond_2

    goto :goto_1

    .line 147
    :cond_2
    iget v3, v2, Lcom/narvii/model/Community;->id:I

    if-ne v3, p1, :cond_3

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public removeChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeRecent(Lcom/narvii/model/Community;)V
    .locals 5

    .line 81
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/narvii/community/RecentCommunityHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "recentCommunityIdList"

    const/4 v2, 0x0

    .line 83
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_0

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v2, v4}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 92
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v2, v4}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    iget-object p1, p0, Lcom/narvii/community/RecentCommunityHelper;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/community/RecentCommunityHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/RecentCommunityHelper$2;-><init>(Lcom/narvii/community/RecentCommunityHelper;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/RecentCommunityHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/RecentCommunityHelper;)V

    return-void
.end method
