.class public final Lcom/narvii/pre_editing/player/PausePriority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/player/PausePriority$Companion;
    }
.end annotation


# static fields
.field public static final BACKGROUND:I = 0xa

.field public static final Companion:Lcom/narvii/pre_editing/player/PausePriority$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IDLE:I = 0x0

.field public static final SEEK:I = 0x1e

.field public static final SURFACE_CREATED:I = 0x5

.field public static final TRIM:I = 0x28

.field public static final USER_PAUSE:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/player/PausePriority$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/player/PausePriority$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/player/PausePriority;->Companion:Lcom/narvii/pre_editing/player/PausePriority$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
