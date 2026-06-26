.class public final Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;
.super Ljava/lang/Object;
.source "FilterListUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLIST()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/narvii/editor/cropping/dynamic/filter/FilterListUtil;->access$getLIST$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setFilter(Ljava/lang/String;ILandroid/content/Context;)Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2f4779c9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BaseFilter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    new-instance p1, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    invoke-direct {p1, p3, p2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;

    invoke-direct {p1, p3, p2}, Lcom/narvii/editor/cropping/dynamic/filter/BaseFilter;-><init>(Landroid/content/Context;I)V

    :goto_1
    return-object p1
.end method
