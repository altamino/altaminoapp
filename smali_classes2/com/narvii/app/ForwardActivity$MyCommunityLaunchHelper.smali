.class Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "ForwardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/ForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCommunityLaunchHelper"
.end annotation


# instance fields
.field cid:I

.field directOpen:Z

.field pendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/narvii/app/ForwardActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/app/ForwardActivity;IZLandroid/content/Intent;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 755
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 756
    iput p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->cid:I

    .line 757
    iput-boolean p3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->directOpen:Z

    .line 758
    iput-object p4, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onFail(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 799
    iget-boolean p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->directOpen:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    if-nez p1, :cond_0

    .line 800
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    const-string p2, "__visitorMode"

    .line 801
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "__forward"

    .line 802
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 803
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p2, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 804
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const-string/jumbo p2, "visitorMode"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/VisitorModeService;

    if-eqz p1, :cond_5

    .line 806
    iget p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->cid:I

    invoke-virtual {p1, p2}, Lcom/narvii/community/VisitorModeService;->addVisitor(I)V

    .line 807
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/community/VisitorModeService;->preloadThemePack(Lcom/narvii/model/Community;)V

    goto/16 :goto_0

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    const/4 p2, 0x2

    const-string v1, "__forwardInitTaskActivity"

    const-string v2, "_pushIntent"

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 810
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v3, "http"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v3, "https"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 811
    :cond_1
    const-class p1, Lcom/narvii/community/PreviewWebViewFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 812
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget v3, v3, Lcom/narvii/model/Community;->id:I

    const-string v4, "communityId"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget v3, v3, Lcom/narvii/model/Community;->joinType:I

    const-string v4, "joinType"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v3, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 818
    :cond_2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 819
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 820
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    iput p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 821
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    iput-object p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    goto :goto_0

    .line 823
    :cond_3
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 824
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget v3, v3, Lcom/narvii/model/Community;->id:I

    const-string v4, "id"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "prefetch"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "joinOnly"

    .line 826
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 827
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v3, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 828
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v1, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 832
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0c57

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 833
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    iput p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 834
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    iput-object p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 836
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const p2, 0x7f010029

    const v0, 0x7f01002a

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 838
    :cond_6
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const v1, 0x7f0b0274

    iput v1, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 839
    iget v1, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {v0, v1}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 840
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onFinish()V
    .locals 5

    const-string v0, "Source"

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    const-string v2, "__forward"

    const/4 v3, 0x1

    .line 776
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    iget-object v2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    invoke-virtual {v2, v1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 778
    iget-object v2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const v3, 0x7f010029

    const v4, 0x7f01002a

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 779
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/narvii/amino/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    iget-object v1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const-string v2, "source"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "Link"

    .line 782
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 783
    sget-object v2, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const v1, 0x7f0b0274

    iput v1, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 787
    iget v1, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    invoke-virtual {v0, v1}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 764
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    const v0, 0x7f090b5b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 765
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 766
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p2, p2, v2

    float-to-int p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 767
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateCommunityWhenNotJoined()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->directOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
