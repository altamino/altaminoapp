.class final Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;
.super Lcom/narvii/app/TabPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EditorStickerPickerTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lcom/narvii/app/TabPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "container"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "instantiateItem(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    instance-of v0, p1, Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    move-object v0, p1

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/video/EditorStickerPickerListFragment;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getInternalGiphyStickerSelectedCallback$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Lcom/narvii/video/EditorStickerPickerTabFragment$internalGiphyStickerSelectedCallback$1;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/video/EditorStickerPickerListFragment;->setGiphyStickerSelectedCallback(Lcom/narvii/video/EditorStickerPickerTabFragment$GiphyStickerSelectedCallback;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    xor-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    move-result v1

    .line 61
    .line 62
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    sub-int p2, v1, p2

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/EditorStickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/video/EditorStickerPickerTabFragment;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/narvii/video/EditorStickerPickerTabFragment;->access$getGiphyPackList$p(Lcom/narvii/video/EditorStickerPickerTabFragment;)Ljava/util/ArrayList;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    check-cast p2, Lcom/narvii/media/giphy/GiphyPack;

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 p2, 0x0

    .line 79
    .line 80
    :goto_0
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget-object p2, p2, Lcom/narvii/media/giphy/GiphyPack;->id:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "id"

    .line 85
    .line 86
    .line 87
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2}, Lcom/narvii/video/EditorStickerPickerListFragment;->setStickerPackId(Ljava/lang/String;)V

    .line 91
    :cond_2
    return-object p1
.end method
