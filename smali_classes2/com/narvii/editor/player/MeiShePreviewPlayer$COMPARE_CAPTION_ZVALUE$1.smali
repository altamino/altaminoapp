.class final Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;
.super Ljava/lang/Object;
.source "MeiShePreviewPlayer.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/player/MeiShePreviewPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meicam/sdk/NvsTimelineCaption;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;

    invoke-direct {v0}, Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;-><init>()V

    sput-object v0, Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;->INSTANCE:Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/meicam/sdk/NvsTimelineCaption;)I
    .locals 1

    const-string v0, "o2"

    .line 89
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTimelineCaption;->getZValue()F

    move-result p2

    const-string v0, "o1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimelineCaption;->getZValue()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/meicam/sdk/NvsTimelineCaption;

    check-cast p2, Lcom/meicam/sdk/NvsTimelineCaption;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/editor/player/MeiShePreviewPlayer$COMPARE_CAPTION_ZVALUE$1;->compare(Lcom/meicam/sdk/NvsTimelineCaption;Lcom/meicam/sdk/NvsTimelineCaption;)I

    move-result p1

    return p1
.end method
