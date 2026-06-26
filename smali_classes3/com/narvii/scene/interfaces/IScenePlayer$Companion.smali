.class public final Lcom/narvii/scene/interfaces/IScenePlayer$Companion;
.super Ljava/lang/Object;
.source "IScenePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/interfaces/IScenePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

# The value of this static final field might be set in the static constructor
.field private static final BACK_TO_BEGINNING:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final BACK_TO_CURRENT_SCENE_BEGINNING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    invoke-direct {v0}, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;-><init>()V

    sput-object v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->$$INSTANCE:Lcom/narvii/scene/interfaces/IScenePlayer$Companion;

    const/4 v0, 0x1

    .line 11
    sput v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->BACK_TO_BEGINNING:I

    const/4 v0, 0x2

    .line 12
    sput v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->BACK_TO_CURRENT_SCENE_BEGINNING:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBACK_TO_BEGINNING()I
    .locals 1

    .line 11
    sget v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->BACK_TO_BEGINNING:I

    return v0
.end method

.method public final getBACK_TO_CURRENT_SCENE_BEGINNING()I
    .locals 1

    .line 12
    sget v0, Lcom/narvii/scene/interfaces/IScenePlayer$Companion;->BACK_TO_CURRENT_SCENE_BEGINNING:I

    return v0
.end method
