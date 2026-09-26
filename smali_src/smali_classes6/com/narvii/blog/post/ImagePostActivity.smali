.class public Lcom/narvii/blog/post/ImagePostActivity;
.super Lcom/narvii/post/BackgroundPostActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/post/LocationPickerFragment$LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;,
        Lcom/narvii/blog/post/ImagePostActivity$ImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/post/BackgroundPostActivity<",
        "Lcom/narvii/blog/post/BlogPost;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/narvii/post/LocationPickerFragment$LocationListener;"
    }
.end annotation


# static fields
.field private static final COLUMN_NUMBER:I = 0x3

.field protected static final MAX_MEDIA:I = 0x19

.field static final PICK_CATEGORY_REQUEST:I = 0x1

.field static final SORT_PHOTO_REQUEST:I = 0x2


# instance fields
.field private addPhoto:Landroid/view/View;

.field protected editTitle:Landroid/widget/EditText;

.field protected fansOnlyContainer:Landroid/view/View;

.field private imgContent:Lcom/narvii/widget/NVImageView;

.field layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

.field protected mediaCount:Landroid/widget/TextView;

.field protected mediaPreview:Lcom/narvii/widget/ThumbImageView;

.field multiImageContainer:Landroidx/recyclerview/widget/RecyclerView;

.field protected pickCategories:Landroid/widget/Button;

.field protected pickLocation:Landroid/widget/ImageView;

.field protected pickLocationProgress:Landroid/view/View;

.field protected pickMedia:Landroid/widget/ImageView;

.field recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

.field screenSize:Landroid/graphics/Point;

.field singleImageCaption:Landroid/widget/TextView;

.field stat_add_category:Z

.field stat_add_category_success:Z

.field stat_add_photo:Z

.field stat_add_photo_success:Z

.field stat_remove_location:Z

.field stat_remove_location_success:Z

