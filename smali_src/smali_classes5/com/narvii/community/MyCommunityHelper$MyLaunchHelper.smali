.class public final Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyLaunchHelper"
.end annotation


# instance fields
.field private launching:Z

.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/community/MyCommunityHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static synthetic k(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;Lcom/narvii/community/MyCommunityHelper;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->onFinish$lambda$0(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;Lcom/narvii/community/MyCommunityHelper;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final onFinish$lambda$0(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;Lcom/narvii/community/MyCommunityHelper;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "this$1"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p2

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    sget-object p1, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    .line 7
    return-void
.end method

.method public final getLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    return v0
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/community/ReminderCheck;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
.end method

.method protected onFinish()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/community/MyCommunityHelper;->access$getActivity$p(Lcom/narvii/community/MyCommunityHelper;)Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchImageView()Lcom/narvii/widget/NVImageView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchCommunity()Lcom/narvii/model/Community;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/community/MyCommunityHelper;->access$getActivity$p(Lcom/narvii/community/MyCommunityHelper;)Landroidx/fragment/app/FragmentActivity;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityHelper;->getLaunchImageView()Lcom/narvii/widget/NVImageView;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 53
    .line 54
    new-instance v4, Lcom/narvii/community/y;

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, p0, v3}, Lcom/narvii/community/y;-><init>(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;Lcom/narvii/community/MyCommunityHelper;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1, v2, v4}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityHelper;->getLaunchProgress()Lcom/narvii/widget/SmoothProgressBar;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x64

    .line 12
    int-to-float v0, v0

    .line 13
    mul-float/2addr v0, p2

    .line 14
    float-to-int p2, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 18
    :goto_0
    return-void
.end method

.method public final setLaunching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    return-void
.end method
