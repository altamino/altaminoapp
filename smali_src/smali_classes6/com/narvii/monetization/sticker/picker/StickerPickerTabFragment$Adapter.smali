.class Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;
.super Lcom/narvii/app/TabPagerAdapter;
.source "SourceFile"


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
.method public constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/app/TabPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 6
    return-void
.end method


# virtual methods
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 15
    .line 16
    iget-boolean v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->setIsEditorTheme(Z)V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->z(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 31
    .line 32
    iget-boolean v3, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    move-object v2, v1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->setMood(Ljava/lang/String;)V

    .line 56
    .line 57
    :cond_1
    instance-of v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    move-object v0, p1

    .line 61
    .line 62
    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 65
    .line 66
    iget-boolean v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setIsEditorTheme(Z)V

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->z(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerPreviewListener(Lcom/narvii/monetization/sticker/StickerPreviewListener;)V

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 88
    .line 89
    iget-boolean v3, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    .line 99
    .line 100
    :cond_2
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 108
    move-result v1

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    move-result v1

    .line 119
    .line 120
    add-int/lit8 v1, v1, -0x1

    .line 121
    .line 122
    sub-int p2, v1, p2

    .line 123
    .line 124
    :cond_3
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object p2

    .line 131
    move-object v1, p2

    .line 132
    .line 133
    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 137
    :cond_5
    return-object p1
.end method
