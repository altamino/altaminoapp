.class Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneAudioPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/PhoneAudioPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneAudioPickerFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-wide v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    move-result p1

    .line 28
    int-to-long v0, p1

    .line 29
    return-wide v0

    .line 30
    :cond_1
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$layout;->media_audio_picker_item:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    sget p3, Lcom/narvii/lib/R$id;->image:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    sget v1, Lcom/narvii/lib/R$drawable;->ic_audio_default_thubnail:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->select:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    check-cast p3, Landroid/widget/ImageView;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 54
    .line 55
    const-string v2, "single"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const/16 p1, 0x8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/narvii/media/PhoneAudioPickerFragment;->o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/narvii/media/PhoneAudioPickerFragment;->o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_selected:I

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_2
    sget v1, Lcom/narvii/lib/R$drawable;->ic_media_not_selected:I

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    .line 97
    new-instance v1, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter$1;

    .line 98
    move-object v2, v1

    .line 99
    move-object v3, p0

    .line 100
    move v4, p1

    .line 101
    move-object v5, v0

    .line 102
    move-object v6, p2

    .line 103
    move-object v7, p3

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v2 .. v7}, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter$1;-><init>(Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;ILcom/narvii/media/PhoneAudioPickerFragment$Entry;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    :goto_2
    sget p1, Lcom/narvii/lib/R$id;->media_picker_title:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object p3, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->name:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    sget p1, Lcom/narvii/lib/R$id;->media_picker_info:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    check-cast p1, Landroid/widget/TextView;

    .line 131
    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    iget-object v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->artistName:Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v1, " | "

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    iget-object v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->albumName:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    sget p1, Lcom/narvii/lib/R$id;->media_picker_time:I

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    check-cast p1, Landroid/widget/TextView;

    .line 166
    .line 167
    iget p3, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->duration:I

    .line 168
    int-to-long v0, p3

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    .line 172
    move-result-object p3

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-object p2

    .line 177
    :cond_3
    const/4 p1, 0x0

    .line 178
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 13
    move-result v1

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$id;->select:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_7

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 20
    .line 21
    const-string p2, "maximum"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 25
    move-result p1

    .line 26
    .line 27
    const-string p2, "single"

    .line 28
    const/4 p3, 0x1

    .line 29
    .line 30
    if-eq p1, p3, :cond_1

    .line 31
    .line 32
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {p4}, Lcom/narvii/media/PhoneAudioPickerFragment;->o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    .line 36
    move-result-object p4

    .line 37
    .line 38
    if-eqz p4, :cond_1

    .line 39
    .line 40
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 44
    move-result p4

    .line 45
    .line 46
    if-eqz p4, :cond_2

    .line 47
    .line 48
    :cond_1
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 49
    .line 50
    new-instance p5, Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p4, p5}, Lcom/narvii/media/PhoneAudioPickerFragment;->p(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V

    .line 57
    .line 58
    :cond_2
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {p4}, Lcom/narvii/media/PhoneAudioPickerFragment;->o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    .line 62
    move-result-object p4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    move-result p4

    .line 67
    .line 68
    if-nez p4, :cond_5

    .line 69
    .line 70
    if-lez p1, :cond_4

    .line 71
    .line 72
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p4}, Lcom/narvii/media/PhoneAudioPickerFragment;->o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    .line 76
    move-result-object p4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result p4

    .line 81
    .line 82
    if-lt p4, p1, :cond_4

    .line 83
    .line 84
    iget-object p4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 85
    .line 86
    const-string p5, "maxStr"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4, p5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p4

    .line 91
    .line 92
    .line 93
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result p5

    .line 95
    const/4 v0, 0x0

    .line 96
    .line 97
    if-eqz p5, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 101
    move-result-object p4

    .line 102
    .line 103
    iget-object p5, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 104
    .line 105
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count_audio:I

    .line 106
    .line 107
    new-array v2, p3, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    aput-object p1, v2, v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p5, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-static {p4, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p4, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_4
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->o(Lcom/narvii/media/PhoneAudioPickerFragment;)Ljava/util/ArrayList;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 152
    move-result p1

    .line 153
    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->s(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 160
    goto :goto_1

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 164
    .line 165
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->v(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 169
    :goto_1
    return p3

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 173
    move-result p1

    .line 174
    return p1
.end method
