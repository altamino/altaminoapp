.class public final Lcom/narvii/story/StoryPostServiceProvider$Service;
.super Ljava/lang/Object;
.source "StoryPostServiceProvider.kt"

# interfaces
.implements Lcom/narvii/scene/StoryPostService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryPostServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryPostServiceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryPostServiceProvider.kt\ncom/narvii/story/StoryPostServiceProvider$Service\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,129:1\n10894#2,2:130\n*E\n*S KotlinDebug\n*F\n+ 1 StoryPostServiceProvider.kt\ncom/narvii/story/StoryPostServiceProvider$Service\n*L\n106#1,2:130\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final draftManager$delegate:Lkotlin/Lazy;

.field private final nvContext:Lcom/narvii/app/NVContext;

.field private final sceneDraftHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/story/StoryPostServiceProvider$Service;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "draftManager"

    const-string v5, "getDraftManager()Lcom/narvii/post/DraftManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "sceneDraftHelper"

    const-string v4, "getSceneDraftHelper()Lcom/narvii/scene/service/SceneDraftHelper;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/story/StoryPostServiceProvider$Service;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->nvContext:Lcom/narvii/app/NVContext;

    .line 49
    new-instance p1, Lcom/narvii/story/StoryPostServiceProvider$Service$draftManager$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryPostServiceProvider$Service$draftManager$2;-><init>(Lcom/narvii/story/StoryPostServiceProvider$Service;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->draftManager$delegate:Lkotlin/Lazy;

    .line 50
    new-instance p1, Lcom/narvii/story/StoryPostServiceProvider$Service$sceneDraftHelper$2;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryPostServiceProvider$Service$sceneDraftHelper$2;-><init>(Lcom/narvii/story/StoryPostServiceProvider$Service;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->sceneDraftHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/story/StoryPostServiceProvider$Service;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$sendNotification(Lcom/narvii/story/StoryPostServiceProvider$Service;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/story/StoryPostServiceProvider$Service;->sendNotification(Lcom/narvii/model/Blog;)V

    return-void
.end method

.method private final convertScene(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;
    .locals 9

    .line 94
    invoke-virtual {p0}, Lcom/narvii/story/StoryPostServiceProvider$Service;->getDraftManager()Lcom/narvii/post/DraftManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "newRootDir"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "newRootDir.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/narvii/story/StoryPostServiceProvider$Service;->moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "sceneStr"

    .line 97
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/scene/model/SceneInfo;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/SceneInfo;

    return-object p1
.end method

.method private final getLinkDesc(Lcom/narvii/model/Blog;)Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object p1, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    const-string v0, "linkedBlog.title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_0
    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0d9b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0d9d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if(linkedBlog.type == Bl\u2026y_new_link)\n            }"

    .line 86
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private final moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "srcFile.absolutePath"

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-string v0, "srcFile.listFiles()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, "it"

    .line 106
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p3}, Lcom/narvii/story/StoryPostServiceProvider$Service;->moveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 109
    invoke-static {p1, v0, p2}, Lcom/narvii/util/Utils;->moveFile(Ljava/io/File;Ljava/io/File;Z)V

    :cond_2
    return-void
.end method

.method private final sendNotification(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 77
    new-instance v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;

    invoke-direct {v0}, Lcom/narvii/scene/notification/CloseSceneTemplateObject;-><init>()V

    .line 78
    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/scene/notification/CloseSceneTemplateObject;->id:Ljava/lang/String;

    .line 79
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v1, "new"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 80
    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    return-void
.end method


# virtual methods
.method public final getDraftManager()Lcom/narvii/post/DraftManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->draftManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/StoryPostServiceProvider$Service;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/DraftManager;

    return-object v0
.end method

.method public final getSceneDraftHelper()Lcom/narvii/scene/service/SceneDraftHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->sceneDraftHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/story/StoryPostServiceProvider$Service;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/service/SceneDraftHelper;

    return-object v0
.end method

.method public launchStoryPost(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "sceneInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkedBlogStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/narvii/model/Blog;

    invoke-static {p3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Blog;

    if-eqz p3, :cond_1

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {v0}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v1, 0x9

    .line 58
    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 59
    sget v1, Lcom/narvii/blog/post/BlogPost;->FROM_BLOG_PROMOTE:I

    iput v1, v0, Lcom/narvii/blog/post/BlogPost;->from:I

    .line 60
    iget-object v1, p3, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->promotedFrom:Ljava/lang/String;

    .line 61
    iget-object v1, p3, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p3}, Lcom/narvii/story/StoryPostServiceProvider$Service;->getLinkDesc(Lcom/narvii/model/Blog;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->linkDesc:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/narvii/story/StoryPostServiceProvider$Service;->getDraftManager()Lcom/narvii/post/DraftManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "story"

    invoke-virtual {v1, v3, v2, v0}, Lcom/narvii/post/DraftManager;->createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/narvii/scene/model/SceneDraft;

    invoke-direct {v2, v1}, Lcom/narvii/scene/model/SceneDraft;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 65
    iget-object v2, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const-string v3, "draftId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/narvii/story/StoryPostServiceProvider$Service;->convertScene(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/scene/model/SceneInfo;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/scene/model/SceneDraft;->addScene(Lcom/narvii/scene/model/SceneInfo;)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/story/StoryPostServiceProvider$Service;->getSceneDraftHelper()Lcom/narvii/scene/service/SceneDraftHelper;

    move-result-object p1

    iget-object p2, v0, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    const-string v2, "post.sceneDraft"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;-><init>(Lcom/narvii/story/StoryPostServiceProvider$Service;Ljava/lang/String;Lcom/narvii/blog/post/BlogPost;Lcom/narvii/model/Blog;)V

    invoke-virtual {p1, p2, v2}, Lcom/narvii/scene/service/SceneDraftHelper;->correctCoverImage(Lcom/narvii/scene/model/SceneDraft;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public launchStoryPreview(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/narvii/model/Blog;

    invoke-direct {v0}, Lcom/narvii/model/Blog;-><init>()V

    const/16 v1, 0x9

    .line 115
    iput v1, v0, Lcom/narvii/model/Blog;->type:I

    .line 116
    invoke-static {p1}, Lcom/narvii/scene/helper/SceneUtils;->getAttachPreviewSceneList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    .line 118
    new-instance p1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->autoLoadNextPage(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 121
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_IMMERSION_MODE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 122
    sget-object v1, Lcom/narvii/story/StoryListFragment;->KEY_AUTO_LOAD_NEXT_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "preview"

    .line 123
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "backDirectly"

    .line 124
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "StoryListFragment.Intent\u2026tra(\"backDirectly\", true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/narvii/story/StoryHelper;

    iget-object v1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
