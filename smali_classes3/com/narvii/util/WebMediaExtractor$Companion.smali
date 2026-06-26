.class public final Lcom/narvii/util/WebMediaExtractor$Companion;
.super Ljava/lang/Object;
.source "WebMediaExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/WebMediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/narvii/util/WebMediaExtractor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 162
    invoke-static {}, Lcom/narvii/util/WebMediaExtractor;->access$getHandler$cp()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
