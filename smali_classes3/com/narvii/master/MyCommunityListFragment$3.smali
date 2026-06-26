.class Lcom/narvii/master/MyCommunityListFragment$3;
.super Ljava/lang/Object;
.source "MyCommunityListFragment.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;

.field final synthetic val$c:Lcom/narvii/model/Community;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/MyCommunityListFragment;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iput-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1131
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1132
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f02c5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1133
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$c:Lcom/narvii/model/Community;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 1122
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1124
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1125
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$3;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$3;->val$c:Lcom/narvii/model/Community;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/master/MyCommunityListFragment;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
