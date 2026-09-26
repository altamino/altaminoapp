.class public final Lcom/narvii/setting/VideoAutoPlayService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoAutoPlayService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoAutoPlayService.kt\ncom/narvii/setting/VideoAutoPlayService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,26:1\n1855#2,2:27\n*S KotlinDebug\n*F\n+ 1 VideoAutoPlayService.kt\ncom/narvii/setting/VideoAutoPlayService\n*L\n21#1:27,2\n*E\n"
.end annotation


# static fields
.field public static final AUTO_PLAY_OFF:I = 0x2

.field public static final AUTO_PLAY_ON:I = 0x0

.field public static final AUTO_PLAY_WIFI_ONLY:I = 0x1

.field public static final INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/setting/VideoAutoPlayChangeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/setting/VideoAutoPlayService;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/setting/VideoAutoPlayService;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    .line 15
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


# virtual methods
.method public final registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V
    .locals 1
    .param p1    # Lcom/narvii/setting/VideoAutoPlayChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoAutoPlayChangeListener"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public final triggerEvent(I)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/setting/VideoAutoPlayChangeListener;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p1}, Lcom/narvii/setting/VideoAutoPlayChangeListener;->videoAutoPlayChange(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V
    .locals 1
    .param p1    # Lcom/narvii/setting/VideoAutoPlayChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoAutoPlayChangeListener"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->listeners:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method
