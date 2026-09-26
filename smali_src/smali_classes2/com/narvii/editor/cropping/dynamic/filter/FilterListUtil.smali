.class public final Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->Companion:Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;

    .line 9
    .line 10
    const-string v0, "BaseFilter"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->LIST:Ljava/util/List;

    .line 17
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

.method public static final synthetic access$getLIST$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->LIST:Ljava/util/List;

    return-object v0
.end method
