.class Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneAudioPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumAdapter"
.end annotation


# instance fields
.field folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/media/PhoneAudioPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneAudioPickerFragment;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneAudioPickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 34
    .line 35
    iget v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iget v1, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 45
    const/4 v2, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 49
    .line 50
    const-string v1, "Camera"

    .line 51
    .line 52
    iget-object v2, v0, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 61
    const/4 v2, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

    .line 7
    .line 8
    add-int/lit8 p1, p1, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$layout;->media_image_picker_album:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    sget p3, Lcom/narvii/lib/R$id;->image:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    sget v0, Lcom/narvii/lib/R$id;->title:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    instance-of v1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 29
    .line 30
    const-string v2, ")"

    .line 31
    .line 32
    const-string v3, " ("

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-object v4, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    check-cast v6, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 66
    .line 67
    iget v7, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 68
    .line 69
    iget v8, v6, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderId:I

    .line 70
    .line 71
    if-ne v7, v8, :cond_0

    .line 72
    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v1}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 83
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object p1

    .line 123
    const/4 v1, 0x0

    .line 124
    move-object v4, v1

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v5

    .line 129
    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    check-cast v4, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v5}, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->getAudioThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 144
    move-result-object v4

    .line 145
    .line 146
    if-eqz v4, :cond_3

    .line 147
    .line 148
    :cond_4
    if-nez v4, :cond_5

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 152
    goto :goto_1

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {p3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    .line 157
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    iget-object p3, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 163
    .line 164
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_audios:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 168
    move-result-object p3

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    iget-object p3, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 177
    .line 178
    iget-object p3, p3, Lcom/narvii/media/PhoneAudioPickerFragment;->entries:Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 182
    move-result p3

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_2
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/narvii/media/PhoneAudioPickerFragment;->q(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    iput-object p2, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->r(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    .line 21
    .line 22
    sget p2, Lcom/narvii/lib/R$id;->title:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    instance-of p1, p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 41
    .line 42
    check-cast p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p3}, Lcom/narvii/media/PhoneAudioPickerFragment;->q(Lcom/narvii/media/PhoneAudioPickerFragment;Lcom/narvii/media/PhoneAudioPickerFragment$Entry;)Ljava/util/ArrayList;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    iput-object p2, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->fentries:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/media/PhoneAudioPickerFragment;->r(Lcom/narvii/media/PhoneAudioPickerFragment;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->titleButton:Landroid/view/View;

    .line 58
    .line 59
    sget p2, Lcom/narvii/lib/R$id;->title:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object p2, p3, Lcom/narvii/media/PhoneAudioPickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/PhoneAudioPickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/media/PhoneAudioPickerFragment;->adapter:Lcom/narvii/media/PhoneAudioPickerFragment$Adapter;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 78
    const/4 p1, 0x1

    .line 79
    return p1
.end method
