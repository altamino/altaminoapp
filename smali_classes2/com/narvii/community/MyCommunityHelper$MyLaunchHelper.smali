.class public final Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "MyCommunityHelper.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    const-string p1, ""

    invoke-direct {p0, p2, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onFinish$s-465807059(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;)V
    .locals 0

    .line 436
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 449
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    return-void
.end method

.method public final getLaunching()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    return v0
.end method

.method public launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    .line 445
    invoke-super/range {p0 .. p10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinish()V
    .locals 4

    .line 454
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-static {v0}, Lcom/narvii/community/MyCommunityHelper;->access$getActivity$p(Lcom/narvii/community/MyCommunityHelper;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchImageView()Lcom/narvii/widget/NVImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-static {v0}, Lcom/narvii/community/MyCommunityHelper;->access$getActivity$p(Lcom/narvii/community/MyCommunityHelper;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v1}, Lcom/narvii/community/MyCommunityHelper;->getLaunchImageView()Lcom/narvii/widget/NVImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;

    invoke-direct {v3, p0}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;-><init>(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;)V

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/SplashUtils;->splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 466
    :cond_2
    invoke-super {p0}, Lcom/narvii/community/CommunityLaunchHelper;->onFinish()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityHelper;->getLaunchProgress()Lcom/narvii/widget/SmoothProgressBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final setLaunching(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launching:Z

    return-void
.end method
