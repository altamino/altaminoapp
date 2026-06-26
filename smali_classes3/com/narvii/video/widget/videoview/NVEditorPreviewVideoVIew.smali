.class public final Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
.super Landroid/widget/FrameLayout;
.source "NVEditorPreviewVideoVIew.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final attributes:Landroid/util/AttributeSet;

.field private player:Lcom/narvii/video/interfaces/IPreviewPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->Companion:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->attributes:Landroid/util/AttributeSet;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bindPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->player:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 25
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getAttributes()Landroid/util/AttributeSet;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method
