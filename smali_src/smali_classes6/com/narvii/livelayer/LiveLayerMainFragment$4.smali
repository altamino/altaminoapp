.class Lcom/narvii/livelayer/LiveLayerMainFragment$4;
.super Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
.method protected blockUserClick()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerMainFragment;->v(Lcom/narvii/livelayer/LiveLayerMainFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    const-string v1, "pageTopic"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTitleIcon()I
    .locals 1

    const v0, 0x7f0804d0

    return v0
.end method

.method public getTitleIconBackground()I
    .locals 1

    const v0, -0x3cccbe

    return v0
.end method

.method public getTitleView()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f120ba9

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/text/TextUtils;->getCountTitle(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public onMoreItemClick()Z
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/livelayer/MemberOnPageFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "title"

    .line 9
    .line 10
    .line 11
    const v2, 0x7f120ba9

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 17
    .line 18
    const-string v2, "pageTopic"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "topic"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->t(Lcom/narvii/livelayer/LiveLayerMainFragment;)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lcom/narvii/livelayer/LiveLayerMainFragment$4;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 40
    const/4 v0, 0x1

    .line 41
    return v0
.end method
