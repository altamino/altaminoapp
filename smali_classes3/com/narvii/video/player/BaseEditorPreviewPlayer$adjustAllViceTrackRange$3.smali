.class final Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseEditorPreviewPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/player/BaseEditorPreviewPlayer;->adjustAllViceTrackRange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/narvii/video/model/StickerInfoPack;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/player/BaseEditorPreviewPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/video/player/BaseEditorPreviewPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;->this$0:Lcom/narvii/video/player/BaseEditorPreviewPlayer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/narvii/video/player/BaseEditorPreviewPlayer$adjustAllViceTrackRange$3;->this$0:Lcom/narvii/video/player/BaseEditorPreviewPlayer;

    invoke-virtual {v0, p1}, Lcom/narvii/video/player/BaseEditorPreviewPlayer;->resetStickerList(Ljava/util/List;)V

    return-void
.end method
