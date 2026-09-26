.class Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;
.super Lcom/narvii/post/BasePostActivity$BaseImgCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/BlogPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/BlogPostActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/blog/post/BlogPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

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
    const v1, 0x7f0a0b49

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->isSelectionInTag(Landroid/widget/TextView;)Z

    .line 17
    move-result p1

    .line 18
    const/4 p2, 0x1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    const v0, 0x7f120eb2

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 47
    .line 48
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v1, "android.intent.action.PICK"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    const-string v1, "mediaList"

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/narvii/blog/post/BlogPostActivity;->access$100(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/DraftManager;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lcom/narvii/blog/post/BlogPostActivity;->access$000(Lcom/narvii/blog/post/BlogPostActivity;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    const-string v1, "dir"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    const-string p1, "maximum"

    .line 94
    .line 95
    const/16 v1, 0x19

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/blog/post/BlogPostActivity;->access$200(Lcom/narvii/blog/post/BlogPostActivity;)Lcom/narvii/post/PostObject;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    .line 110
    move-result p1

    .line 111
    .line 112
    const-string v1, "coverMediaIndex"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    .line 117
    const-string p1, "allowSetCover"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lcom/narvii/util/text/IMGUtils;->extractRefIds(Ljava/lang/String;)Ljava/util/List;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    const-string v1, "existsRefIds"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 148
    .line 149
    const/16 v1, 0x8

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v0, v1}, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 153
    :goto_0
    return p2

    .line 154
    .line 155
    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 157
    move-result p1

    .line 158
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity$ImgCallback;->this$0:Lcom/narvii/blog/post/BlogPostActivity;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f120ee2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    const v2, 0x7f0a0b49

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/util/ActionBarIcon;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    const v3, 0x7f12096a

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 40
    .line 41
    .line 42
    invoke-super {p0, p1, p2}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 43
    move-result p1

    .line 44
    return p1
.end method
