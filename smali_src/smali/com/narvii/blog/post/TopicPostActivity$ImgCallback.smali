.class Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;
.super Lcom/narvii/post/BasePostActivity$BaseImgCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/TopicPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/TopicPostActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/post/TopicPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;-><init>(Lcom/narvii/widget/EditTextIMG;)V

    .line 8
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120ee2

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->isSelectionInTag(Landroid/widget/TextView;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    const p2, 0x7f120eb2

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/blog/post/TopicPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 46
    .line 47
    const-class p2, Lcom/narvii/media/MediaOrganizeFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    const-string v0, "android.intent.action.PICK"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    const-string v0, "mediaList"

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/narvii/blog/post/TopicPostActivity;->access$100(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/DraftManager;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/narvii/blog/post/TopicPostActivity;->access$000(Lcom/narvii/blog/post/TopicPostActivity;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string v0, "dir"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    const-string p1, "maximum"

    .line 93
    .line 94
    const/16 v0, 0x19

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/blog/post/TopicPostActivity;->access$200(Lcom/narvii/blog/post/TopicPostActivity;)Lcom/narvii/post/PostObject;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    .line 109
    move-result p1

    .line 110
    .line 111
    const-string v0, "coverMediaIndex"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/blog/post/TopicPostActivity;->allowSetCover()Z

    .line 120
    move-result p1

    .line 121
    .line 122
    const-string v0, "allowSetCover"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 128
    .line 129
    iget-object p1, p1, Lcom/narvii/blog/post/TopicPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    const-string v0, "existsRefIds"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 153
    .line 154
    const/16 v0, 0xc

    .line 155
    .line 156
    .line 157
    invoke-static {p1, p2, v0}, Lcom/narvii/blog/post/TopicPostActivity$ImgCallback;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 158
    :goto_0
    const/4 p1, 0x1

    .line 159
    return p1

    .line 160
    .line 161
    .line 162
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 163
    move-result p1

    .line 164
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x7f120ee2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    const v3, 0x7f12096a

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 34
    move-result p1

    .line 35
    return p1
.end method
