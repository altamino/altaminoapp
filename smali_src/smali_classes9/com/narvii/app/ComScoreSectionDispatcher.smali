.class public final Lcom/narvii/app/ComScoreSectionDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static current:Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static previous:Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->NONE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->previous:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 12
    .line 13
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->current:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final dispatchSectionChange(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->current:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    .line 4
    sput-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->previous:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 5
    .line 6
    sput-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->current:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    const-string v1, "ns_category"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->getValue()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/comscore/Analytics;->notifyViewEvent(Ljava/util/Map;)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrent()Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->current:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    return-object v0
.end method

.method public final getPrevious()Lcom/narvii/app/ComScoreSectionDispatcher$Section;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->previous:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    return-object v0
.end method

.method public final sectionChangeToChat()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->CHAT:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->dispatchSectionChange(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V

    .line 6
    return-void
.end method

.method public final sectionChangeToCommunity()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->COMMUNITY:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->dispatchSectionChange(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V

    .line 6
    return-void
.end method

.method public final sectionChangeToExplore()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->EXPLORE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->dispatchSectionChange(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V

    .line 6
    return-void
.end method

.method public final sectionChangeToLive()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->LIVE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->dispatchSectionChange(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V

    .line 6
    return-void
.end method

.method public final sectionChangeToNone()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher$Section;->NONE:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->dispatchSectionChange(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V

    .line 6
    return-void
.end method

.method public final setCurrent(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V
    .locals 1
    .param p1    # Lcom/narvii/app/ComScoreSectionDispatcher$Section;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->current:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    return-void
.end method

.method public final setPrevious(Lcom/narvii/app/ComScoreSectionDispatcher$Section;)V
    .locals 1
    .param p1    # Lcom/narvii/app/ComScoreSectionDispatcher$Section;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/narvii/app/ComScoreSectionDispatcher;->previous:Lcom/narvii/app/ComScoreSectionDispatcher$Section;

    return-void
.end method
