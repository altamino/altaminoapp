.class Lcom/narvii/media/MediaOrganizeFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaOrganizeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lcom/narvii/media/MediaOrganizeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/MediaOrganizeFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 8
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->removeItem(ILcom/narvii/model/Media;)V

    return-void
.end method

.method private removeItem(ILcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p2}, Lcom/narvii/media/MediaOrganizeFragment;->v(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p2, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/list/DragSortListFragment;->removeItemAtPosition(I)V

    .line 19
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method exists(Lcom/narvii/model/Media;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/MediaOrganizeFragment;->existsRefIds:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$layout;->media_organize_list_item:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/Media;

    .line 13
    .line 14
    sget p3, Lcom/narvii/lib/R$id;->image:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/widget/ThumbImageView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 24
    .line 25
    sget v0, Lcom/narvii/lib/R$id;->edit:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    sget p3, Lcom/narvii/lib/R$id;->text:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    check-cast p3, Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    sget v1, Lcom/narvii/lib/R$string;->media_no_desc:I

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->media_add_desc:I

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 64
    .line 65
    iget-object v1, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->exists(Lcom/narvii/model/Media;)Z

    .line 72
    move-result p3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 82
    move-result v1

    .line 83
    const/4 v2, 0x0

    .line 84
    .line 85
    const/16 v3, 0x8

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    move v1, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    move v1, v2

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    sget v0, Lcom/narvii/lib/R$id;->drag_handle:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    move v1, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move v1, v2

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    sget v0, Lcom/narvii/lib/R$id;->mask:I

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    if-eqz p3, :cond_3

    .line 122
    move p3, v2

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move p3, v3

    .line 125
    .line 126
    .line 127
    :goto_3
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    sget p3, Lcom/narvii/lib/R$id;->cover_mark:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object p3

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {v0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->v(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    .line 139
    move-result p1

    .line 140
    .line 141
    if-eqz p1, :cond_4

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    move v2, v3

    .line 144
    .line 145
    .line 146
    :goto_4
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Media;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eqz p5, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result v1

    .line 12
    .line 13
    sget v2, Lcom/narvii/lib/R$id;->image:I

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 23
    move-result p2

    .line 24
    .line 25
    new-instance p3, Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    const-class p5, Lcom/narvii/media/MediaGalleryActivity;

    .line 32
    .line 33
    .line 34
    invoke-direct {p3, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    const-string p4, "list"

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    const-string p1, "hideShareBar"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    if-ltz p2, :cond_0

    .line 51
    .line 52
    const-string p1, "position"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {p0, p3}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 59
    return v0

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 61
    .line 62
    if-eqz p5, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 66
    move-result v2

    .line 67
    .line 68
    sget v3, Lcom/narvii/lib/R$id;->edit:I

    .line 69
    .line 70
    if-ne v2, v3, :cond_4

    .line 71
    move-object v2, p3

    .line 72
    .line 73
    check-cast v2, Lcom/narvii/model/Media;

    .line 74
    .line 75
    new-instance v3, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    iget-object v4, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 85
    .line 86
    const-string v5, "allowSetCover"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 90
    move-result v4

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    iget-object v5, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {v5, v2}, Lcom/narvii/media/MediaOrganizeFragment;->v(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    .line 98
    move-result v5

    .line 99
    .line 100
    if-eqz v5, :cond_2

    .line 101
    .line 102
    sget v5, Lcom/narvii/lib/R$string;->remove_as_cover_image:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v5, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_2
    sget v5, Lcom/narvii/lib/R$string;->set_as_cover_image:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v5, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 112
    .line 113
    :cond_3
    :goto_0
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 117
    .line 118
    new-instance v0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p0, v4, v2, p2}, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;-><init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ZLcom/narvii/model/Media;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_4
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 134
    move-result p1

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    check-cast p3, Lcom/narvii/model/Media;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p3}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->exists(Lcom/narvii/model/Media;)Z

    .line 142
    move-result p1

    .line 143
    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p3}, Lcom/narvii/media/MediaOrganizeFragment;->pickAndReturn(Lcom/narvii/model/Media;)V

    .line 150
    :cond_5
    return v0

    .line 151
    .line 152
    :cond_6
    check-cast p3, Lcom/narvii/model/Media;

    .line 153
    .line 154
    iget-object p1, p3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 155
    .line 156
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    sget p2, Lcom/narvii/lib/R$string;->media_caption:I

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 169
    .line 170
    new-instance p2, Landroid/widget/EditText;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 174
    move-result-object p4

    .line 175
    .line 176
    .line 177
    invoke-direct {p2, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    iget-object p4, p3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    iget-object p4, p3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 185
    .line 186
    if-nez p4, :cond_7

    .line 187
    goto :goto_1

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 191
    move-result v1

    .line 192
    .line 193
    .line 194
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 198
    .line 199
    new-instance p4, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;

    .line 200
    .line 201
    .line 202
    invoke-direct {p4, p0, p3, p2}, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;-><init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;Lcom/narvii/model/Media;Landroid/widget/EditText;)V

    .line 203
    .line 204
    .line 205
    const p2, 0x104000a

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    .line 210
    const/high16 p2, 0x1040000

    .line 211
    .line 212
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 223
    move-result-object p2

    .line 224
    const/4 p3, 0x4

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 231
    return v0

    .line 232
    .line 233
    .line 234
    :cond_8
    :goto_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 235
    move-result p1

    .line 236
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "coverMediaIndex"

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-ltz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-ge p1, v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/model/Media;

    .line 33
    .line 34
    iput-object p1, v1, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 35
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVArrayAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/media/MediaOrganizeFragment;->u(Lcom/narvii/media/MediaOrganizeFragment;)I

    .line 12
    move-result v1

    .line 13
    .line 14
    const-string v2, "coverMediaIndex"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-object v0
.end method
