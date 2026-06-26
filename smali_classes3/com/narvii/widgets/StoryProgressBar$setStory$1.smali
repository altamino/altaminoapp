.class final Lcom/narvii/widgets/StoryProgressBar$setStory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StoryProgressBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widgets/StoryProgressBar;->setStory(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/narvii/model/story/StorySceneMilestone;",
        "Lcom/narvii/model/story/StorySceneMilestone;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/widgets/StoryProgressBar$setStory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/widgets/StoryProgressBar$setStory$1;

    invoke-direct {v0}, Lcom/narvii/widgets/StoryProgressBar$setStory$1;-><init>()V

    sput-object v0, Lcom/narvii/widgets/StoryProgressBar$setStory$1;->INSTANCE:Lcom/narvii/widgets/StoryProgressBar$setStory$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/narvii/model/story/StorySceneMilestone;

    check-cast p2, Lcom/narvii/model/story/StorySceneMilestone;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widgets/StoryProgressBar$setStory$1;->invoke(Lcom/narvii/model/story/StorySceneMilestone;Lcom/narvii/model/story/StorySceneMilestone;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/narvii/model/story/StorySceneMilestone;Lcom/narvii/model/story/StorySceneMilestone;)Z
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Lcom/narvii/model/story/StorySceneMilestone;->containsPollOrQuiz()Z

    move-result p1

    invoke-interface {p2}, Lcom/narvii/model/story/StorySceneMilestone;->containsPollOrQuiz()Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
