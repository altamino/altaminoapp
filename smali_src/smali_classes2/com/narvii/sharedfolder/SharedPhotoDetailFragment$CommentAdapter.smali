.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentAdapter"
.end annotation


# instance fields
.field private VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

.field animated:Z

.field private final expands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestFinished:Z

.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 9
    .line 10
    new-instance p2, Ljava/util/HashSet;

    .line 11
    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    .line 16
    .line 17
    new-instance p2, Lcom/narvii/util/Tag;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "view_all_comments"

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 28
    return-void
.end method

.method private canAdd(Ljava/util/List;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
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
.method protected buildList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Comment;",
            ">;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/model/Comment;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->canAdd(Ljava/util/List;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    move-result v2

    .line 54
    .line 55
    if-lez v2, :cond_2

    .line 56
    .line 57
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    move-result v3

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    check-cast v3, Lcom/narvii/model/Comment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    iput-object v4, v3, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->canAdd(Ljava/util/List;)Z

    .line 87
    move-result v4

    .line 88
    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->v(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget p1, p1, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 104
    .line 105
    if-lez p1, :cond_4

    .line 106
    .line 107
    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_4
    return-object v0
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->v(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/model/Comment;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/Comment;

    .line 16
    .line 17
    iget v0, p1, Lcom/narvii/model/Comment;->type:I

    .line 18
    const/4 v2, 0x3

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    .line 32
    :goto_0
    iget v4, p1, Lcom/narvii/model/Comment;->type:I

    .line 33
    .line 34
    if-ne v4, v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->getCommentSticker()Lcom/narvii/model/Sticker;

    .line 38
    move-result-object v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    :goto_1
    const v4, 0x7f0d046f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    const p3, 0x7f0a0354

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    check-cast p3, Lcom/narvii/widget/ExpandTextView;

    .line 57
    .line 58
    iget-object v4, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 59
    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    const-string v4, ""

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    :goto_2
    if-eqz v2, :cond_3

    .line 70
    .line 71
    iget-object v5, v2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v5

    .line 76
    .line 77
    if-nez v5, :cond_3

    .line 78
    .line 79
    iget-object v5, v2, Lcom/narvii/model/Sticker;->name:Ljava/lang/String;

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_3
    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 83
    .line 84
    .line 85
    const v6, 0x7f12113e

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    :goto_3
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    const v2, 0x7f1202e9

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_4
    if-eqz v2, :cond_5

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    const-string v2, "["

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v2, "]"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    goto :goto_4

    .line 131
    .line 132
    :cond_5
    iget-object v0, p1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 133
    .line 134
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v5, " "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 160
    .line 161
    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 162
    .line 163
    iget-object v5, v5, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->sharedPhotoColorHelper:Lcom/narvii/sharedfolder/SharedPhotoColorHelper;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v4}, Lcom/narvii/sharedfolder/SharedPhotoColorHelper;->getNickNameColor(Ljava/lang/String;)I

    .line 167
    move-result v5

    .line 168
    .line 169
    .line 170
    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 174
    move-result v5

    .line 175
    .line 176
    const/16 v6, 0x21

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 180
    .line 181
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 188
    move-result v4

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->isSubComment(Lcom/narvii/model/Comment;)Z

    .line 204
    move-result v2

    .line 205
    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    const/high16 v2, 0x41c80000    # 25.0f

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 216
    move-result v1

    .line 217
    float-to-int v1, v1

    .line 218
    .line 219
    .line 220
    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 221
    .line 222
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    const v0, 0x7f0a053c

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 247
    move-result p1

    .line 248
    xor-int/2addr p1, v3

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, p1}, Lcom/narvii/widget/ExpandTextView;->setExpand(Z)V

    .line 252
    return-object p2

    .line 253
    .line 254
    .line 255
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->getItem(I)Ljava/lang/Object;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->VIEW_ALL_COMMENTS:Lcom/narvii/util/Tag;

    .line 259
    .line 260
    if-ne p1, v0, :cond_a

    .line 261
    .line 262
    .line 263
    const p1, 0x7f0d061c

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    const p2, 0x7f0a0fbc

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    move-result-object p2

    .line 275
    .line 276
    check-cast p2, Landroid/widget/TextView;

    .line 277
    .line 278
    iget-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 279
    .line 280
    .line 281
    invoke-static {p3}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->v(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Lcom/narvii/model/SharedFile;

    .line 282
    move-result-object p3

    .line 283
    .line 284
    if-eqz p3, :cond_9

    .line 285
    .line 286
    iget v0, p3, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 287
    .line 288
    if-gtz v0, :cond_8

    .line 289
    .line 290
    const/16 v1, 0x8

    .line 291
    .line 292
    .line 293
    :cond_8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    iget p3, p3, Lcom/narvii/model/SharedFile;->commentsCount:I

    .line 300
    .line 301
    .line 302
    const v1, 0x7f1202f6

    .line 303
    .line 304
    .line 305
    const v2, 0x7f12126e

    .line 306
    .line 307
    .line 308
    invoke-static {v0, p3, v1, v2}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 309
    move-result-object p3

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    :cond_9
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;

    .line 315
    .line 316
    .line 317
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-object p1

    .line 322
    .line 323
    :cond_a
    new-instance p1, Landroid/view/View;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 327
    move-result-object p2

    .line 328
    .line 329
    .line 330
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 331
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const/high16 v1, 0x10a0000

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->commentList:Lcom/narvii/widget/NVListView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/model/Comment;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p5, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    const p4, 0x7f0a053c

    .line 15
    .line 16
    if-ne p1, p4, :cond_1

    .line 17
    .line 18
    check-cast p3, Lcom/narvii/model/Comment;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 24
    move-result-object p4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->expands:Ljava/util/HashSet;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->notifyDataSetChanged()V

    .line 43
    return p2

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->w(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)V

    .line 49
    return p2
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/CommentListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "animated"

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 13
    .line 14
    const-string v0, "requestFinished"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->requestFinished:Z

    .line 21
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "animated"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    .line 13
    const-string v1, "requestFinished"

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->animated:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    return-object v0
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    const/16 v1, 0x6f

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 8
    return-void
.end method

.method protected saveInstanceState()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$CommentAdapter;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->t(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
