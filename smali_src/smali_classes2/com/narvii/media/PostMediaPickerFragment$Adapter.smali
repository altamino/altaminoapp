.class Lcom/narvii/media/PostMediaPickerFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PostMediaPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PostMediaPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PostMediaPickerFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Media;

    .line 7
    .line 8
    sget v0, Lcom/narvii/lib/R$layout;->item_post_media:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    sget p3, Lcom/narvii/lib/R$id;->photo:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 24
    .line 25
    sget p3, Lcom/narvii/lib/R$id;->select:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    check-cast p3, Landroid/widget/ImageView;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    sget p1, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Media;

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    const/16 p2, 0x19

    .line 10
    .line 11
    if-eqz p5, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 15
    move-result p4

    .line 16
    .line 17
    sget p5, Lcom/narvii/lib/R$id;->select:I

    .line 18
    .line 19
    if-ne p4, p5, :cond_2

    .line 20
    .line 21
    iget-object p4, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 22
    .line 23
    iget-object p4, p4, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result p4

    .line 28
    .line 29
    if-eqz p4, :cond_0

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object p4, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 43
    .line 44
    iget-object p4, p4, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 48
    move-result p4

    .line 49
    .line 50
    if-lt p4, p2, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p4

    .line 59
    .line 60
    sget p5, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    .line 61
    .line 62
    new-array v0, p1, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p2

    .line 67
    const/4 v1, 0x0

    .line 68
    .line 69
    aput-object p2, v0, v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-static {p3, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 81
    return p1

    .line 82
    .line 83
    :cond_1
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 86
    .line 87
    .line 88
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 92
    .line 93
    :goto_0
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Lcom/narvii/media/PostMediaPickerFragment;->u(Lcom/narvii/media/PostMediaPickerFragment;)V

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_2
    new-instance p4, Landroid/content/Intent;

    .line 100
    .line 101
    new-instance p5, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    const-string v0, "ndc://fragment/"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-class v0, Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p5

    .line 123
    .line 124
    .line 125
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    move-result-object p5

    .line 127
    .line 128
    const-string v0, "android.intent.action.VIEW"

    .line 129
    .line 130
    .line 131
    invoke-direct {p4, v0, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .line 133
    iget-object p5, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 134
    .line 135
    iget-object p5, p5, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    .line 136
    .line 137
    .line 138
    invoke-static {p5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    move-result-object p5

    .line 140
    .line 141
    const-string v0, "list"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    iget-object p5, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 147
    .line 148
    iget-object p5, p5, Lcom/narvii/media/PostMediaPickerFragment;->selectedMedias:Ljava/util/List;

    .line 149
    .line 150
    .line 151
    invoke-static {p5}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    move-result-object p5

    .line 153
    .line 154
    const-string v0, "selected"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p4, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    const-string p5, "class"

    .line 160
    .line 161
    const-class v0, Lcom/narvii/model/Media;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    .line 166
    const-string p5, "selectClass"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    .line 171
    const-string p5, "maxCount"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p4, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    .line 176
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 177
    .line 178
    iget-object p2, p2, Lcom/narvii/media/PostMediaPickerFragment;->allMediaList:Ljava/util/List;

    .line 179
    .line 180
    .line 181
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 182
    move-result p2

    .line 183
    .line 184
    const-string p3, "position"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    .line 189
    iget-object p2, p0, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->this$0:Lcom/narvii/media/PostMediaPickerFragment;

    .line 190
    .line 191
    const/16 p3, 0x58

    .line 192
    .line 193
    .line 194
    invoke-static {p2, p4, p3}, Lcom/narvii/media/PostMediaPickerFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 195
    :goto_1
    return p1

    .line 196
    .line 197
    .line 198
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 199
    move-result p1

    .line 200
    return p1
.end method
