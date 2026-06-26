.class final Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;
.super Lcom/narvii/app/TabPagerAdapter;
.source "EditorStickerPickerTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EditorStickerPickerTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorStickerPickerTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorStickerPickerTabFragment.kt\ncom/narvii/video/EditorStickerPickerTabFragment$Adapter\n*L\n1#1,347:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/video/EditorStickerPickerTabFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/narvii/app/TabPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1, p2}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "super.instantiateItem(container, position)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    instance-of v0, p1, Lcom/narvii/video/EditorStickerPickerListFragment;

    if-eqz v0, :cond_2

    .line 334
    move-object v0, p1

    check-cast v0, Lcom/narvii/video/EditorStickerPickerListFragment;

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getInternalGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/EditorStickerPickerListFragment;->setGiphyStickerSelectedCallback(Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;)V

    const/4 v1, 0x0

    .line 336
    iget-object v2, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-static {v2}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 337
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p2, v1, p2

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/narvii/media/giphy/GiphyPack;

    :cond_1
    if-eqz v1, :cond_2

    .line 341
    iget-object p2, v1, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

    const-string v1, "it.id"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/narvii/video/EditorStickerPickerListFragment;->setStickerPackId(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method