.field private viewHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/post/BackgroundPostActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/blog/post/ImagePostActivity$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/ImagePostActivity$1;-><init>(Lcom/narvii/blog/post/ImagePostActivity;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->editCaption(Lcom/narvii/model/Media;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/blog/post/ImagePostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/blog/post/ImagePostActivity;->organizeMediaList()V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/blog/post/ImagePostActivity;->showActionDialog(Lcom/narvii/model/Media;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/post/PostObject;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/blog/post/ImagePostActivity;)Lcom/narvii/post/PostObject;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    return-object p0
.end method

.method private editCaption(Lcom/narvii/model/Media;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x7f120c2d

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 18
    .line 19
    new-instance v2, Landroid/widget/EditText;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    iget-object v0, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f12007f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/blog/post/ImagePostActivity$3;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0, p1, v2}, Lcom/narvii/blog/post/ImagePostActivity$3;-><init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;Landroid/widget/EditText;)V

    .line 57
    .line 58
    .line 59
    const p1, 0x104000a

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    .line 64
    const/high16 p1, 0x1040000

    .line 65
    .line 66
    sget-object v0, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x4

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 85
    return-void
.end method

.method private synthetic lambda$onCreate$0(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 5

    .line 1
    const/4 p3, 0x4

    .line 2
    .line 3
    if-ne p2, p3, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget p2, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 28
    move-result p2

    .line 29
    .line 30
    iget p3, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    .line 31
    mul-int/2addr p2, p3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    move-result p3

    .line 36
    div-int/2addr p2, p3

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    .line 47
    .line 48
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 49
    int-to-float v0, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const/high16 v2, 0x41a00000    # 20.0f

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 59
    move-result v1

    .line 60
    sub-float/2addr v0, v1

    .line 61
    .line 62
    iget v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    .line 63
    int-to-float v1, v1

    .line 64
    .line 65
    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    mul-float/2addr v1, v3

    .line 67
    div-float/2addr v0, v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 71
    move-result v1

    .line 72
    int-to-float v1, v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 76
    move-result v4

    .line 77
    int-to-float v4, v4

    .line 78
    mul-float/2addr v4, v3

    .line 79
    div-float/2addr v1, v4

    .line 80
    .line 81
    cmpl-float v0, v1, v0

    .line 82
    .line 83
    if-lez v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    .line 86
    .line 87
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 88
    .line 89
    if-le p2, v0, :cond_1

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 95
    move-result p2

    .line 96
    int-to-float p2, p2

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    .line 99
    .line 100
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 101
    int-to-float v0, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 109
    move-result v1

    .line 110
    sub-float/2addr v0, v1

    .line 111
    div-float/2addr p2, v0

    .line 112
    .line 113
    iget v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    .line 114
    int-to-float v0, v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 118
    move-result p1

    .line 119
    int-to-float p1, p1

    .line 120
    div-float/2addr p1, p2

    .line 121
    sub-float/2addr v0, p1

    .line 122
    float-to-int p1, v0

    .line 123
    int-to-float p1, p1

    .line 124
    .line 125
    const/high16 p2, 0x40000000    # 2.0f

    .line 126
    div-float/2addr p1, p2

    .line 127
    float-to-int p1, p1

    .line 128
    .line 129
    instance-of p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 130
    .line 131
    if-eqz p2, :cond_1

    .line 132
    .line 133
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    .line 135
    iput p1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 136
    nop

    .line 137
    :cond_1
    :goto_0
    return-void
.end method

.method private organizeMediaList()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/media/MediaOrganizeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "mediaList"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "dir"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/blog/post/BlogPost;->getCoverMediaIndex()I

    .line 46
    move-result v1

    .line 47
    .line 48
    const-string v2, "coverMediaIndex"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    .line 53
    const-string v1, "maximum"

    .line 54
    .line 55
    const/16 v2, 0x19

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    const-string v1, "allowSetCover"

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const/4 v1, 0x2

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0, v1}, Lcom/narvii/blog/post/ImagePostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 69
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

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showActionDialog(Lcom/narvii/model/Media;I)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    move-object v3, v0

    .line 11
    .line 12
    check-cast v3, Lcom/narvii/blog/post/BlogPost;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-le v0, v1, :cond_1

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v0, v2

    .line 30
    .line 31
    :goto_0
    new-instance v3, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    iget-object v4, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v4

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    .line 49
    const v4, 0x7f12007f

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    const v4, 0x7f120443

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    .line 61
    const v4, 0x7f120fee

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 65
    .line 66
    .line 67
    :cond_3
    const v2, 0x7f1203a0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 71
    .line 72
    new-instance v1, Lcom/narvii/blog/post/ImagePostActivity$2;

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, p0, p1, v0, p2}, Lcom/narvii/blog/post/ImagePostActivity$2;-><init>(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/model/Media;ZI)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 82
    return-void
.end method

