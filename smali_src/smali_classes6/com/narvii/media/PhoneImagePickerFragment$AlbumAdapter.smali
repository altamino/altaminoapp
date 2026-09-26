.class Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/PhoneImagePickerFragment;
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
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/media/PhoneImagePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

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
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 34
    .line 35
    iget v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

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
    iget v1, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

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
    iget-object v2, v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->folders:Ljava/util/ArrayList;

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
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->getItem(I)Ljava/lang/Object;

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
    instance-of v1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 29
    .line 30
    const-string v2, ")"

    .line 31
    .line 32
    const-string v3, " ("

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v5

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    check-cast v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 58
    .line 59
    iget v6, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    .line 60
    .line 61
    iget v5, v5, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    .line 62
    .line 63
    if-ne v6, v5, :cond_0

    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p3, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->F(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 72
    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 106
    move-result p1

    .line 107
    const/4 v1, 0x0

    .line 108
    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move-object p1, v1

    .line 122
    .line 123
    :goto_1
    if-nez p1, :cond_4

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_4
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {v1, p3, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->F(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    .line 133
    .line 134
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 140
    .line 141
    .line 142
    invoke-static {p3}, Lcom/narvii/media/PhoneImagePickerFragment;->B(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 143
    move-result v1

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    .line 148
    goto :goto_3

    .line 149
    .line 150
    :cond_5
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_images:I

    .line 151
    .line 152
    .line 153
    :goto_3
    invoke-virtual {p3, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget-object p3, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 163
    .line 164
    iget-object p3, p3, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 168
    move-result p3

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_4
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/narvii/media/PhoneImagePickerFragment;->w(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    iput-object p2, p1, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->A(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

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
    iget-object p2, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/narvii/media/PhoneImagePickerFragment;->B(Lcom/narvii/media/PhoneImagePickerFragment;)Z

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    sget p2, Lcom/narvii/lib/R$string;->media_image_picker_all_images:I

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    instance-of p1, p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 52
    .line 53
    check-cast p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p3}, Lcom/narvii/media/PhoneImagePickerFragment;->w(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    iput-object p2, p1, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/narvii/media/PhoneImagePickerFragment;->A(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    .line 69
    .line 70
    sget p2, Lcom/narvii/lib/R$id;->title:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object p2, p3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderName:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;->this$0:Lcom/narvii/media/PhoneImagePickerFragment;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 89
    const/4 p1, 0x1

    .line 90
    return p1
.end method
