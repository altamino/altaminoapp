.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;
.super Lcom/narvii/app/TabPagerAdapter;
.source "StickerPickerTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 813
    invoke-direct {p0, p2, p3}, Lcom/narvii/app/TabPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 818
    invoke-super {p0, p1, p2}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 819
    instance-of v0, p1, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 820
    move-object v0, p1

    check-cast v0, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-boolean v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->setIsEditorTheme(Z)V

    .line 821
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 822
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-boolean v3, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    if-eqz v3, :cond_1

    .line 823
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->setMood(Ljava/lang/String;)V

    .line 826
    :cond_1
    instance-of v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    if-eqz v0, :cond_5

    .line 827
    move-object v0, p1

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-boolean v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setIsEditorTheme(Z)V

    .line 828
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$1300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 829
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerPreviewListener(Lcom/narvii/monetization/sticker/StickerPreviewListener;)V

    .line 830
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-boolean v3, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    if-eqz v3, :cond_2

    .line 831
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    .line 834
    :cond_2
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 835
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p2, v1, p2

    .line 836
    :cond_3
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 838
    :cond_4
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_5
    return-object p1
.end method
