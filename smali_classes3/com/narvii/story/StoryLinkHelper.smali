.class public Lcom/narvii/story/StoryLinkHelper;
.super Ljava/lang/Object;
.source "StoryLinkHelper.java"


# instance fields
.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public openLink(Lcom/narvii/model/LinkSummary;ZLcom/narvii/model/Community;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 30
    iget-object v0, p1, Lcom/narvii/model/LinkSummary;->deepLink:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "navigator"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 35
    new-instance v1, Landroid/content/Intent;

    iget-object p1, p1, Lcom/narvii/model/LinkSummary;->deepLink:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    invoke-interface {v0, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    if-eqz v3, :cond_6

    .line 45
    const-class v0, Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/narvii/app/SwipeableActivity;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "__embed"

    .line 49
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "preview"

    .line 50
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, -0x1

    const-string v0, "__communityId"

    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_2

    if-eqz p3, :cond_1

    .line 54
    iget v0, p3, Lcom/narvii/model/Community;->id:I

    if-eq v0, p2, :cond_2

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "community"

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 56
    invoke-virtual {v0, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lcom/narvii/model/Community;

    invoke-direct {v0}, Lcom/narvii/model/Community;-><init>()V

    .line 59
    iput p2, v0, Lcom/narvii/model/Community;->id:I

    .line 60
    iput-boolean v2, v0, Lcom/narvii/model/Community;->_isFaked:Z

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p3

    :cond_3
    const/4 p2, 0x0

    .line 64
    :goto_1
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "__community"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_4

    .line 66
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_join_bar_community"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_4
    iget-object p2, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {p2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p2

    const-string p3, "__interactionScope"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    iget-object p2, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object p1, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const p2, 0x7f01000c

    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    .line 77
    new-instance p1, Lcom/narvii/monetization/store/SuggestUpdateDialog;

    iget-object p2, p0, Lcom/narvii/story/StoryLinkHelper;->nvContext:Lcom/narvii/app/NVContext;

    const p3, 0x7f0f0120

    invoke-direct {p1, p2, p3}, Lcom/narvii/monetization/store/SuggestUpdateDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 78
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_7
    :goto_2
    return-void
.end method
