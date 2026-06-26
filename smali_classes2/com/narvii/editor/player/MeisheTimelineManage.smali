.class public final Lcom/narvii/editor/player/MeisheTimelineManage;
.super Ljava/lang/Object;
.source "MeisheTimelineManage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/player/MeisheTimelineManage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheTimelineManage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheTimelineManage.kt\ncom/narvii/editor/player/MeisheTimelineManage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1587#2,2:32\n*E\n*S KotlinDebug\n*F\n+ 1 MeisheTimelineManage.kt\ncom/narvii/editor/player/MeisheTimelineManage\n*L\n25#1,2:32\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/player/MeisheTimelineManage$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final timelines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/meicam/sdk/NvsTimeline;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/player/MeisheTimelineManage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/player/MeisheTimelineManage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/player/MeisheTimelineManage;->Companion:Lcom/narvii/editor/player/MeisheTimelineManage$Companion;

    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/narvii/editor/player/MeisheTimelineManage$Companion$instance$2;->INSTANCE:Lcom/narvii/editor/player/MeisheTimelineManage$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/narvii/editor/player/MeisheTimelineManage;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/player/MeisheTimelineManage;->timelines:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/narvii/editor/player/MeisheTimelineManage;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final addUnuseTimeline(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheTimelineManage;->timelines:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeAllUnuseTimeline()V
    .locals 3

    .line 24
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/narvii/editor/player/MeisheTimelineManage;->timelines:Ljava/util/List;

    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meicam/sdk/NvsTimeline;

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/player/MeisheTimelineManage;->timelines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
