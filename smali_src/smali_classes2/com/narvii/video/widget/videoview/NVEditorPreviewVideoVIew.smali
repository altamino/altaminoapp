.class public final Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final attributes:Landroid/util/AttributeSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private player:Lcom/narvii/video/interfaces/IPreviewPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->Companion:Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "attributes"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->attributes:Landroid/util/AttributeSet;

    .line 16
    return-void
.end method


# virtual methods
.method public final bindPreviewPlayer(Lcom/narvii/video/interfaces/IPreviewPlayer;)V
    .locals 2
    .param p1    # Lcom/narvii/video/interfaces/IPreviewPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "player"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->player:Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoView()Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    const/4 v1, -0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method

.method public final getAttributes()Landroid/util/AttributeSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/widget/videoview/NVEditorPreviewVideoVIew;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method
