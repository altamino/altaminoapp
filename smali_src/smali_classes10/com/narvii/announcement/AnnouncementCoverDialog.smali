.class public Lcom/narvii/announcement/AnnouncementCoverDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field blog:Lcom/narvii/model/Blog;

.field media:Lcom/narvii/model/Media;

.field nvContext:Lcom/narvii/app/NVContext;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    const v0, 0x7f0d01a2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/model/Blog;->getExtraCoverMedia()Lcom/narvii/model/Media;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->media:Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a03cf

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/FullsizeImageView;

    .line 42
    .line 43
    new-instance p2, Lcom/narvii/announcement/AnnouncementCoverDialog$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p0, p3}, Lcom/narvii/announcement/AnnouncementCoverDialog$1;-><init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->media:Lcom/narvii/model/Media;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f0a0321

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 67
    const/4 p2, -0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    const p1, 0x7f0a0114

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0114

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0321

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a03cf

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 28
    .line 29
    const-class p1, Lcom/narvii/announcement/AnnouncementListFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "Source"

    .line 36
    .line 37
    const-string v1, "Toast"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    const-string v1, "feed"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Lcom/narvii/announcement/AnnouncementCoverDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 59
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->media:Lcom/narvii/model/Media;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 25
    .line 26
    const-wide/16 v1, 0x12c

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a01c8

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const v0, 0x7f0a083f

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    const v2, 0x7f010030

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    new-instance v2, Lcom/narvii/announcement/AnnouncementCoverDialog$2;

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p0, v0}, Lcom/narvii/announcement/AnnouncementCoverDialog$2;-><init>(Lcom/narvii/announcement/AnnouncementCoverDialog;Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    .line 74
    :cond_2
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementShownId(Ljava/lang/String;)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/announcement/AnnouncementCoverDialog;->blog:Lcom/narvii/model/Blog;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 98
    move-result-wide v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/PreferencesHelper;->saveLastAnnouncementToastTime(J)V

    .line 102
    return-void

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 106
    return-void
.end method
