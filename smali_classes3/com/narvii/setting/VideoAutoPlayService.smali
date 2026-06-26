.class public final Lcom/narvii/setting/VideoAutoPlayService;
.super Ljava/lang/Object;
.source "VideoAutoPlayService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoAutoPlayService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoAutoPlayService.kt\ncom/narvii/setting/VideoAutoPlayService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,26:1\n1587#2,2:27\n*E\n*S KotlinDebug\n*F\n+ 1 VideoAutoPlayService.kt\ncom/narvii/setting/VideoAutoPlayService\n*L\n21#1,2:27\n*E\n"
.end annotation


# static fields
.field public static final AUTO_PLAY_OFF:I = 0x2

.field public static final AUTO_PLAY_ON:I = 0x0

.field public static final AUTO_PLAY_WIFI_ONLY:I = 0x1

.field public static final INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

.field private static final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/setting/VideoAutoPlayChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/narvii/setting/VideoAutoPlayService;

    invoke-direct {v0}, Lcom/narvii/setting/VideoAutoPlayService;-><init>()V

    sput-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V
    .locals 1

    const-string v0, "videoAutoPlayChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final triggerEvent(I)V
    .locals 2

    .line 21
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/setting/VideoAutoPlayChangeListener;

    .line 22
    invoke-interface {v1, p1}, Lcom/narvii/setting/VideoAutoPlayChangeListener;->videoAutoPlayChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V
    .locals 1

    const-string v0, "videoAutoPlayChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