.method public static synthetic y(Lcom/narvii/blog/post/ImagePostActivity;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/blog/post/ImagePostActivity;->lambda$onCreate$0(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/blog/post/ImagePostActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    return p0
.end method


# virtual methods
.method public blogId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    const-string v1, "blogId"

    .line 5
    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public buildDraftParams()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .line 1
    .line 2
    const-string v0, "blogId"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    return-object v2
.end method

.method protected checkEligible()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "blog"

    .line 3
    .line 4
    const-string v1, "image"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method protected doPost(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->blogId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "/blog"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p0}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    const-class v2, Lcom/narvii/model/api/BlogResponse;

    .line 6
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method protected bridge synthetic doPost(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->doPost(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected doPreview(Lcom/narvii/blog/post/BlogPost;)V
    .locals 2

    const-string v0, "feed"

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->blogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Lcom/narvii/blog/post/BlogPost;->getPreviewBlog(Lcom/narvii/model/Blog;Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/model/Blog;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "taggedObjects"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "preview"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "Source"

    const-string v1, "Preview"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p0, v0}, Lcom/narvii/blog/post/ImagePostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic doPreview(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->doPreview(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    return-object v0
.end method

.method protected getInfluencerLockLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->fansOnlyContainer:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->blogId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const-string v2, "blogCategoryList"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-class v3, Lcom/narvii/model/BlogCategory;

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    iput-object v2, v3, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_category_success:Z

    .line 37
    :cond_0
    const/4 v1, 0x2

    .line 38
    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    if-ne p2, v0, :cond_1

    .line 42
    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    const-string p1, "mediaList"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-class p2, Lcom/narvii/model/Media;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    iput-object p1, p2, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 64
    .line 65
    const-string p1, "coverMediaIndex"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    move-result p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcom/narvii/blog/post/BlogPost;->setCoverMediaIndex(I)V

    .line 73
    .line 74
    iput-object p2, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 78
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const/16 v0, 0x19

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :sswitch_0
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_category:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-class v0, Lcom/narvii/blog/category/BlogCategoryPickerFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    const-string v4, "blogCategoryList"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 39
    const/4 v4, 0x6

    .line 40
    .line 41
    if-ne v3, v4, :cond_0

    .line 42
    move v3, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v3, v2

    .line 45
    .line 46
    :goto_0
    const-string v4, "isQuiz"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    move v3, v2

    .line 55
    .line 56
    :goto_1
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 60
    move-result v4

    .line 61
    .line 62
    if-ge v2, v4, :cond_2

    .line 63
    .line 64
    iget-object v4, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    .line 65
    .line 66
    .line 67
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    check-cast v4, Lcom/narvii/model/BlogCategory;

    .line 71
    .line 72
    iget v4, v4, Lcom/narvii/model/BlogCategory;->status:I

    .line 73
    .line 74
    const/16 v5, 0x9

    .line 75
    .line 76
    if-eq v4, v5, :cond_1

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v2, v3

    .line 83
    .line 84
    :cond_3
    const-string p1, "maximum"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v0, v1}, Lcom/narvii/blog/post/ImagePostActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :sswitch_1
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo:Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 101
    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    move-result v1

    .line 107
    .line 108
    if-lt v1, v0, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    const v0, 0x7f120efb

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_4
    iget-object v1, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 133
    .line 134
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    new-instance v4, Landroid/os/Bundle;

    .line 141
    .line 142
    .line 143
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 144
    .line 145
    if-nez p1, :cond_5

    .line 146
    move p1, v2

    .line 147
    goto :goto_2

    .line 148
    .line 149
    .line 150
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 151
    move-result p1

    .line 152
    :goto_2
    sub-int/2addr v0, p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 156
    goto :goto_4

    .line 157
    .line 158
    .line 159
    :sswitch_2
    invoke-direct {p0}, Lcom/narvii/blog/post/ImagePostActivity;->organizeMediaList()V

    .line 160
    goto :goto_4

    .line 161
    .line 162
    .line 163
    :sswitch_3
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    check-cast p1, Lcom/narvii/model/Media;

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, p1, v2}, Lcom/narvii/blog/post/ImagePostActivity;->showActionDialog(Lcom/narvii/model/Media;I)V

    .line 176
    goto :goto_4

    .line 177
    .line 178
    .line 179
    :sswitch_4
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 183
    .line 184
    iget v2, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 185
    .line 186
    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/post/LocationPickerFragment;->pickLocation(IIZ)V

    .line 190
    goto :goto_4

    .line 191
    .line 192
    :sswitch_5
    iput-boolean v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo:Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 199
    .line 200
    new-instance v1, Landroid/os/Bundle;

    .line 201
    .line 202
    .line 203
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 204
    .line 205
    const-string v3, "type"

    .line 206
    .line 207
    const-string v4, "pickimage"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 216
    move-result v3

    .line 217
    .line 218
    :cond_6
    iget-object v3, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 219
    .line 220
    iget-object v4, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    .line 221
    .line 222
    iget-object v5, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v5}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 226
    move-result-object v4

    .line 227
    .line 228
    if-nez p1, :cond_7

    .line 229
    move p1, v2

    .line 230
    goto :goto_3

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 234
    move-result p1

    .line 235
    :goto_3
    sub-int/2addr v0, p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 239
    :goto_4
    return-void

    .line 240
    nop

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    :sswitch_data_0
    .sparse-switch
        0x7f0a00a1 -> :sswitch_5
        0x7f0a00a8 -> :sswitch_4
        0x7f0a06fc -> :sswitch_3
        0x7f0a093b -> :sswitch_2
        0x7f0a0ae9 -> :sswitch_4
        0x7f0a0aea -> :sswitch_1
        0x7f0a0b2d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d0634

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "locationPicker"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/post/LocationPickerFragment;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/post/LocationPickerFragment;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Lcom/narvii/post/LocationPickerFragment;-><init>()V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 59
    .line 60
    iput-object p0, v0, Lcom/narvii/post/LocationPickerFragment;->listener:Lcom/narvii/post/LocationPickerFragment$LocationListener;

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0e9e

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Landroid/widget/EditText;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    .line 72
    .line 73
    .line 74
    const v0, 0x7f0a00a1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->addPhoto:Landroid/view/View;

    .line 81
    .line 82
    .line 83
    const v0, 0x7f0a0ae9

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    const v0, 0x7f0a0ae8

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocationProgress:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    const v0, 0x7f0a06fc

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 115
    .line 116
    .line 117
    const v0, 0x7f0a024b

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 135
    .line 136
    new-instance v1, Lcom/narvii/blog/post/a;

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, p0}, Lcom/narvii/blog/post/a;-><init>(Lcom/narvii/blog/post/ImagePostActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 143
    .line 144
    .line 145
    const v0, 0x7f0a0b2d

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    check-cast v0, Landroid/widget/Button;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    .line 154
    .line 155
    .line 156
    const v0, 0x7f0a0aea

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickMedia:Landroid/widget/ImageView;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    const v0, 0x7f0a093b

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    const v0, 0x7f0a092e

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    check-cast v0, Landroid/widget/TextView;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaCount:Landroid/widget/TextView;

    .line 193
    .line 194
    .line 195
    const v0, 0x7f0a09bb

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroidx/recyclerview/widget/RecyclerView;

    .line 204
    .line 205
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 209
    move-result-object v2

    .line 210
    const/4 v3, 0x3

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 217
    .line 218
    new-instance v0, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    .line 219
    .line 220
    .line 221
    invoke-direct {v0, p0}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;-><init>(Lcom/narvii/blog/post/ImagePostActivity;)V

    .line 222
    .line 223
    iput-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    .line 224
    .line 225
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroidx/recyclerview/widget/RecyclerView;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 229
    .line 230
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->addPhoto:Landroid/view/View;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .line 235
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    if-nez p1, :cond_2

    .line 241
    .line 242
    const-string p1, "blogId"

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    move-result-object p1

    .line 247
    .line 248
    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    move-result p1

    .line 251
    .line 252
    if-eqz p1, :cond_2

    .line 253
    .line 254
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 255
    .line 256
    if-nez p1, :cond_1

    .line 257
    .line 258
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    .line 259
    .line 260
    .line 261
    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 262
    .line 263
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 264
    .line 265
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 266
    .line 267
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 268
    const/4 v0, 0x7

    .line 269
    .line 270
    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 271
    .line 272
    .line 273
    :cond_2
    const p1, 0x7f0a0ae7

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 277
    move-result-object p1

    .line 278
    .line 279
    const/16 v0, 0x8

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    const p1, 0x7f0a076c

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 296
    move-result-object p1

    .line 297
    .line 298
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->screenSize:Landroid/graphics/Point;

    .line 299
    .line 300
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 301
    int-to-double v0, p1

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    const-wide v2, 0x3fd47ae147ae147bL    # 0.32

    .line 307
    mul-double/2addr v0, v2

    .line 308
    double-to-int p1, v0

    .line 309
    .line 310
    iput p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->viewHeight:I

    .line 311
    .line 312
    .line 313
    const p1, 0x7f0a055f

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 317
    move-result-object p1

    .line 318
    .line 319
    iput-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->fansOnlyContainer:Landroid/view/View;

    .line 320
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/post/BasePostActivity;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onLocatingChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocationProgress:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    return-void
.end method

.method public onLocationResult(Lcom/narvii/location/GPSCoordinate;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 11
    .line 12
    iput v2, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 13
    .line 14
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location_success:Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 24
    move-result v3

    .line 25
    .line 26
    iput v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 30
    move-result p1

    .line 31
    .line 32
    iput p1, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    .line 35
    .line 36
    const-string p1, "location"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/location/LocationService;

    .line 43
    .line 44
    iget v3, v0, Lcom/narvii/blog/post/BlogPost;->latitude:I

    .line 45
    .line 46
    iget v4, v0, Lcom/narvii/blog/post/BlogPost;->longitude:I

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location:Z

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location_success:Z

    .line 58
    .line 59
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 63
    return-void
.end method

.method protected onPickOtherMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 8
    move-object v1, v0

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 27
    move-object v0, p1

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    .line 30
    .line 31
    iput-object p2, v0, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    .line 36
    .line 37
    const/16 p2, 0x19

    .line 38
    .line 39
    .line 40
    const v0, 0x7f120efb

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/post/BasePostActivity;->trimMediaList(Ljava/util/List;II)V

    .line 44
    const/4 p1, 0x1

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo_success:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 54
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/post/DraftPostActivity;->onPostFinished(Lcom/narvii/post/PostHelper;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/model/api/BlogResponse;->object()Lcom/narvii/model/Blog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->isEdit()Z

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const-string v1, "justCreated"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "Source"

    .line 28
    .line 29
    const-string v2, "View Created Post"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p2}, Lcom/narvii/blog/post/ImagePostActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 36
    .line 37
    :cond_0
    const-string p2, "statistics"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->isEdit()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->draftType()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const/4 v4, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const-string v3, "User Edits a Post"

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_1
    const-string v3, "Create Post"

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {p2, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    const-string v3, "Total Edited Posts"

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_2
    const-string v3, "Total New Posts"

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {p2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    const-string v6, "post_type"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    iget-boolean v5, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_add_photo:Z

    .line 116
    const/4 v6, 0x0

    .line 117
    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    const-string v7, "Add photo"

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move-object v7, v6

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-virtual {v3, v7, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    iget-boolean v5, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location:Z

    .line 129
    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    const-string v6, "Remove location"

    .line 133
    .line 134
    :cond_4
    iget-boolean v5, p0, Lcom/narvii/blog/post/ImagePostActivity;->stat_remove_location_success:Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    iget-object v5, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 141
    .line 142
    .line 143
    invoke-static {v5}, Lcom/narvii/model/Media;->hasVideo(Ljava/util/Collection;)Z

    .line 144
    move-result v5

    .line 145
    .line 146
    const-string v6, "Has Video"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 150
    move-result-object v3

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 154
    move-result v5

    .line 155
    .line 156
    if-eqz v5, :cond_5

    .line 157
    move v5, v0

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    move v5, v4

    .line 160
    .line 161
    :goto_3
    const-string v6, "Background Color"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v6, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    if-eqz p1, :cond_6

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    move v0, v4

    .line 174
    .line 175
    :goto_4
    const-string p1, "Background Image"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 179
    .line 180
    if-nez v1, :cond_7

    .line 181
    .line 182
    const-string p1, "source"

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 190
    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    const-string v0, "User Submits a New "

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v0, " Total"

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 215
    .line 216
    .line 217
    invoke-static {p0, p2}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 218
    :cond_7
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/post/DraftPostActivity;->onPostLoaded(Lcom/narvii/post/PostObject;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120438

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120ef8

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 6
    :goto_0
    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "location"

    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    .line 8
    iget v1, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    iget p1, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v1, p1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    .line 9
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 10
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/narvii/post/BasePostActivity;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v2, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    rsub-int/lit8 p1, p1, 0x19

    .line 14
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public postClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/blog/post/BlogPost;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 3

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 2
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location"

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/narvii/blog/post/BlogPost;

    iget v2, v2, Lcom/narvii/blog/post/BlogPost;->latitude:I

    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    iget v1, v1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    invoke-static {v2, v1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/location/LocationService;->getCachedReverseGeocoding(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 6
    check-cast v1, Lcom/narvii/blog/post/BlogPost;

    invoke-interface {v0}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/blog/post/BlogPost;->address:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 7
    check-cast v0, Lcom/narvii/blog/post/BlogPost;

    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/blog/post/ImagePostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method protected shouldShowFansOnlySwitchDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 7

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/post/BackgroundPostActivity;->updateView(Lcom/narvii/feed/BackgroundPost;)V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->editTitle:Landroid/widget/EditText;

    .line 5
    iget-object v1, p1, Lcom/narvii/blog/post/BlogPost;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_3

    .line 7
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickMedia:Landroid/widget/ImageView;

    if-nez v3, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803d4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 10
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    const/16 v5, 0x8

    if-nez v3, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v1

    .line 11
    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaPreview:Lcom/narvii/widget/ThumbImageView;

    .line 12
    invoke-virtual {v4, v3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaCount:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-le v0, v4, :cond_6

    move v6, v1

    goto :goto_4

    :cond_6
    move v6, v5

    .line 13
    :goto_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->mediaCount:Landroid/widget/TextView;

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->locationPickerFragment:Lcom/narvii/post/LocationPickerFragment;

    .line 15
    invoke-virtual {v0}, Lcom/narvii/post/LocationPickerFragment;->isLocating()Z

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 16
    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->latitude:I

    if-eqz v3, :cond_8

    iget v3, p1, Lcom/narvii/blog/post/BlogPost;->longitude:I

    if-nez v3, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0804d9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_6

    .line 18
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0804d8

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 19
    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocation:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickLocationProgress:Landroid/view/View;

    .line 21
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    .line 23
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const v3, 0x7f08086c

    goto :goto_7

    :cond_9
    const v3, 0x7f08086b

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/narvii/blog/post/ImagePostActivity;->pickCategories:Landroid/widget/Button;

    .line 24
    iget-object v3, p1, Lcom/narvii/blog/post/BlogPost;->blogCategoryList:Ljava/util/List;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    const/4 v3, -0x1

    goto :goto_8

    :cond_a
    const v3, -0x77665a

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object p1, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    if-nez p1, :cond_b

    move v0, v1

    goto :goto_9

    .line 26
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_9
    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->addPhoto:Landroid/view/View;

    if-nez v0, :cond_c

    move v6, v1

    goto :goto_a

    :cond_c
    move v6, v5

    .line 27
    :goto_a
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    if-ne v0, v4, :cond_d

    move v6, v1

    goto :goto_b

    :cond_d
    move v6, v5

    .line 28
    :goto_b
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->multiImageContainer:Landroidx/recyclerview/widget/RecyclerView;

    if-le v0, v4, :cond_e

    move v6, v1

    goto :goto_c

    :cond_e
    move v6, v5

    .line 29
    :goto_c
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, v4, :cond_10

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Media;

    iget-object v6, v6, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    move v5, v1

    :cond_f
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    iget-object v5, v5, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/narvii/blog/post/ImagePostActivity;->imgContent:Lcom/narvii/widget/NVImageView;

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_d

    :cond_10
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->singleImageCaption:Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object v1, p0, Lcom/narvii/blog/post/ImagePostActivity;->recycleViewAdapter:Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;

    if-eqz v1, :cond_12

    if-le v0, v4, :cond_11

    move-object v2, p1

    .line 35
    :cond_11
    invoke-virtual {v1, v2}, Lcom/narvii/blog/post/ImagePostActivity$ImageRecyleAdapter;->notifyImageChanged(Ljava/util/List;)V

    :cond_12
    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v2, 0x19

    const v3, 0x7f120ef0

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/post/BasePostActivity;->validateUpload(Lcom/narvii/post/PostObject;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/ImagePostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
