.class public final Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;
.super Ljava/lang/Object;
.source "FilterListUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

.field private static final LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    const-string v0, "BaseFilter"

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLIST$cp()Ljava/util/List;
    .locals 1

    .line 5
    sget-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->LIST:Ljava/util/List;

    return-object v0
.end method
